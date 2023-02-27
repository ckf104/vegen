#ifndef INST_SEMA_H
#define INST_SEMA_H

#include "Compatible.h"
#include "IntrinsicBuilder.h"
#include "llvm/ADT/APInt.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/IR/PatternMatch.h"
#include "llvm/IR/Value.h"
#include <cassert>
#include <cstddef>
#include <cstdint>
#include <functional>
#include <optional>
#include <sys/types.h>
#include <vector>

namespace llvm {
class TargetTransformInfo;
}

class InstBinding;
class InstSignature;
class BoundOperation;

class OperandType {
  enum Type : uint32_t { FixedVec, ScalableVec, Scalar, None };
  Type type = None;
  std::optional<uint32_t> eleWidth;
  std::optional<uint32_t> vecWidth;
  friend class InstBinding;
  friend class InstSignature;

public:
  OperandType() = default;
  explicit OperandType(Type t, uint32_t vecwidth = 0, uint32_t elewidth = 0)
      : type(t) {
    if (elewidth != 0)
      eleWidth = elewidth;
    if (vecwidth != 0)
      vecWidth = vecwidth;
  }
  std::optional<uint32_t> getElementWidth() const {
    assert(type != None);
    return eleWidth;
  }
  std::optional<uint32_t> getVecWidth() const {
    assert(type != None);
    return vecWidth;
  }
  std::optional<uint32_t> getEleNum() const {
    if (eleWidth && vecWidth) {
      assert(vecWidth.value() / eleWidth.value() &&
             "vector width is not multiple of element width?");
      return vecWidth.value() / eleWidth.value();
    }
    return std::nullopt;
  }
  bool isFixedVec() const { return type == FixedVec; }
  bool isScalar() const { return type == Scalar; }
  bool isScalableVec() const { return type == ScalableVec; }
};

// Some important assumption about inst signature
// First, width each element in single vector should be equal
// Second, given element number in output vector, we can know
// element number in each input vector
struct InstSignature {
  std::vector<OperandType> inputSig;
  OperandType outputSig;
  std::function<uint32_t(const InstSignature *sig, uint32_t outLanes,
                         uint32_t inputVec)>
      eleNumMap;
  unsigned numInputs() const { return inputSig.size(); }
  InstSignature(const std::vector<unsigned> &I, const std::vector<unsigned> &O,
                bool hasImm)
      : outputSig(OperandType::FixedVec, O[0]) {
    assert(O.size() == 1 && "output size is not 1?");
    for (auto i : I)
      inputSig.emplace_back(OperandType::FixedVec, i);
    eleNumMap = [](const InstSignature *sig, uint32_t, uint32_t inputVec) {
      return sig->inputSig[inputVec].getEleNum().value();
    };
  }
  uint32_t getInputLanes(uint32_t outLanes, uint32_t inputVec) const {
    return eleNumMap(this, outLanes, inputVec);
  }
};

struct InputSlice {
  unsigned InputId;
  unsigned Lo, Hi;

  unsigned size() const { return Hi - Lo; }

  bool operator<(const InputSlice &Other) const {
    return std::tie(InputId, Lo, Hi) <
           std::tie(Other.InputId, Other.Lo, Other.Hi);
  }
};

struct InputId {
  uint32_t vecId; // vector input id
  uint32_t eleId;

  // unsigned size() const { return Hi - Lo; }

  bool operator<(const InputId &Other) const {
    return std::tie(vecId, eleId) < std::tie(Other.vecId, Other.eleId);
  }
  InputId(uint32_t InputId, uint32_t low, uint32_t high) {
    vecId = InputId;
    assert(low % (high - low) == 0);
    eleId = low / (high - low);
  }
};


// Interface that abstractly defines an operation
struct Operation {
  virtual ~Operation() {}
  struct Match {
    bool Commutative; // applies when the operation is binary
    std::vector<llvm::Value *> Inputs;
    // FIXME: make this an Instruction instead
    llvm::Value *Output;
    bool operator<(const Match &Other) const {
      return std::tie(Output, Inputs) < std::tie(Other.Output, Other.Inputs);
    }
    bool operator==(const Match &Other) const {
      return Output == Other.Output && Inputs == Other.Inputs;
    }
  };
  // `match' returns true if `V` is matched.
  // If a match is found, additionally return the matched liveins
  virtual bool match(llvm::Value *V,
                     llvm::SmallVectorImpl<Match> &Matches) const = 0;
};

// An operation explicitly bound to an instruction and its input(s)
class LegacyBoundOperation {
  const Operation *Op;
  std::vector<InputSlice> BoundSlices;
  friend class BoundOperation;

public:
  // A bound operation
  LegacyBoundOperation(const Operation *Op, std::vector<InputSlice> BoundSlices)
      : Op(Op), BoundSlices(BoundSlices) {}
  const Operation *getOperation() const { return Op; }
  llvm::ArrayRef<InputSlice> getBoundSlices() const { return BoundSlices; }
};

class BoundOperation {
  const Operation *op;
  llvm::SmallVector<InputId, 4> boundSlices;

public:
  BoundOperation() = default;
  BoundOperation(const LegacyBoundOperation &lbo) {
    op = lbo.Op;
    for (auto slice : lbo.BoundSlices)
      boundSlices.emplace_back(slice.InputId, slice.Lo, slice.Hi);
  }
  const Operation *getOperation() const { return op; }
  llvm::ArrayRef<InputId> getBoundSlices() const { return boundSlices; }
};

// An instruction is a list of lanes,
// each of which characterized by a BoundOperation
class InstBinding {
  InstSignature Sig;
  std::string Name;
  std::vector<std::string> TargetFeatures;
  llvm::SmallPtrSet<const Operation *, 4> uniqueOps;
  std::function<BoundOperation(uint32_t outId)> BoundMap;
  llvm::Optional<float> Cost;

public:
  // Compatible with X86 and arm
  InstBinding(std::string Name, std::vector<std::string> TargetFeatures,
              InstSignature Sig_, std::vector<LegacyBoundOperation> LaneOps_,
              llvm::Optional<float> Cost = llvm::None)
      : Sig(std::move(Sig_)), Name(Name), TargetFeatures(TargetFeatures),
        Cost(Cost) {
    std::vector<size_t> sliceLen(Sig.numInputs(), 0);
    for (const auto &op : LaneOps_) {
      auto sliceRef = op.getBoundSlices();
      for (auto slice : sliceRef) {
        assert(slice.Hi > slice.Lo && "slice high < slice low?");
        if (sliceLen[slice.InputId] == 0)
          sliceLen[slice.InputId] = slice.Hi - slice.Lo;
        else
          assert(sliceLen[slice.InputId] == slice.Hi - slice.Lo &&
                 "vector element is not all equal size?");
      }
      uniqueOps.insert(op.getOperation());
    }
    assert(llvm::none_of(sliceLen, [](size_t l) { return l == 0; }));
    for (size_t i = 0, j = Sig.inputSig.size(); i < j; ++i) {
      Sig.inputSig[i].eleWidth = sliceLen[i];
    }
    assert(Sig.outputSig.vecWidth.value() % LaneOps_.size() == 0 &&
           "output vector width is not multiple of lanes?");
    Sig.outputSig.eleWidth = Sig.outputSig.vecWidth.value() / LaneOps_.size();

    std::vector<BoundOperation> LaneOps;
    for (const auto &lop : LaneOps_)
      LaneOps.emplace_back(lop);
    BoundMap = [LaneOps](uint32_t id) -> BoundOperation {
      assert(id < LaneOps.size());
      return LaneOps[id];
    };
  }
  virtual ~InstBinding() = default;
  virtual float getCost(llvm::TargetTransformInfo *,
                        llvm::LLVMContext &) const {
    assert(Cost.value());
    return Cost.value();
  }
  llvm::ArrayRef<std::string> getTargetFeatures() const {
    return TargetFeatures;
  }
  const InstSignature &getSignature() const { return Sig; }
  BoundOperation getLaneOps(uint32_t id) const {
    const auto &op = BoundMap(id);
    assert(uniqueOps.count(op.getOperation()) &&
           "operation returned by BoundMap is not in uniqueOps?");
    return op;
  }
  const llvm::SmallPtrSet<const Operation *, 4> &getUniqueOps() const {
    return uniqueOps;
  }
  std::optional<uint32_t> getLaneNum() const {
    return Sig.outputSig.getEleNum();
  }

  virtual llvm::Value *emit(llvm::ArrayRef<llvm::Value *> Operands,
                            IntrinsicBuilder &Builder) const {
    return Builder.Create(Name, Operands);
  }
  llvm::StringRef getName() const { return Name; }
};

static inline bool hasBitWidth(const llvm::Value *V, unsigned BitWidth) {
  auto *Ty = V->getType();
  if (Ty->isIntegerTy())
    return Ty->getIntegerBitWidth() == BitWidth;
  if (Ty->isFloatTy())
    return BitWidth == 32;
  if (Ty->isDoubleTy())
    return BitWidth == 64;
  return false;
}

extern std::vector<InstBinding> X86Insts;
extern std::vector<InstBinding> ArmInsts;

#endif // end INST_SEMA_H

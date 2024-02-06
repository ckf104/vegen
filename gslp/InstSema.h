#ifndef INST_SEMA_H
#define INST_SEMA_H

#include "Compatible.h"
#include "InstSeq.h"
#include "IntrinsicBuilder.h"
#include "llvm/ADT/APInt.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/IR/PatternMatch.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Value.h"
#include "llvm/Support/MathExtras.h"
#include <cassert>
#include <cmath>
#include <cstddef>
#include <cstdint>
#include <functional>
#include <optional>
#include <string>
#include <sys/types.h>
#include <vector>

namespace llvm {
class TargetTransformInfo;
}

class InstBinding;
class InstSignature;
class BoundOperation;

class OperandType {
public:
  enum Type : uint32_t { FixedVec, ScalableVec, Scalar, None };
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

private:
  Type type = None;
  std::optional<uint32_t> eleWidth;
  std::optional<uint32_t> vecWidth;
  friend class InstBinding;
  friend class InstSignature;
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
  uint32_t scalarPos;
  bool hasSclarVersion;

  uint32_t getOptionScalarPos() const {
    assert(hasSclarVersion);
    return scalarPos;
  }
  bool getScalarVersion() const { return hasSclarVersion; }
  uint32_t numInputs() const { return inputSig.size(); }
  uint32_t numVecInputs() const {
    uint32_t cnt = 0;
    for (uint32_t i = 0, j = inputSig.size(); i < j; ++i) {
      if (inputSig[i].isFixedVec() || inputSig[i].isScalableVec())
        cnt++;
    }
    return cnt;
  }
  uint32_t getFirstScalarOperands() const {
    for (uint32_t i = 0, j = inputSig.size(); i < j; ++i) {
      if (inputSig[i].isScalar())
        return i;
    }
    return -1;
  }
  bool hasScalarOperands() const { return numScalarOperands() > 0; }
  uint32_t numScalarOperands() const { return numInputs() - numVecInputs(); }
  InstSignature(
      std::vector<OperandType> inputsig_, OperandType outputsig_,
      std::function<uint32_t(const InstSignature *sig, uint32_t, uint32_t)>
          eleNumMap_,
      bool scalarVersion = false, uint32_t scalarPos = -1)
      : inputSig(std::move(inputsig_)), outputSig(outputsig_),
        eleNumMap(std::move(eleNumMap_)), hasSclarVersion(scalarVersion),
        scalarPos(scalarPos) {}
  InstSignature(InstSignature &&) = default;
  InstSignature(const InstSignature &) = default;
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
  OperandType::Type getOperandType(uint32_t id) const {
    assert(id < inputSig.size());
    return inputSig[id].type;
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
  InputId(uint32_t vecId_, uint32_t eleId_) : vecId(vecId_), eleId(eleId_) {}
};

// Interface that abstractly defines an operation
struct Operation {
  virtual ~Operation() = default;
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

class BoundOperation {
  const Operation *op;
  llvm::SmallVector<InputId, 4> boundSlices;

public:
  BoundOperation() = default;
  BoundOperation(const Operation *op, llvm::ArrayRef<InputId> boundSlices_)
      : op(op), boundSlices(boundSlices_.begin(), boundSlices_.end()) {}
  const Operation *getOperation() const { return op; }
  llvm::ArrayRef<InputId> getBoundSlices() const { return boundSlices; }
};

// An instruction is a list of lanes,
// each of which characterized by a BoundOperation
class InstBinding {
  InstSignature Sig;
  bool commutative;
  std::vector<SingleInst> instSeq;
  std::vector<std::string> TargetFeatures;
  llvm::SmallPtrSet<const Operation *, 4> uniqueOps;
  std::function<BoundOperation(uint32_t outId)> BoundMap;
  llvm::Optional<float> Cost;

  float getCost(uint32_t base) const {
    // FIXME: I don't know a proper cost model for riscv, may LLVM TTI can help?
    return Cost.value() * std::pow(1.8f, (float)llvm::Log2_32(base));
  }

public:
  InstBinding(std::string Name, std::vector<std::string> featrues,
              InstSignature Sig_,
              llvm::SmallPtrSet<const Operation *, 4> uniqueOps_,
              std::function<BoundOperation(uint32_t outId)> BoundMap_,
              llvm::Optional<float> Cost = llvm::None, bool commutative = false)
      : Sig(std::move(Sig_)), uniqueOps(std::move(uniqueOps_)),
        TargetFeatures(std::move(featrues)), BoundMap(std::move(BoundMap_)),
        Cost(Cost), commutative(commutative) {
    instSeq.emplace_back(Name, (uint16_t)Sig.numInputs());
  }
  InstBinding(std::vector<SingleInst> seq, std::vector<std::string> featrues,
              InstSignature Sig_,
              llvm::SmallPtrSet<const Operation *, 4> uniqueOps_,
              std::function<BoundOperation(uint32_t outId)> BoundMap_,
              llvm::Optional<float> Cost = llvm::None, bool commutative = false)
      : Sig(std::move(Sig_)), uniqueOps(std::move(uniqueOps_)),
        instSeq(std::move(seq)), TargetFeatures(std::move(featrues)),
        BoundMap(std::move(BoundMap_)), Cost(Cost), commutative(commutative) {}
  InstBinding(InstBinding &&) = default;
  InstBinding(const InstBinding &) = default;

  virtual ~InstBinding() = default;
  virtual float getCost(llvm::TargetTransformInfo *, llvm::LLVMContext &,
                        uint32_t scale = 1) const {
    assert(Cost.has_value());
    assert(llvm::isPowerOf2_32(scale));
    return getCost(scale);
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
  bool isCommutative() const { return commutative; }

  virtual llvm::Value *emit(llvm::ArrayRef<llvm::Value *> Operands,
                            IntrinsicBuilder &Builder,
                            llvm::Type *retTy = nullptr,
                            uint32_t length = 0) const {
    return Builder.Create(instSeq, Operands, retTy, length);
  }
  std::string getName() const {
    std::string n;
    for (uint32_t i = 0, l = instSeq.size() - 1; i < l; ++i) {
      n += instSeq[i].name + ", ";
    }
    n += instSeq[instSeq.size() - 1].name;
    return n;
  }
};

inline uint32_t getBitWidth(const llvm::Value *V) {
  auto *Ty = V->getType();
  if (Ty->isIntegerTy())
    return Ty->getIntegerBitWidth();
  else if (Ty->isFloatTy())
    return 32;
  else if (Ty->isDoubleTy())
    return 64;
  assert(false);
}

extern std::vector<InstBinding> Riscv64Insts;

#endif // end INST_SEMA_H

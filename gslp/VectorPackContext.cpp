#include "VectorPackContext.h"
#include "ControlDependence.h"
#include "Reduction.h"
#include "TargetPlatformInfo.h"
#include "VectorPack.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Use.h"
#include "llvm/IR/Value.h"
#include "llvm/Support/MathExtras.h"
#include "llvm/TargetParser/Triple.h"
#include <algorithm>
#include <cassert>
#include <cstdint>
#include <limits>
#include <memory>
#include <tuple>

using namespace llvm;

struct VectorPackCache {
  using GeneralPackKey =
      std::pair<decltype(VectorPack::Matches), const InstBinding *>;
  using LoadPackKey = decltype(VectorPack::Loads);
  using StorePackKey = decltype(VectorPack::Stores);
  using PHIPackKey = decltype(VectorPack::PHIs);
  using GEPPackKey = decltype(VectorPack::GEPs);
  using GammaPackKey = decltype(VectorPack::Gammas);
  using CmpPackKey = decltype(VectorPack::Cmps);

  std::map<GeneralPackKey, std::unique_ptr<VectorPack>> GeneralPacks;
  std::map<std::pair<LoadPackKey, bool>, std::unique_ptr<VectorPack>> LoadPacks;
  std::map<std::pair<StorePackKey, bool>, std::unique_ptr<VectorPack>>
      StorePacks;
  std::map<PHIPackKey, std::unique_ptr<VectorPack>> PHIPacks;
  std::map<GammaPackKey, std::unique_ptr<VectorPack>> GammaPacks;
  std::map<GEPPackKey, std::unique_ptr<VectorPack>> GEPPacks;
  std::map<CmpPackKey, std::unique_ptr<VectorPack>> CmpPacks;
  std::map<Instruction *, std::unique_ptr<VectorPack>> ReductionPacks;
};

VectorPackContext::~VectorPackContext() = default;

VectorPackContext::VectorPackContext(Function *F, TargetInfo target_)
    : F(F), PackCache(std::make_unique<VectorPackCache>()), target(target_) {
  for (Instruction &I : instructions(F))
    addInstruction(&I);
  // FIXME: return a tigher bound
  NumValues = Scalars.size() * 5;
}

void VectorPackContext::addInstruction(Instruction *I) {
  unsigned id = ScalarToIdMap.size();
  ScalarToIdMap[I] = id;
  Scalars.push_back(I);
}

VectorPack *VectorPackContext::createVectorPack(
    std::vector<const Operation::Match *> Matches, BitVector Elements,
    BitVector Depended, const InstBinding *Producer,
    TargetTransformInfo *TTI) const {
  VectorPackCache::GeneralPackKey Key{
      decltype(VectorPack::Matches)(Matches.begin(), Matches.end()), Producer};
  auto &VP = PackCache->GeneralPacks[Key];
  if (VP)
    return VP.get();
  VP.reset(new VectorPack(this, Matches, Elements, Depended, Producer, TTI));
  return VP.get();
}

VectorPack *VectorPackContext::createLoadPack(
    ArrayRef<LoadInst *> Loads, const ConditionPack *CP, BitVector Elements,
    BitVector Depended, TargetTransformInfo *TTI, bool IsGather) const {
  VectorPackCache::LoadPackKey Key(Loads.begin(), Loads.end());
  auto &VP = PackCache->LoadPacks[{Key, IsGather}];
  if (VP)
    return VP.get();
  VP.reset(new VectorPack(this, IsGather, CP, Loads, Elements, Depended, TTI));
  return VP.get();
}

VectorPack *VectorPackContext::createStorePack(
    ArrayRef<StoreInst *> Stores, const ConditionPack *CP, BitVector Elements,
    BitVector Depended, TargetTransformInfo *TTI, bool IsScatter) const {
  VectorPackCache::StorePackKey Key(Stores.begin(), Stores.end());
  auto &VP = PackCache->StorePacks[{Key, IsScatter}];
  if (VP)
    return VP.get();
  VP.reset(
      new VectorPack(this, IsScatter, CP, Stores, Elements, Depended, TTI));
  return VP.get();
}

VectorPack *VectorPackContext::createCmpPack(ArrayRef<CmpInst *> Cmps,
                                             BitVector Elements,
                                             BitVector Depended,
                                             TargetTransformInfo *TTI) const {
  VectorPackCache::CmpPackKey Key(Cmps.begin(), Cmps.end());
  auto &VP = PackCache->CmpPacks[Key];
  if (VP)
    return VP.get();
  VP.reset(new VectorPack(this, Cmps, Elements, Depended, TTI));
  return VP.get();
}

VectorPack *VectorPackContext::createPhiPack(ArrayRef<PHINode *> PHIs,
                                             BitVector Elements,
                                             BitVector Depended,
                                             TargetTransformInfo *TTI) const {
  VectorPackCache::PHIPackKey Key(PHIs.begin(), PHIs.end());
  auto &VP = PackCache->PHIPacks[Key];
  if (!VP) {
    VP.reset(new VectorPack(this, PHIs, Elements, Depended, TTI));
  }
  return VP.get();
}

VectorPack *
VectorPackContext::createGammaPack(ArrayRef<const GammaNode *> Gammas,
                                   BitVector Elements, BitVector Depended,
                                   TargetTransformInfo *TTI) const {
  VectorPackCache::GammaPackKey Key(Gammas.begin(), Gammas.end());
  auto &VP = PackCache->GammaPacks[Key];
  if (!VP) {
    VP.reset(new VectorPack(this, Gammas, Elements, Depended, TTI));
  }
  return VP.get();
}

VectorPack *VectorPackContext::createGEPPack(ArrayRef<Value *> GEPs,
                                             BitVector Elements,
                                             BitVector Depended,
                                             TargetTransformInfo *TTI) const {
  VectorPackCache::GEPPackKey Key(GEPs.begin(), GEPs.end());
  auto &VP = PackCache->GEPPacks[Key];
  if (!VP)
    VP.reset(
        new VectorPack(this, GEPs, Elements, Depended, TTI, VectorPack::GEP));
  return VP.get();
}

VectorPack *VectorPackContext::createLoopReduction(
    const ReductionInfo &Rdx, unsigned RdxLen, TargetTransformInfo *TTI) const {
  auto *Root = Rdx.Ops.front();
  auto &VP = PackCache->ReductionPacks[Root];
  if (!VP) {
    BitVector Elements(getNumValues());
    BitVector Depended(getNumValues());
    Elements.set(getScalarId(Root));
    VP.reset(new VectorPack(this, Rdx, RdxLen, Elements, Depended, TTI));
  }
  return VP.get();
}

VectorPack *
VectorPackContext::createLoopFreeReduction(const ReductionInfo &Rdx,
                                           unsigned RdxLen, BitVector Depended,
                                           TargetTransformInfo *TTI) const {
  auto *Root = Rdx.Ops.front();
  auto &VP = PackCache->ReductionPacks[Root];
  if (!VP) {
    BitVector Elements(getNumValues());
    Elements.set(getScalarId(Root));
    VP.reset(new VectorPack(this, Rdx, RdxLen, Elements, Depended, TTI));
  }
  return VP.get();
}

const OperandPack *VectorPackContext::dedup(const OperandPack *OP) const {
  // FIXME: In current implementation, I don't want to shuffle a random riscv
  // vector, whose cost is uncertained. This restriction may be relaxed later
  if (getTarget() == Triple::riscv64)
    return OP;

  SmallPtrSet<Value *, 4> Seen;
  OperandPack Deduped;
  for (auto *V : *OP) {
    bool Inserted = Seen.insert(V).second;
    if (!Inserted)
      continue;
    Deduped.push_back(V);
  }
  // Fast path for when we've removed nothing
  if (Deduped.size() == OP->size())
    return OP;
  return getCanonicalOperandPack(Deduped);
}

const OperandPack *VectorPackContext::even(const OperandPack *OP) const {
  OperandPack Even;
  unsigned i = 0;
  for (auto *V : *OP)
    if (i++ % 2)
      Even.push_back(V);
  return getCanonicalOperandPack(Even);
}

const OperandPack *VectorPackContext::odd(const OperandPack *OP) const {
  OperandPack Odd;
  unsigned i = 0;
  for (auto *V : *OP)
    if (i++ % 2 == 0)
      Odd.push_back(V);
  return getCanonicalOperandPack(Odd);
}

OperandPack *VectorPackContext::getCanonicalOperandPack(OperandPack OP) const {
  // Look for equivalent values in OP,
  // and replace them with a single, arbitrary value.
  // for (unsigned i = 0; i < OP.size(); i++)
  //  for (unsigned j = i + 1; j < OP.size(); j++)
  //    if (EquivalentValues.isEquivalent(OP[i], OP[j]))
  //      OP[j] = OP[i];

  auto It = OperandCache.find(OP);
  if (It != OperandCache.end())
    return It->second.get();
  auto NewOP = std::make_unique<OperandPack>(OP);
  return (OperandCache[*NewOP] = std::move(NewOP)).get();
}

ConditionPack *VectorPackContext::getConditionPack(
    ArrayRef<const ControlCondition *> Conds,
    Optional<const ControlCondition *> MaybeCommon) const {
  const ControlCondition *CommonC =
      MaybeCommon ? *MaybeCommon : getGreatestCommonCondition(Conds);

  auto It = ConditionPackCache.find({Conds, CommonC});
  if (It != ConditionPackCache.end())
    return It->second.get();

  if (all_of(Conds, [CommonC](auto *C) { return !C || C == CommonC; }))
    return nullptr;

  auto *NewCP = new ConditionPack;
  NewCP->Conds.assign(Conds.begin(), Conds.end());
  NewCP->ElemsToFlip.resize(Conds.size());
  ConditionPackCache[{NewCP->Conds, CommonC}].reset(NewCP);

  if (all_of(Conds, [](auto *C) { return !C || isa<ConditionAnd>(C); })) {
    SmallVector<const ControlCondition *> Parents;
    OperandPack OP;
    for (auto Item : enumerate(Conds)) {
      auto *C = Item.value();
      unsigned i = Item.index();
      if (C) {
        auto *And = cast<ConditionAnd>(C);
        Parents.push_back(And->Parent);
        OP.push_back(And->Cond);
        if (!And->IsTrue)
          NewCP->ElemsToFlip.set(i);
      } else {
        Parents.push_back(nullptr);
        OP.push_back(nullptr);
      }
    }
    NewCP->Parent = getConditionPack(Parents, CommonC);
    NewCP->OP = getCanonicalOperandPack(OP);
    NewCP->Kind = ConditionPack::CP_And;
    return NewCP;
  }

  // Can't pack conditions that are mix of ANDs and ORs
  if (!all_of(Conds, [](auto *C) { return !C || isa<ConditionOr>(C); })) {
    NewCP->Kind = ConditionPack::CP_Infeasible;
    return NewCP;
  }

  unsigned MaxNumTerms = 0;
  for (auto *C : Conds) {
    if (!C)
      continue;
    auto *Or = cast<ConditionOr>(C);
    if (MaxNumTerms < Or->Conds.size())
      MaxNumTerms = Or->Conds.size();
  }

  for (unsigned i = 0; i < MaxNumTerms; i++) {
    SmallVector<const ControlCondition *> IthConds;
    for (auto *C : Conds) {
      auto *Or = dyn_cast_or_null<ConditionOr>(C);
      if (Or && i < Or->Conds.size())
        IthConds.push_back(Or->Conds[i]);
      else
        IthConds.push_back(nullptr);
    }
    NewCP->CPs.push_back(getConditionPack(IthConds, CommonC));
  }

  NewCP->Kind = ConditionPack::CP_Or;
  return NewCP;
}

uint32_t VectorPackContext::getMaxOperandSize() const {
  if (target.Arch == Triple::riscv64) {
    // RISCV have some widening instructions, which result in wider element
    // without changing vector length, here is a conservative approximation to
    // guarantee LMUL <= 8 even though operands have been widen into 64bits
    // FIXME: Get better approximation by using gathered VectorPack info?
    return target.MinVLEN / 8;
  }
  return std::numeric_limits<uint32_t>::max();
}

std::pair<uint32_t, uint32_t>
VectorPackContext::getProperLMUL(uint64_t eleWidth, uint64_t length) const {
  auto vecWidth = eleWidth * length;
  if (vecWidth > target.MinVLEN) {
    auto LMUL = PowerOf2Ceil((vecWidth - 1) / target.MinVLEN + 1);
    assert(LMUL <= 8 &&
           "We should have control OperandPack size to fit LMUL limit?");
    return {LMUL, 1};
  } else if (vecWidth > target.MinVLEN / 2 || eleWidth == 64) {
    return {1, 1};
  } else if (vecWidth > target.MinVLEN / 4 || eleWidth == 32) {
    return {1, 2};
  } else if (vecWidth > target.MinVLEN / 8 || eleWidth == 16) {
    return {1, 4};
  }
  return {1, 8};
}

std::pair<uint32_t, uint32_t>
VectorPackContext::getProperLMUL(llvm::Type *Ty, uint64_t length) const {
  const auto &DL = F->getParent()->getDataLayout();
  auto eleWidth = DL.getTypeStoreSizeInBits(Ty).getFixedValue();
  assert(isPowerOf2_64(eleWidth) && eleWidth <= 64 &&
         "Vector element size should be power of 2?");
  // RVV spec[7.4] said: Additional unit-stride mask load and store instructions
  // are provided to transfer mask values to/from memory. These operate
  // similarly to unmasked byte loads or stores (EEW=8), except that the
  // effective vector length is evl=ceil(vl/8) (i.e. EMUL=1), and the
  // destination register is always written with a tail-agnostic policy.
  // RVV sepc[15.1] said: Vector mask-register logical operations operate on
  // mask registers. Each element in a mask register is a single bit, so these
  // instructions all operate on single vector registers regardless of the
  // setting of the vlmul eld in vtype. They do not change the value of vlmul.
  // The destination vector register may be the same as either source vector
  // register.
  //  So we should use 8bits as element size for mask load/store and
  //  calculation.
  if (eleWidth == 1)
    eleWidth = 8;
  return getProperLMUL(eleWidth, length);
}

uint32_t VectorPackContext::getProperVScale(Type *scalarType,
                                            uint64_t length) const {
  const auto &DL = F->getParent()->getDataLayout();
  auto eleWidth = DL.getTypeStoreSizeInBits(scalarType).getFixedValue();
  if (eleWidth == 1)
    eleWidth = 8;
  uint32_t numerator, denominator;
  std::tie(numerator, denominator) = getProperLMUL(eleWidth, length);
  return RVVBitsPerBlock * numerator / denominator / eleWidth;
}

VectorType *VectorPackContext::getVectorType(Type *scalarType,
                                             uint64_t length) const {
  bool isScalable = target.Arch == Triple::riscv64;
  if (isScalable)
    return ScalableVectorType::get(scalarType,
                                   getProperVScale(scalarType, length));
  else
    return FixedVectorType::get(scalarType, length);
}

VectorType *VectorPackContext::getVectorType(const OperandPack &OP) const {
  assert(OP.size() > 1 && "call this function with scalar operand?");
  bool isScalable = target.Arch == Triple::riscv64;
  if (OP.Ty) {
    assert(isa<ScalableVectorType>(OP.Ty) == isScalable &&
           "OP's vector type should keep the same?");
    return cast<VectorType>(OP.Ty);
  }
  Type *ScalarTy = OP.getFirstNonNull()->getType();
  OP.Ty = getVectorType(ScalarTy, OP.size());
  return cast<VectorType>(OP.Ty);
}

VectorType *VectorPackContext::getVectorType(const VectorPack &VP) const {
  auto NumLanes = VP.getOrderedValues().size();
  auto *scalarType = (*VP.elementValues().begin())->getType();
  return getVectorType(scalarType, NumLanes);
}
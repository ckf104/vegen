#include "VectorPack.h"
#include "CastIntoFloat.h"
#include "Compatible.h"
#include "ControlDependence.h"
#include "InstSema.h"
#include "MatchManager.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/Analysis/VectorUtils.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/TargetParser/Triple.h"
#include <algorithm>
#include <cassert>
#include <cstdint>

using namespace llvm;

// FIXME: we need to generalize the definition of an operand pack
// because some of the input lanes are "DONT CARES" (e.g. _mm_div_pd)
std::vector<OperandPack> VectorPack::computeOperandPacksForGeneral() {
  const auto &DL = VPCtx->getFunction()->getParent()->getDataLayout();
  auto &Sig = Producer->getSignature();
  unsigned NumInputs = Sig.numInputs();
  // auto LaneOps = Producer->getLaneOps();
  unsigned NumLanes = Matches.size();
  std::vector<OperandPack> OperandPacks(NumInputs);

  struct BoundInput {
    InputId Slice;
    Value *V;
    // Order by offset of the slice
    bool operator<(const BoundInput &Other) const {
      return Slice < Other.Slice;
    }
  };

  // Figure out which input packs we need
  for (unsigned i = 0; i < NumInputs; i++) {
    std::vector<BoundInput> InputValues;
    // Size of one element in this input vector
    unsigned ElementSize = 0;
    // Find output lanes that uses input `i` and record those uses
    for (unsigned j = 0; j < NumLanes; j++) {
      // Warning! we can't call Producer->getLaneOps(j).getBoundSlices()
      // directly, returned arrayRef is a dangling reference!
      const auto &BoundOp = Producer->getLaneOps(j);
      auto BoundSlices = BoundOp.getBoundSlices();
      for (unsigned k = 0; k < BoundSlices.size(); k++) {
        auto &BS = BoundSlices[k];
        if (BS.vecId != i)
          continue;
        if (Matches[j]) {
          ElementSize =
              DL.getTypeStoreSizeInBits(Matches[j]->Inputs[k]->getType());
          InputValues.push_back({BS, Matches[j]->Inputs[k]});
        } else
          InputValues.push_back({BS, nullptr});
      }
    }
    // FIXME: here we do not check if all element size is the same,
    // leave this in matching procedure before
    assert(ElementSize != 0);

    // Sort the input values by their slice offset
    std::sort(InputValues.begin(), InputValues.end());

    uint32_t CurId = 0;
    auto &OP = OperandPacks[i];
    for (const BoundInput &BV : InputValues) {
      while (CurId < BV.Slice.eleId) {
        OP.push_back(nullptr);
        CurId++;
      }
      assert(CurId == BV.Slice.eleId &&
             "checks have been done in matching procedure?");
      OP.push_back(BV.V);
      CurId++;
    }
    uint32_t InputEleNum = Sig.getInputLanes(Matches.size(), i);
    while (CurId < InputEleNum) {
      OP.push_back(nullptr);
      CurId++;
    }

    // Compute the type of don't care vector as special cases
    if (!OP.front() && is_splat(OP)) {
      assert(false && "Is it possible that the whole OP we don't care?");
      /*OP.Ty = FixedVectorType::get(
          IntegerType::get(VPCtx->getFunction()->getContext(), ElementSize),
          OP.size());*/
    }
  }

  return OperandPacks;
}

void getOperandPacksFromCondition(const ConditionPack *CP,
                                  SmallVectorImpl<const OperandPack *> &OPs) {
  SmallPtrSet<const ConditionPack *, 4> Visited;
  SmallVector<const ConditionPack *, 8> Worklist{CP};
  while (!Worklist.empty()) {
    auto *CP = Worklist.pop_back_val();
    if (!CP)
      continue;
    if (!Visited.insert(CP).second)
      continue;
    if (CP->OP)
      OPs.push_back(CP->OP);
    if (CP->Parent)
      Worklist.push_back(CP->Parent);
    else
      Worklist.append(CP->CPs);
  }
}

std::vector<OperandPack> VectorPack::computeOperandPacksForLoad() {
  if (!IsGatherScatter) {
    // Only need the single *scalar* pointer, doesn't need packed operand
    return {};
  }

  OperandPack OP;
  for (auto *L : Loads)
    OP.push_back(L->getPointerOperand());
  return {OP};
}

std::vector<OperandPack> VectorPack::computeOperandPacksForStore() {
  OperandPack ValueOP;
  for (auto *S : Stores)
    ValueOP.push_back(S->getValueOperand());

  if (!IsGatherScatter)
    return {ValueOP};

  OperandPack PtrOP;
  for (auto *S : Stores)
    PtrOP.push_back(S->getPointerOperand());
  return {PtrOP, ValueOP};
}

std::vector<OperandPack> VectorPack::computeOperandPacksForPhi() {
  auto *FirstPHI = PHIs[0];
  unsigned NumIncomings = FirstPHI->getNumIncomingValues();
  // We need as many packs as there are incoming edges
  std::vector<OperandPack> OperandPacks(NumIncomings);
  for (unsigned i = 0; i < NumIncomings; i++)
    // FIXME: make sure that PH->getIncomingBlock(i) is control-equivalent to
    // FirstPHI->getIncomingBlock(i)
    for (auto *PH : PHIs)
      OperandPacks[i].push_back(PH->getIncomingValue(i));
  return OperandPacks;
}

static Type *getScalarTy(ArrayRef<const Operation::Match *> Matches) {
  for (auto &M : Matches)
    if (M)
      return M->Output->getType();
  llvm_unreachable("Matches can't be all null");
  return nullptr;
}

Value *VectorPack::emitVectorGeneral(ArrayRef<Value *> Operands,
                                     IntrinsicBuilder &Builder) const {
  auto retV = std::find_if(OrderedValues.begin(), OrderedValues.end(),
                           [](const Value *V) { return V != nullptr; });
  assert(retV != OrderedValues.end() && "No non-null return value?");
  auto *VecInst = Producer->emit(Operands, Builder, (*retV)->getType(),
                                 OrderedValues.size());
  // Fix the output type
  // There is no vector layout info In X86 intrinsic wrapper(e.g.,
  // `_mm256_add_epi32` adds two <8 x i32>, but only __m256i showed in wrapper).
  // So generated llvm wrapper function may have argument type and return type
  // different with real type(although with the same bits). But I think riscv
  // should have no such problem?
  auto *VecType = VPCtx->getVectorType(getScalarTy(Matches), Matches.size());
  assert((VPCtx->getTarget() != Triple::riscv64 ||
          VecInst->getType() == VecType) &&
         "Instrinsic return type mismatch?");
  return Builder.CreateBitCast(VecInst, VecType);
}

namespace {
template <typename LoadStores> Align getCommonAlignment(LoadStores Insts) {
  Align A = Insts.front()->getAlign();
  for (auto *I : drop_begin(Insts))
    A = std::min(A, I->getAlign());
  return A;
}
} // namespace

Value *VectorPack::emitVectorLoad(ArrayRef<Value *> Operands, Value *Mask,
                                  std::function<Value *(Value *)> GetScalar,
                                  IntrinsicBuilder &Builder) const {
  auto *FirstLoad = Loads[0];
  auto &DL = FirstLoad->getParent()->getModule()->getDataLayout();
  auto *ScalarLoadTy = FirstLoad->getType();

  // Figure out type of the vector that we are loading
  auto *ScalarPtr = FirstLoad->getPointerOperand();
  auto *ScalarTy = getLoadStoreType(FirstLoad);
  auto *VecTy = VPCtx->getVectorType(ScalarTy, Loads.size());

  // Emit the load
  Instruction *VecLoad;
  if (IsGatherScatter) {
    VecLoad = Builder.CreateMaskedGather(
        VecTy, Operands.front(), getCommonAlignment(Loads), Mask, Loads.size());
  } else {
    if (Mask)
      VecLoad = Builder.CreateMaskedLoad(
          VecTy, ScalarPtr, FirstLoad->getAlign(), Mask, Loads.size());
    else
      VecLoad = Builder.CreateAlignedLoad(VecTy, ScalarPtr,
                                          FirstLoad->getAlign(), Loads.size());
  }

  std::vector<Value *> Values;
  for (auto *LI : Loads)
    if (LI)
      Values.push_back(LI);
  return propagateMetadata(VecLoad, Values);
}

Value *VectorPack::emitVectorStore(ArrayRef<Value *> Operands, Value *Mask,
                                   std::function<Value *(Value *)> GetScalar,
                                   IntrinsicBuilder &Builder) const {
  // Emit the vector store
  Instruction *VecStore;
  if (IsGatherScatter) {
    auto *Ptrs = Operands[0];
    auto *Values = Operands[1];
    VecStore = Builder.CreateMaskedScatter(
        Values, Ptrs, getCommonAlignment(Stores), Mask, Stores.size());
  } else {
    Value *VecValue = Operands.front();
    auto *FirstStore = Stores.front();

    // Figure out the store alignment
    unsigned Alignment = FirstStore->getAlign().value();
    unsigned AS = FirstStore->getPointerAddressSpace();
    auto &DL = FirstStore->getParent()->getModule()->getDataLayout();
    if (!Alignment)
      Alignment =
          DL.getABITypeAlign(FirstStore->getValueOperand()->getType()).value();
    Value *Ptr = GetScalar(FirstStore->getPointerOperand());

    if (!Mask)
      VecStore = Builder.CreateAlignedStore(VecValue, Ptr, Align(Alignment),
                                            Stores.size());
    else
      VecStore = Builder.CreateMaskedStore(VecValue, Ptr, Align(Alignment),
                                           Mask, Stores.size());
  }

  SmallVector<Value *, 4> Stores_(Stores.begin(), Stores.end());
  return propagateMetadata(VecStore, Stores_);
}

static GetElementPtrInst *getGEPOperands(unsigned i, ArrayRef<Value *> GEPs,
                                         SmallVectorImpl<Value *> &Operands) {
  Type *Ty = nullptr;
  GetElementPtrInst *retPtr = nullptr;
  for (auto *GEP : GEPs) {
    if (isa<GetElementPtrInst>(GEP)) {
      auto operand = cast<GetElementPtrInst>(GEP)->getOperand(i);
      Operands.push_back(operand);
      if (!Ty) {
        Ty = operand->getType();
        retPtr = cast<GetElementPtrInst>(GEP);
      }
    } else if (i == 0)
      Operands.push_back(GEP);
    else
      Operands.push_back(/*Elt=*/nullptr);
  }
  assert(Ty && "No GEPs?");
  for (auto &op : Operands) {
    if (!op)
      op = Constant::getNullValue(Ty);
  }
  return retPtr;
}

void VectorPack::computeOperandPacks() {
  switch (Kind) {
  case General:
    canonicalizeOperandPacks(computeOperandPacksForGeneral());
    break;
  case Load:
    canonicalizeOperandPacks(computeOperandPacksForLoad());
    break;
  case Store:
    canonicalizeOperandPacks(computeOperandPacksForStore());
    break;
  case Phi:
    canonicalizeOperandPacks(computeOperandPacksForPhi());
    break;
  case Reduction: {
    SmallVector<OperandPack, 4> OPs;
    assert(Rdx->Elts.size() % RdxLen == 0);
    for (unsigned Offset = 0; Offset < Rdx->Elts.size(); Offset += RdxLen)
      OPs.emplace_back().assign(Rdx->Elts.begin() + Offset,
                                Rdx->Elts.begin() + Offset + RdxLen);
    canonicalizeOperandPacks(OPs);
  } break;
  case GEP: {
    auto Iter =
        find_if(GEPs, [](Value *V) { return isa<GetElementPtrInst>(V); });
    assert(Iter != GEPs.end());
    auto someGEP = cast<GetElementPtrInst>(*Iter);
    unsigned NumOperands = someGEP->getNumOperands();
    SmallVector<OperandPack, 4> OPs;
    for (unsigned i = 0; i < NumOperands; i++) {
      SmallVector<Value *, 8> Operands;
      getGEPOperands(i, GEPs, Operands);
      if (!is_splat(Operands))
        OPs.emplace_back().assign(Operands);
    }
    canonicalizeOperandPacks(OPs);
  } break;
  case Gamma: {
    unsigned NumIncomings = Gammas.front()->PN->getNumIncomingValues();
    assert(all_of(Gammas, [&](auto *G2) {
      return G2->PN->getNumIncomingValues() == NumIncomings;
    }));

    for (unsigned i = 0; i < NumIncomings; i++) {
      SmallVector<const ControlCondition *> Conds;
      OperandPack ValOP;
      for (auto *G : Gammas) {
        Conds.push_back(G->Conds[i]);
        ValOP.push_back(G->Vals[i]);
      }
      getOperandPacksFromCondition(VPCtx->getConditionPack(Conds),
                                   OperandPacks);
      OperandPacks.push_back(VPCtx->getCanonicalOperandPack(ValOP));
    }
  } break;
  case Cmp: {
    SmallVector<OperandPack, 2> OPs;
    OPs.resize(2);
    for (unsigned i : {0, 1}) {
      for (auto *Cmp : Cmps)
        OPs[i].push_back(Cmp->getOperand(i));
    }
    canonicalizeOperandPacks(OPs);
  } break;

  } // end switch

  if (CP)
    getOperandPacksFromCondition(CP, OperandPacks);
}

static Value *emitVectorGEP(ArrayRef<Value *> GEPs, ArrayRef<Value *> Operands,
                            IRBuilderBase &Builder) {
  SmallVector<Value *, 4> Ptrs;
  auto firstGEP = getGEPOperands(0, GEPs, Ptrs);

  Value *Ptr;
  bool BroadcastPtr = is_splat(Ptrs);
  unsigned j = 0;
  if (BroadcastPtr)
    Ptr = Ptrs.front();
  else
    Ptr = Operands[j++];

  unsigned NumOperands = firstGEP->getNumOperands();
  SmallVector<Value *, 4> Idxs;
  for (unsigned i = 1; i < NumOperands; i++) {
    SmallVector<Value *, 4> Values;
    getGEPOperands(i, GEPs, Values);
    if (is_splat(Values))
      Idxs.push_back(Values.front());
    else
      Idxs.push_back(Operands[j++]);
  }
  auto *GEP = Builder.CreateGEP(firstGEP->getSourceElementType(), Ptr, Idxs);
  if (GEP->getType()->isVectorTy())
    return GEP;
  // Sometimes we end up not needing to vectorize,
  // in which case, we just broadcast the GEP to fix the type
  return Builder.CreateVectorSplat(GEPs.size(), GEP);
}

static Value *emitVectorCmp(ArrayRef<CmpInst *> Cmps,
                            ArrayRef<Value *> Operands,
                            IntrinsicBuilder &Builder) {
  auto Pred = Cmps.front()->getPredicate();
  assert(Operands.size() == 2);
  return Builder.CreateCmp(Pred, Operands[0], Operands[1]);
}

Value *VectorPack::emit(ArrayRef<Value *> Operands,
                        IntrinsicBuilder &Builder) const {
  IRBuilderBase::InsertPointGuard Guard(Builder);

  // FIXME: choose insert point
  switch (Kind) {
  case General:
    return emitVectorGeneral(Operands, Builder);
  case GEP:
    return emitVectorGEP(GEPs, Operands, Builder);
  case Cmp:
    return emitVectorCmp(Cmps, Operands, Builder);
  case Load:
  case Store:
  case Reduction:
  case Gamma:
  case Phi:
    llvm_unreachable("Don't call emit on reduction and gamma pack directly");
  }
}

static float getReductionCost(const ReductionInfo &RI, unsigned RdxLen,
                              TargetTransformInfo *TTI) {
  auto *VecTy = FixedVectorType::get(RI.Elts.front()->getType(), RdxLen);
  auto RdxKind = RI.Kind;
  switch (RdxKind) {
  case RecurKind::Add:
  case RecurKind::Mul:
  case RecurKind::Or:
  case RecurKind::And:
  case RecurKind::Xor:
  case RecurKind::FAdd:
  case RecurKind::FMul: {
    unsigned RdxOpcode = RecurrenceDescriptor::getOpcode(RdxKind);
    // ckf: pairwise=false -> default FastMathFlags
    return getArithmeticReductionCostFromTTI(TTI, RdxOpcode, VecTy,
                                             Optional<FastMathFlags>());
  }
  case RecurKind::FMax:
  case RecurKind::FMin: {
    auto *VecCondTy = cast<VectorType>(CmpInst::makeCmpResultType(VecTy));
    return getMinMaxReductionCostFromTTI(TTI, VecTy, VecCondTy, false);
  }
  case RecurKind::SMax:
  case RecurKind::SMin:
  case RecurKind::UMax:
  case RecurKind::UMin: {
    auto *VecCondTy = cast<VectorType>(CmpInst::makeCmpResultType(VecTy));
    bool IsUnsigned = RdxKind == RecurKind::UMax || RdxKind == RecurKind::UMin;
    return getMinMaxReductionCostFromTTI(TTI, VecTy, VecCondTy, IsUnsigned);
  }
  default:
    llvm_unreachable("unexpected reduction type");
  }
}

void VectorPack::computeCost(TargetTransformInfo *TTI) {
  Cost = 0;
  // 1) First figure out cost of the vector instruction
  switch (Kind) {
  case General:
    Cost = Producer->getCost(TTI, VPCtx->getFunction()->getContext());
    break;
  case Load: {
    auto *LI = Loads[0];
    auto *VecTy = FixedVectorType::get(LI->getType(), Loads.size());
    if (IsGatherScatter) {
      Cost = getGatherScatterOpCostFromTTI(
          TTI, Instruction::Load, VecTy, LI->getPointerOperand(),
          (bool)CP /*variable mask*/, getCommonAlignment(Loads),
          TTI::TCK_RecipThroughput, LI);
    } else if (CP) {
      // Contiguous masked load
      Cost = getMaskedMemoryOpCostFromTTI(TTI, Instruction::Load, VecTy,
                                          LI->getAlign(), 0,
                                          TTI::TCK_RecipThroughput);
    } else {
      Cost =
          getMemoryOpCostFromTTI(TTI, Instruction::Load, VecTy, LI->getAlign(),
                                 0, TTI::TCK_RecipThroughput, LI);
    }
    break;
  }
  case Store: {
    auto *SI = Stores[0];
    auto *VecTy =
        FixedVectorType::get(SI->getValueOperand()->getType(), Stores.size());
    if (IsGatherScatter) {
      Cost = getGatherScatterOpCostFromTTI(
          TTI, Instruction::Store, VecTy, SI->getPointerOperand(),
          (bool)CP /*variable mask*/, getCommonAlignment(Stores),
          TTI::TCK_RecipThroughput, SI);
    } else if (CP) {
      // Contiguous masked store
      Cost = getMaskedMemoryOpCostFromTTI(TTI, Instruction::Store, VecTy,
                                          SI->getAlign(), 0,
                                          TTI::TCK_RecipThroughput);
    } else {
      Cost =
          getMemoryOpCostFromTTI(TTI, Instruction::Store, VecTy, SI->getAlign(),
                                 0, TTI::TCK_RecipThroughput, SI);
    }
    break;
  }
  case Cmp:
    // FIXME: call TTI
    Cost = 1;
    break;
  case Phi:
    Cost = 0;
    break;
  case Reduction:
    if (isLoopFreeReduction())
      Cost = getReductionCost(getReductionInfo(), RdxLen, TTI);
    else
      Cost = 1;
    break;
  case GEP:
    Cost = 0;
    break;
  case Gamma:
    // FIXME call TTI
    Cost = 1;
    break;
  }

  ProducingCost = Cost;
}

void VectorPack::computeOrderedValues() {
  switch (Kind) {
  case General:
    transform(Matches, std::back_inserter(OrderedValues),
              [](auto *M) { return M ? M->Output : nullptr; });
    break;
  case Load:
    OrderedValues.assign(Loads.begin(), Loads.end());
    break;
  case Store:
    OrderedValues.assign(Stores.begin(), Stores.end());
    break;
  case Phi:
    OrderedValues.assign(PHIs.begin(), PHIs.end());
    break;
  case Reduction:
    OrderedValues.push_back(Rdx->Ops.front());
    break;
  case GEP:
    OrderedValues.assign(GEPs.begin(), GEPs.end());
    break;
  case Cmp:
    OrderedValues.assign(Cmps.begin(), Cmps.end());
    break;
  case Gamma:
    for (auto *G : Gammas)
      OrderedValues.push_back(G->PN);
    break;
  }
}

// Choose a right place to gather an operand
void VectorPack::setOperandGatherPoint(unsigned OperandId,
                                       IntrinsicBuilder &Builder) const {
  if (Kind != Phi) {
    auto *LeaderVal = *getOrderedValues().begin();
    Builder.SetInsertPoint(cast<Instruction>(LeaderVal));
  } else {
    // We need to gather the input before the execution gets to this block
    auto *FirstPHI = PHIs[0];
    auto *BB = FirstPHI->getIncomingBlock(OperandId);
    Builder.SetInsertPoint(BB->getTerminator());
  }
}

raw_ostream &operator<<(raw_ostream &OS, const VectorPack &VP) {
  StringRef ProducerName = "";
  if (auto *Producer = VP.getProducer())
    ProducerName = Producer->getName();
  else if (VP.isGamma())
    ProducerName = "Gamma";
  else if (VP.isReduction() || VP.isLoopFreeReduction()) {
    return OS << "PACK<REDUCTION> " << VP.getReductionInfo() << '\n';
  } else if (VP.IsGatherScatter)
    ProducerName = "gather/scatter";

  OS << "PACK<" << ProducerName << ">: (\n";
  for (auto *V : VP.getOrderedValues())
    if (V)
      OS << *V << '\n';
    else
      OS << "undef\n";
  OS << ")\n";
  return OS;
}

raw_ostream &operator<<(raw_ostream &OS, const OperandPack &OP) {
  OS << "[\n";
  for (auto *V : OP)
    if (V) {
      errs() << *V << "\n";
    } else
      errs() << "undef\n";
  OS << "\n]";
  return OS;
}

bool isConstantPack(const OperandPack &OP) {
  for (auto *V : OP)
    if (V && !isa<Constant>(V))
      return false;
  return true;
}

void VectorPack::getPackedInstructions(
    SmallPtrSetImpl<Instruction *> &Insts) const {
  if (Kind == Reduction) {
    Insts.insert(Rdx->Ops.begin(), Rdx->Ops.end());
    return;
  }

  if (Kind != General) {
    for (auto *V : elementValues())
      Insts.insert(cast<Instruction>(V));
    return;
  }

  SmallPtrSet<Value *, 32> LiveIns;
  SmallVector<Value *> Worklist;
  for (auto *M : Matches) {
    if (!M)
      continue;
    LiveIns.insert(M->Inputs.begin(), M->Inputs.end());
    Worklist.push_back(M->Output);
  }
  while (!Worklist.empty()) {
    auto *I = dyn_cast<Instruction>(Worklist.pop_back_val());
    if (!I || LiveIns.count(I))
      continue;
    if (!Insts.insert(I).second)
      continue;
    Worklist.append(I->value_op_begin(), I->value_op_end());
  }
}

Value *VectorPack::getLoadStorePointer() const {
  if (IsGatherScatter)
    return nullptr;
  if (isLoad())
    return Loads.front()->getPointerOperand();
  else if (isStore())
    return Stores.front()->getPointerOperand();
  return nullptr;
}

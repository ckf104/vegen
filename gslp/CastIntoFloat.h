#include "llvm/Analysis/TargetTransformInfo.h"
#include <cassert>

namespace llvm {
inline float
getCastInstrCostFromTTI(const TargetTransformInfo *TTI, unsigned opcode,
                        Type *Dst, Type *Src, TTI::CastContextHint CCH,
                        TTI::TargetCostKind CostKind = TTI::TCK_SizeAndLatency,
                        const Instruction *I = nullptr) {

  auto cost =
      TTI->getCastInstrCost(opcode, Dst, Src, CCH, CostKind, I).getValue();
  assert(cost && "Cast cost is not valid?");
  return (float)cost.value();
}

inline float getArithInstrCostFromTTI(const TargetTransformInfo *TTI,
                                      unsigned opcode, Type *Ty) {

  auto cost = TTI->getArithmeticInstrCost(opcode, Ty).getValue();
  assert(cost && "Arith cost is not valid?");
  return (float)cost.value();
}

inline float getIntrinsicInstrCostFromTTI(const TargetTransformInfo *TTI,
                                          const IntrinsicCostAttributes &ICA,
                                          TTI::TargetCostKind CostKind) {
  auto cost = TTI->getIntrinsicInstrCost(ICA, CostKind).getValue();
  assert(cost && "Intrinsic cost in not valid");
  return (float)cost.value();
}

inline float
getMemoryOpCostFromTTI(const TargetTransformInfo *TTI, unsigned Opcode,
                       Type *Src, Align Alignment, unsigned AddressSpace,
                       TTI::TargetCostKind CostKind = TTI::TCK_RecipThroughput,
                       const Instruction *I = nullptr) {
  auto cost =
      TTI->getMemoryOpCost(Opcode, Src, Alignment, AddressSpace, CostKind, I)
          .getValue();
  assert(cost && "cost is not valid?");
  return (float)cost.value();
}

inline float getShuffleCostFromTTI(
    const TargetTransformInfo *TTI, TTI::ShuffleKind Kind, VectorType *Tp,
    ArrayRef<int> Mask = ArrayRef<int>(),
    TTI::TargetCostKind CostKind = TTI::TCK_RecipThroughput, int Index = 0,
    VectorType *SubTp = nullptr,
    ArrayRef<const Value *> Args = ArrayRef<const Value *>()) {
#ifndef LLVM16
  auto cost =
      TTI->getShuffleCost(Kind, Tp, Mask, Index, SubTp, Args).getValue();
#else
  auto cost = TTI->getShuffleCost(Kind, Tp, Mask, CostKind, Index, SubTp, Args)
                  .getValue();
#endif
  assert(cost && "shuffle cost is not valid");
  return (float)cost.value();
}

inline float getVectorInstrCostFromTTI(const TargetTransformInfo *TTI,
                                       unsigned Opcode, Type *Val,
                                       unsigned Index = -1) {
  auto cost = TTI->getVectorInstrCost(Opcode, Val, Index).getValue();
  assert(cost && "vector inst cost is not valid");
  return (float)cost.value();
}

inline float getArithmeticReductionCostFromTTI(
    const TargetTransformInfo *TTI, unsigned Opcode, VectorType *Ty,
    Optional<FastMathFlags> FMF,
    TTI::TargetCostKind CostKind = TTI::TCK_RecipThroughput) {
  auto cost =
      TTI->getArithmeticReductionCost(Opcode, Ty, FMF, CostKind).getValue();
  assert(cost && "Arith reduction cost is not valid");
  return (float)cost.value();
}

inline float getMinMaxReductionCostFromTTI(
    const TargetTransformInfo *TTI, VectorType *Ty, VectorType *CondTy,
    bool IsUnsigned, TTI::TargetCostKind CostKind = TTI::TCK_RecipThroughput) {
  auto cost =
      TTI->getMinMaxReductionCost(Ty, CondTy, IsUnsigned, CostKind).getValue();
  assert(cost && "MinMax reduction cost is not valid");
  return (float)cost.value();
}

inline int getGatherScatterOpCostFromTTI(
    const TargetTransformInfo *TTI, unsigned Opcode, Type *DataTy,
    const Value *Ptr, bool VariableMask, Align Alignment,
    TTI::TargetCostKind CostKind = TTI::TCK_RecipThroughput,
    const Instruction *I = nullptr) {
  auto cost = TTI->getGatherScatterOpCost(Opcode, DataTy, Ptr, VariableMask,
                                          Alignment, CostKind, I)
                  .getValue();
  assert(cost && "Gather scatter op cost is not valid");
  return (int)cost.value();
}

inline int getMaskedMemoryOpCostFromTTI(
    const TargetTransformInfo *TTI, unsigned Opcode, Type *Src, Align Alignment,
    unsigned AddressSpace,
    TTI::TargetCostKind CostKind = TTI::TCK_RecipThroughput) {
  auto cost =
      TTI->getMaskedMemoryOpCost(Opcode, Src, Alignment, AddressSpace, CostKind)
          .getValue();
  assert(cost && "Masked memory op cost is not valid");
  return (int)cost.value();
}

inline float getArithmeticInstrCostFromTTI(
    const TargetTransformInfo *TTI, unsigned Opcode, Type *Ty,
    TTI::TargetCostKind CostKind = TTI::TCK_RecipThroughput,
    TTI::OperandValueKind Opd1Info = TTI::OK_AnyValue,
    TTI::OperandValueKind Opd2Info = TTI::OK_AnyValue,
    TTI::OperandValueProperties Opd1PropInfo = TTI::OP_None,
    TTI::OperandValueProperties Opd2PropInfo = TTI::OP_None,
    ArrayRef<const Value *> Args = ArrayRef<const Value *>(),
    const Instruction *CxtI = nullptr) {
  auto cost =
      TTI->getArithmeticInstrCost(Opcode, Ty, CostKind, Opd1Info, Opd2Info,
                                  Opd1PropInfo, Opd2PropInfo, Args, CxtI)
          .getValue();
  assert(cost && "Arith cost is not valid?");
  return (float)cost.value();
}

} // namespace llvm
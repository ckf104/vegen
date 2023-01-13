#ifndef LOOP_UNROLLING_H
#define LOOP_UNROLLING_H

#include "llvm/IR/ValueMap.h"
#include "llvm/IR/ValueHandle.h"
#include "llvm/Transforms/Utils/UnrollLoop.h"


struct UnrolledValue {
  unsigned Iter;
  llvm::WeakTrackingVH V;
};

struct VegenUnrollLoopOptions {
  unsigned Count;
  unsigned TripCount;
  bool Force;
  bool AllowRuntime;
  bool AllowExpensiveTripCount;
  bool PreserveCondBr;
  bool PreserveOnlyFirst;
  unsigned TripMultiple;
  unsigned PeelCount;
  bool UnrollRemainder;
  bool ForgetAllSCEV;
};


// Our version of llvm::UnrollLoop that additionally keeps track of the the
// unrolled values
llvm::LoopUnrollResult UnrollLoopWithVMap(
    llvm::Loop *, VegenUnrollLoopOptions, llvm::LoopInfo *,
    llvm::ScalarEvolution *, llvm::DominatorTree *, llvm::AssumptionCache *,
    const llvm::TargetTransformInfo *, bool PreserveLCSSA,
    llvm::ValueMap<llvm::Value *, UnrolledValue> &, llvm::Loop **);
#endif // LOOP_UNROLLING_H

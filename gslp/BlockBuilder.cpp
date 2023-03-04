#include "BlockBuilder.h"
#include "ControlDependence.h"
#include "llvm/IR/IRBuilder.h"

using namespace llvm;

BlockBuilder::BlockBuilder(
    BasicBlock *EntryBB,
    std::function<llvm::Value *(llvm::Value *)> EmitCondition)
    : Ctx(EntryBB->getContext()), F(EntryBB->getParent()),
      EmitCondition(EmitCondition), ActiveConds({{nullptr, EntryBB}}) {}

BasicBlock *BlockBuilder::createBlock() {
  return BasicBlock::Create(Ctx, "", F);
}

namespace {

class ConditionEmitter {
  IRBuilder<> IRB;
  const ControlCondition *Common;
  std::function<llvm::Value *(llvm::Value *)> EmitCondition;
  DenseMap<const ControlCondition *, Value *> Emitted;

  Value *emitAnd(const ConditionAnd *And) {
    if (auto *V = Emitted.lookup(And))
      return V;
    auto *V =
        IRB.CreateAnd(emit(And->Parent),
                      And->IsTrue ? EmitCondition(And->Cond)
                                  : IRB.CreateNot(EmitCondition(And->Cond)));
    return Emitted[And] = V;
  }

  Value *emitOr(const ConditionOr *Or) {
    if (auto *V = Emitted.lookup(Or))
      return V;
    return Emitted[Or] = emitDisjunction(Or->Conds);
  }

public:
  ConditionEmitter(BasicBlock *BB, const ControlCondition *Common,
                   decltype(EmitCondition) EmitCondition)
      : IRB(BB), Common(Common), EmitCondition(EmitCondition) {}
  Value *emit(const ControlCondition *C) {
    if (C == Common || !C)
      return IRB.getTrue();
    if (auto *And = dyn_cast<ConditionAnd>(C))
      return emitAnd(And);
    return emitOr(cast<ConditionOr>(C));
  }
  Value *emitDisjunction(ArrayRef<const ControlCondition *> Conds) {
    SmallVector<Value *, 8> Values;
    for (auto *C : Conds)
      Values.push_back(emit(C));
    return IRB.CreateOr(Values);
  }
};

} // namespace

#if 0
static Value *
emitCondition(const ControlCondition *Common, const ControlCondition *C,
              IRBuilderBase &IRB,
              std::function<llvm::Value *(llvm::Value *)> EmitCondition);
// Emit code that computes the disjunction for Conds at BB
static Value *
emitDisjunction(const ControlCondition *Common,
                ArrayRef<const ControlCondition *> Conds, IRBuilderBase &IRB,
                std::function<llvm::Value *(llvm::Value *)> EmitCondition) {
  SmallVector<Value *> Values;
  for (auto *C : Conds)
    Values.push_back(emitCondition(Common, C, IRB, EmitCondition));
  return IRB.CreateOr(Values);
}

static Value *CreateAnd(Value *A, Value *B, IRBuilderBase &IRB) {
  if (A == ConstantInt::getTrue(IRB.getContext()))
    return B;
  return IRB.CreateAnd(A, B);
}

static Value *
emitCondition(const ControlCondition *Common, const ControlCondition *C,
              IRBuilderBase &IRB,
              std::function<llvm::Value *(llvm::Value *)> EmitCondition) {
  if (C == Common)
    return ConstantInt::getTrue(IRB.getContext());
  assert(C);
  if (auto *And = dyn_cast<ConditionAnd>(C)) {
    return CreateAnd(emitCondition(Common, And->Parent, IRB, EmitCondition),
                     And->IsTrue ? EmitCondition(And->Cond)
                                 : IRB.CreateNot(EmitCondition(And->Cond)),
                     IRB);
  }
  return emitDisjunction(Common, cast<ConditionOr>(C)->Conds, IRB,
                         EmitCondition);
}

// Emit code that computes the disjunction for Conds at BB
static Value *
emitDisjunction(BasicBlock *BB, const ControlCondition *Common,
                ArrayRef<const ControlCondition *> Conds,
                std::function<llvm::Value *(llvm::Value *)> EmitCondition) {
  IRBuilder<> IRB(BB);
  return emitDisjunction(Common, Conds, IRB, EmitCondition);
}
#endif

// The basic conclusion is that if each inst in two acyclic control flow graph
// have the same control dependence, then the two cfg should be equal(ok, the
// statement is a bit vague). To understand this, we can define control
// condition of each inst as `path1 || path2 || path3...`, the path_i represent
// a possible path from the entry to the inst in cfg1 and is a
// expression like (c1 && !c2 && c3...), where c_i is branch condition in this
// path. As long as the Inst I will be executed in cfg1, the result of bool
// expression is true, we know Inst I must be also executed in cfg2. Or Inst I
// isn't executed in cfg1, bool expression result is false. we know Inst I will
// not be executed in cfg2, even though some condition c_i is not defined in
// cfg1 or cfg2.
// So a more essential statement is that an inst in an acyclic control flow
// graph will be executed if and only if its control condition is true?
// Based on above conclusion, we can think of a brutal method to reconstruct cfg
// by control condition. We insert insts into a new cfg with respect to control
// dependence and data dependence(i.e., if Inst I has operand J and condition
// c1, then Inst J and c1 should be inserted into cfg before I). We mark a
// current active block, whose control condition should be nullptr(always
// execute). First, create a new cfg with a empty entry block marked as current
// active block. For each new Inst to be inserted, we generate logic insts(and,
// or, not) to calculate it's control condition in current active block, then
// insert a branch whose cond variable is the calculated result of control
// condition in current active block. Then we create a true branch block and
// false branch block for jump of branch inst. Now we can insert new Inst in
// true branch block! After that, generate a unconditional branch in true/false
// branch block, create a new block E, set the two branches jump to E. Block E
// is the new current active Block, whose control condition is nullptr.
// Following code is an optimized implementation of above method, broken
// dominance will be fixed(because some conditions c_i are undef) in
// `fixDefUseDominance`
// In the following code, active block is the block without inserted terminator
// Inst and semi-active block is the block whose control condition is the
// greatest common of conditions of all reachable active block.
BasicBlock *BlockBuilder::getBlockFor(const ControlCondition *C) {
  if (auto *BB = ActiveConds.lookup(C))
    return BB;

  // Get active conditions that use C and
  // unmark all intermediate semi-active conditions.
  auto GetActiveConds = [&](const ControlCondition *C,
                            SmallPtrSetImpl<const ControlCondition *> &Conds) {
    SmallPtrSet<const ControlCondition *, 4> Visited;
    SmallVector<const ControlCondition *> Worklist{C};
    assert(SemiActiveConds.count(C));
    while (!Worklist.empty()) {
      auto *C2 = Worklist.pop_back_val();
      if (!Visited.insert(C2).second)
        continue;

      if (ActiveConds.count(C2)) {
        Conds.insert(C2);
        continue;
      }

      auto It = SemiActiveConds.find(C2);
      assert(It != SemiActiveConds.end());
      Worklist.append(It->second.begin(), It->second.end());
      SemiActiveConds.erase(It);
    }
  };

  // If C is a semi-active condition,
  // join all of the blocks using C to the block for C
  if (SemiActiveConds.count(C)) {
    SmallPtrSet<const ControlCondition *, 4> Conds;
    GetActiveConds(C, Conds);
    auto *BB = createBlock();
    for (auto *C2 : Conds) {
      auto It = ActiveConds.find(C2);
      assert(It != ActiveConds.end());
      BranchInst::Create(BB, It->second);
      ActiveConds.erase(It);
    }
    ActiveConds[C] = BB;
    return BB;
  }

  if (auto *And = dyn_cast<ConditionAnd>(C)) {
    auto *IfTrue = createBlock();
    auto *IfFalse = createBlock();
    BranchInst::Create(IfTrue, IfFalse, EmitCondition(And->Cond),
                       getBlockFor(And->Parent));
    auto *BB = And->IsTrue ? IfTrue : IfFalse;

    assert(ActiveConds.count(And->Parent));
    ActiveConds.erase(And->Parent);
    SemiActiveConds[And->Parent].assign({And, And->Complement});
    ActiveConds[And] = BB;
    ActiveConds[And->Complement] = And->IsTrue ? IfFalse : IfTrue;
    return BB;
  }

  auto *Or = cast<ConditionOr>(C);
  // At this point, we need a join but not all the conditions we want are
  // active. Find all the active blocks that are using the greatest common cond.
  SmallPtrSet<const ControlCondition *, 4> Conds;
  auto *CommonC = Or->GreatestCommonCond;
  if (!SemiActiveConds.count(CommonC)) {
    (void)getBlockFor(CommonC);
    Conds.insert(CommonC);
  } else {
    GetActiveConds(CommonC, Conds);
  }

  // Join the conditions we want to BB.
  // Join the other conditions to AuxBB, which then branch conditionally to BB
  auto *BB = createBlock();
  auto *AuxBB = createBlock();
  SmallPtrSet<const ControlCondition *, 4> CondsToJoin, Joined;
  CondsToJoin.insert(Or->Conds.begin(), Or->Conds.end());
  for (auto *C2 : Conds) {
    auto It = ActiveConds.find(C2);
    assert(It != ActiveConds.end());
    auto *BB2 = It->second;

    if (CondsToJoin.count(C2)) {
      BranchInst::Create(BB, BB2);
      Joined.insert(C2);
    } else {
      BranchInst::Create(AuxBB, BB2);
    }
    ActiveConds.erase(It);
  }

  SmallVector<const ControlCondition *, 4> UnjoinedConds;
  for (auto *C : Or->Conds)
    if (!Joined.count(C))
      UnjoinedConds.push_back(C);

  // Branch conditionally from AuxBB to BB
  auto *DrainBB = createBlock();
  if (UnjoinedConds.empty())
    BranchInst::Create(DrainBB, AuxBB);
  else {
    ConditionEmitter CE(AuxBB, CommonC, EmitCondition);
    BranchInst::Create(BB, DrainBB,
                       // emitDisjunction(AuxBB, CommonC, UnjoinedConds,
                       // EmitCondition), AuxBB);
                       CE.emitDisjunction(UnjoinedConds), AuxBB);
  }

  // Create a dummy condition that represents the complement of the disjunction.
  auto *DummyC = getDummyCondition();
  ActiveConds[C] = BB;
  ActiveConds[DummyC] = DrainBB;
  SemiActiveConds[CommonC] = {C, DummyC};
  assert(!ActiveConds.lookup(CommonC));
  return BB;
}

void BlockBuilder::setBlockForCondition(llvm::BasicBlock *BB,
                                        const ControlCondition *C) {
  assert(ActiveConds.count(C) && "can only set block for active condition");
  ActiveConds[C] = BB;
}

const ControlCondition *BlockBuilder::getDummyCondition() {
  return reinterpret_cast<const ControlCondition *>(++DummyCounter);
}

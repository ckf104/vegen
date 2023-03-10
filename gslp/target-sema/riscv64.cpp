#include "InstSema.h"
#include "MatchingUtil.h"
#include "Packer.h"
#include "llvm/IR/Intrinsics.h"
#include "llvm/IR/PatternMatch.h"

using namespace llvm;
using namespace PatternMatch;

class : public Operation {
  bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {
    Value *tmp0;
    Value *tmp1;
    bool Matched = PatternMatch::match(
        V, m_Intrinsic<Intrinsic::uadd_sat>(m_Value(tmp0), m_Value(tmp1)));
    if (Matched)
      Matches.push_back({false,
                         // matched live ins
                         {tmp0, tmp1},
                         // the matched value itself
                         V});
    return Matched;
  }
} Operation0;

class : public Operation {
  bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {
    Value *tmp0;
    Value *tmp1;
    bool Matched =
        PatternMatch::match(
            V, m_c_Add(m_ZExt(m_Value(tmp0)), m_ZExt(m_Value(tmp1)))) &&
        getBitWidth(V).value_or(1) == 2 * getBitWidth(tmp0).value_or(1) &&
        getBitWidth(tmp0).value_or(0) == getBitWidth(tmp1).value_or(1);
    if (Matched)
      Matches.push_back({false,
                         // matched live ins
                         {tmp0, tmp1},
                         // the matched value itself
                         V});
    return Matched;
  }
} Operation1;

BoundOperation boundMapFunction0(uint32_t inputId) {
  return BoundOperation{
      &Operation0,
      {InputId{/*vecId_=*/0, inputId}, InputId{/*vecId_=*/1, inputId}}};
}

BoundOperation boundMapFunction1(uint32_t inputId) {
  return BoundOperation{
      &Operation1,
      {InputId{/*vecId_=*/0, inputId}, InputId{/*vecId_=*/1, inputId}}};
}

uint32_t eleNumMapFunction0(const InstSignature *, uint32_t outLanes,
                            uint32_t) {
  return outLanes;
}

std::vector<InstBinding> Riscv64Insts = {
    InstBinding{"vsaddu",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0},
                {&Operation0},
                boundMapFunction0,
                1},
    InstBinding{"vwaddu",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0},
                {&Operation1},
                boundMapFunction1,
                1},
};
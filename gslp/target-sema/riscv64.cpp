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

class : public Operation {
  bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {
    Value *tmp0;
    Value *tmp1;
    bool Matched =
        PatternMatch::match(V, m_c_Add(m_Value(tmp0), m_Value(tmp1)));
    if (Matched)
      Matches.push_back({false,
                         // matched live ins
                         {tmp0, tmp1},
                         // the matched value itself
                         V});
    return Matched;
  }
} Operation2;

class : public Operation {
  bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {
    Value *tmp0;
    Value *tmp1;
    bool Matched = PatternMatch::match(V, m_Sub(m_Value(tmp0), m_Value(tmp1)));
    if (Matched)
      Matches.push_back({false,
                         // matched live ins
                         {tmp0, tmp1},
                         // the matched value itself
                         V});
    return Matched;
  }
} Operation3;

class : public Operation {
  bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {
    Value *tmp0;
    Value *tmp1;
    bool Matched = PatternMatch::match(V, m_FAdd(m_Value(tmp0), m_Value(tmp1)));
    if (Matched)
      Matches.push_back({false,
                         // matched live ins
                         {tmp0, tmp1},
                         // the matched value itself
                         V});
    return Matched;
  }
} Operation4;

class : public Operation {
  bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {
    Value *tmp0;
    Value *tmp1;
    bool Matched = PatternMatch::match(V, m_FSub(m_Value(tmp0), m_Value(tmp1)));
    if (Matched)
      Matches.push_back({false,
                         // matched live ins
                         {tmp0, tmp1},
                         // the matched value itself
                         V});
    return Matched;
  }
} Operation5;

class : public Operation {
  bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {
    Value *tmp0;
    Value *tmp1;
    bool Matched = PatternMatch::match(V, m_FMul(m_Value(tmp0), m_Value(tmp1)));
    if (Matched)
      Matches.push_back({false,
                         // matched live ins
                         {tmp0, tmp1},
                         // the matched value itself
                         V});
    return Matched;
  }
} Operation6;

BoundOperation boundMapFunction0(uint32_t outId) {
  return BoundOperation{
      &Operation0,
      {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

BoundOperation boundMapFunction1(uint32_t outId) {
  return BoundOperation{
      &Operation1,
      {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

BoundOperation boundMapFunction2(uint32_t outId) {
  if (outId % 2 == 0)
    return BoundOperation{
        &Operation2,
        {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
  else
    return BoundOperation{
        &Operation3,
        {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

// fadd
BoundOperation boundMapFunction3(uint32_t outId) {
  return BoundOperation{
      &Operation4,
      {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

// fsub
BoundOperation boundMapFunction4(uint32_t outId) {
  return BoundOperation{
      &Operation5,
      {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

// fmul
BoundOperation boundMapFunction5(uint32_t outId) {
  return BoundOperation{
      &Operation6,
      {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

BoundOperation boundMapFunction6(uint32_t outId) {
  if (outId % 2 == 0)
    return BoundOperation{
        &Operation4,
        {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
  else
    return BoundOperation{
        &Operation5,
        {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
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
    InstBinding{"vaddsub",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0},
                {&Operation2, &Operation3},
                boundMapFunction2,
                1},
    InstBinding{"vfadd",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0},
                {&Operation4},
                boundMapFunction3,
                1},
    InstBinding{"vfsub",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0},
                {&Operation5},
                boundMapFunction4,
                1},
    InstBinding{"vfmul",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::Scalar)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0},
                {&Operation6},
                boundMapFunction5,
                1},
    InstBinding{"vfaddsub",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0},
                {&Operation4, &Operation5},
                boundMapFunction6,
                1}

};
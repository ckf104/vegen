#include "InstSema.h"
#include "InstSeq.h"
#include "MatchingUtil.h"
#include "Packer.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Intrinsics.h"
#include "llvm/IR/PatternMatch.h"

using namespace llvm;
using namespace PatternMatch;

#define UnaryBindingGen(instname, opname, cost)                                \
  InstBinding {                                                                \
#instname, {}, InstSignature{{OperandType(OperandType::ScalableVec) },     \
                                  OperandType(OperandType::ScalableVec),       \
                                  eleNumMapFunction0, },                       \
                                 {&opname##Op }, opname##Bound, cost           \
  }

#define BinaryNonCommutativeWithScalarBindingGen(instname, opname, cost)       \
  InstBinding {                                                                \
#instname, {}, InstSignature{{OperandType(OperandType::ScalableVec),       \
                                  OperandType(OperandType::ScalableVec) },     \
                                  OperandType(OperandType::ScalableVec),       \
                                  eleNumMapFunction0, /*scalarVersion=*/true,  \
                                  /*scalarPos=*/1 },                           \
                                 {&opname##Op }, opname##Bound, cost           \
  }
#define TernaryNonCommutativeWithScalarBindingGen(instname, opname, cost)      \
  InstBinding {                                                                \
#instname, {}, InstSignature{{OperandType(OperandType::ScalableVec),       \
                                  OperandType(OperandType::ScalableVec),       \
                                  OperandType(OperandType::ScalableVec) },     \
                                  OperandType(OperandType::ScalableVec),       \
                                  eleNumMapFunction0, /*scalarVersion=*/true,  \
                                  /*scalarPos=*/2 },                           \
                                 {&opname##Op }, opname##Bound, cost           \
  }

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
} SatUAddOp;

class : public Operation {
  bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {
    Value *tmp0;
    Value *tmp1;
    bool Matched = PatternMatch::match(
        V, m_Intrinsic<Intrinsic::sadd_sat>(m_Value(tmp0), m_Value(tmp1)));
    if (Matched)
      Matches.push_back({false,
                         // matched live ins
                         {tmp0, tmp1},
                         // the matched value itself
                         V});
    return Matched;
  }
} SatSAddOp;

class : public Operation {
  bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {
    Value *tmp0;
    Value *tmp1;
    bool Matched = PatternMatch::match(
        V, m_Intrinsic<Intrinsic::ssub_sat>(m_Value(tmp0), m_Value(tmp1)));
    if (Matched)
      Matches.push_back({false,
                         // matched live ins
                         {tmp0, tmp1},
                         // the matched value itself
                         V});
    return Matched;
  }
} SatSSubOp;

class : public Operation {
  bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {
    Value *tmp0;
    Value *tmp1;
    bool Matched = PatternMatch::match(
        V, m_Intrinsic<Intrinsic::usub_sat>(m_Value(tmp0), m_Value(tmp1)));
    if (Matched)
      Matches.push_back({false,
                         // matched live ins
                         {tmp0, tmp1},
                         // the matched value itself
                         V});
    return Matched;
  }
} SatUSubOp;

class : public Operation {
  bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {
    Value *tmp0;
    Value *tmp1;
    bool Matched = PatternMatch::match(V, m_c_Add(m_ZExt(m_Value(tmp0)),
                                                  m_ZExt(m_Value(tmp1)))) &&
                   getBitWidth(V) == 2 * getBitWidth(tmp0) &&
                   getBitWidth(tmp0) == getBitWidth(tmp1);
    if (Matched)
      Matches.push_back({false,
                         // matched live ins
                         {tmp0, tmp1},
                         // the matched value itself
                         V});
    return Matched;
  }
} WidAddOp;

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
} AddOp;

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
} SubOp;

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
} FAddOp;

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
} FSubOp;

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
} FMulOp;

class : public Operation {
  bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {
    Value *tmp0;
    Value *tmp1;
    bool Matched = PatternMatch::match(V, m_Mul(m_Value(tmp0), m_Value(tmp1)));
    if (Matched)
      Matches.push_back({false,
                         // matched live ins
                         {tmp0, tmp1},
                         // the matched value itself
                         V});
    return Matched;
  }
} MulOp;

class : public Operation {
  bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {
    Value *tmp0;
    Value *tmp1;
    bool Matched = PatternMatch::match(V, m_Shl(m_Value(tmp0), m_Value(tmp1)));
    if (Matched)
      Matches.push_back({false,
                         // matched live ins
                         {tmp0, tmp1},
                         // the matched value itself
                         V});
    return Matched;
  }
} ShlOp;
class : public Operation {
  bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {
    Value *tmp0;
    Value *tmp1;
    bool Matched = PatternMatch::match(V, m_AShr(m_Value(tmp0), m_Value(tmp1)));
    if (Matched)
      Matches.push_back({false,
                         // matched live ins
                         {tmp0, tmp1},
                         // the matched value itself
                         V});
    return Matched;
  }
} AShrOp;

class : public Operation {
  bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {
    Value *tmp0;
    Value *tmp1;
    bool Matched = PatternMatch::match(V, m_LShr(m_Value(tmp0), m_Value(tmp1)));
    if (Matched)
      Matches.push_back({false,
                         // matched live ins
                         {tmp0, tmp1},
                         // the matched value itself
                         V});
    return Matched;
  }
} LShrOp;

#define ICMPOpGen(op)                                                          \
  class : public Operation {                                                   \
    bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {     \
      Value *tmp0;                                                             \
      Value *tmp1;                                                             \
      ICmpInst::Predicate pred;                                                \
      bool Matched =                                                           \
          PatternMatch::match(V, m_ICmp(pred, m_Value(tmp0), m_Value(tmp1)));  \
      if (Matched && pred == ICmpInst::ICMP_##op)                              \
        Matches.push_back({false, {tmp0, tmp1}, V});                           \
      return Matched;                                                          \
    }                                                                          \
  } ICmp##op##Op;                                                              \
  BoundOperation ICmp##op##Bound(uint32_t outId) {                             \
    return BoundOperation{                                                     \
        &ICmp##op##Op,                                                         \
        {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};         \
  }

#define IntrinsicOpGen(op)                                                     \
  class : public Operation {                                                   \
    bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {     \
      Value *tmp0;                                                             \
      Value *tmp1;                                                             \
      bool Matched = PatternMatch::match(                                      \
          V, m_Intrinsic<Intrinsic::op>(m_Value(tmp0), m_Value(tmp1)));        \
      if (Matched)                                                             \
        Matches.push_back({false, {tmp0, tmp1}, V});                           \
      return Matched;                                                          \
    }                                                                          \
  } Intrinsic##op##Op;                                                         \
  BoundOperation Intrinsic##op##Bound(uint32_t outId) {                        \
    return BoundOperation{                                                     \
        &Intrinsic##op##Op,                                                    \
        {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};         \
  }

#define UnaryOpGen(op)                                                         \
  class : public Operation {                                                   \
    bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {     \
      Value *tmp0;                                                             \
      bool Matched = PatternMatch::match(V, m_##op(m_Value(tmp0)));            \
      if (Matched)                                                             \
        Matches.push_back({false, {tmp0}, V});                                 \
      return Matched;                                                          \
    }                                                                          \
  } op##Op;                                                                    \
  BoundOperation op##Bound(uint32_t outId) {                                   \
    return BoundOperation{&op##Op, {InputId{/*vecId_=*/0, outId}}};            \
  }

#define ExtOpGen(op, wid)                                                      \
  class : public Operation {                                                   \
    bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {     \
      Value *tmp0;                                                             \
      bool Matched = PatternMatch::match(V, m_##op(m_Value(tmp0))) &&          \
                     getBitWidth(V) == (wid)*getBitWidth(tmp0);                \
      ;                                                                        \
      if (Matched)                                                             \
        Matches.push_back({false, {tmp0}, V});                                 \
      return Matched;                                                          \
    }                                                                          \
  } op##wid##Op;                                                               \
  BoundOperation op##wid##Bound(uint32_t outId) {                              \
    return BoundOperation{&op##wid##Op, {InputId{/*vecId_=*/0, outId}}};       \
  }

#define BinaryOpGen(op)                                                        \
  class : public Operation {                                                   \
    bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {     \
      Value *tmp0;                                                             \
      Value *tmp1;                                                             \
      bool Matched =                                                           \
          PatternMatch::match(V, m_##op(m_Value(tmp0), m_Value(tmp1)));        \
      if (Matched)                                                             \
        Matches.push_back({false, {tmp0, tmp1}, V});                           \
      return Matched;                                                          \
    }                                                                          \
  } op##Op;                                                                    \
  BoundOperation op##Bound(uint32_t outId) {                                   \
    return BoundOperation{                                                     \
        &op##Op,                                                               \
        {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};         \
  }

#define TernaryOpGen(op)                                                       \
  class : public Operation {                                                   \
    bool match(Value *V, SmallVectorImpl<Match> &Matches) const override {     \
      Value *tmp0;                                                             \
      Value *tmp1;                                                             \
      Value *tmp2;                                                             \
      bool Matched = PatternMatch::match(                                      \
          V, m_##op(m_Value(tmp0), m_Value(tmp1), m_Value(tmp2)));             \
      if (Matched)                                                             \
        Matches.push_back({false, {tmp0, tmp1, tmp2}, V});                     \
      return Matched;                                                          \
    }                                                                          \
  } op##Op;                                                                    \
  BoundOperation op##Bound(uint32_t outId) {                                   \
    return BoundOperation{&op##Op,                                             \
                          {InputId{/*vecId_=*/0, outId},                       \
                           InputId{/*vecId_=*/1, outId},                       \
                           InputId{/*vecId_=*/2, outId}}};                     \
  }

ICMPOpGen(EQ);
ICMPOpGen(NE);
ICMPOpGen(UGT);
ICMPOpGen(UGE);
ICMPOpGen(ULT);
ICMPOpGen(ULE);
ICMPOpGen(SGT);
ICMPOpGen(SGE);
ICMPOpGen(SLT);
ICMPOpGen(SLE);

IntrinsicOpGen(smin);
IntrinsicOpGen(smax);
IntrinsicOpGen(umin);
IntrinsicOpGen(umax);

TernaryOpGen(Select);
BinaryOpGen(SDiv);
BinaryOpGen(UDiv);
ExtOpGen(ZExt, 2);
ExtOpGen(ZExt, 4);
ExtOpGen(ZExt, 8);
ExtOpGen(SExt, 2);
ExtOpGen(SExt, 4);
ExtOpGen(SExt, 8);

BoundOperation SatUAddBound(uint32_t outId) {
  return BoundOperation{
      &SatUAddOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

BoundOperation SatSAddBound(uint32_t outId) {
  return BoundOperation{
      &SatSAddOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}
BoundOperation SatSSubBound(uint32_t outId) {
  return BoundOperation{
      &SatSSubOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

BoundOperation SatUSubBound(uint32_t outId) {
  return BoundOperation{
      &SatUSubOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

BoundOperation WidAddBound(uint32_t outId) {
  return BoundOperation{
      &WidAddOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

BoundOperation AddSubBound(uint32_t outId) {
  if (outId % 2 == 0)
    return BoundOperation{
        &AddOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
  else
    return BoundOperation{
        &SubOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

// fadd
BoundOperation FAddBound(uint32_t outId) {
  return BoundOperation{
      &FAddOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

// fsub
BoundOperation FSubBound(uint32_t outId) {
  return BoundOperation{
      &FSubOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

// fmul
BoundOperation FMulBound(uint32_t outId) {
  return BoundOperation{
      &FMulOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

BoundOperation FAddSubBound(uint32_t outId) {
  if (outId % 2 == 0)
    return BoundOperation{
        &FAddOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
  else
    return BoundOperation{
        &FSubOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}
BoundOperation FSubAddBound(uint32_t outId) {
  if (outId % 2 == 0)
    return BoundOperation{
        &FSubOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
  else
    return BoundOperation{
        &FAddOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

BoundOperation AddBound(uint32_t outId) {
  return BoundOperation{
      &AddOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

BoundOperation SubBound(uint32_t outId) {
  return BoundOperation{
      &SubOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

BoundOperation MulBound(uint32_t outId) {
  return BoundOperation{
      &MulOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}

BoundOperation ShlBound(uint32_t outId) {
  return BoundOperation{
      &ShlOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}
BoundOperation AShrBound(uint32_t outId) {
  return BoundOperation{
      &AShrOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
}
BoundOperation LShrBound(uint32_t outId) {
  return BoundOperation{
      &LShrOp, {InputId{/*vecId_=*/0, outId}, InputId{/*vecId_=*/1, outId}}};
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
                              eleNumMapFunction0,
                              /*scalarVersion=*/true,
                              /*scalarPos=*/1},
                {&SatUAddOp},
                SatUAddBound,
                1,
                /*commutative=*/true},
    InstBinding{"vsadd",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0,
                              /*scalarVersion=*/true,
                              /*scalarPos=*/1},
                {&SatSAddOp},
                SatSAddBound,
                1,
                /*commutative=*/true},
    InstBinding{"vssubu",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0,
                              /*scalarVersion=*/true,
                              /*scalarPos=*/1},
                {&SatUSubOp},
                SatUSubBound,
                1},
    InstBinding{"vssub",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0,
                              /*scalarVersion=*/true,
                              /*scalarPos=*/1},
                {&SatSSubOp},
                SatSSubBound,
                1},
    InstBinding{"vwaddu",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0,
                              /*scalarVersion=*/true,
                              /*scalarPos=*/1},
                {&WidAddOp},
                WidAddBound,
                1,
                /*commutative=*/true},
    InstBinding{"vaddsub",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0,
                              /*scalarVersion=*/true,
                              /*scalarPos=*/1},
                {&AddOp, &SubOp},
                AddSubBound,
                1},
    InstBinding{"vfadd",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0,
                              /*scalarVersion=*/true,
                              /*scalarPos=*/1},
                {&FAddOp},
                FAddBound,
                1,
                /*commutative=*/true},
    InstBinding{"vfsub",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0,
                              /*scalarVersion=*/true,
                              /*scalarPos=*/1},
                {&FSubOp},
                FSubBound,
                1},
    InstBinding{"vfmul",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0,
                              /*scalarVersion=*/true,
                              /*scalarPos=*/1},
                {&FMulOp},
                FMulBound,
                1,
                /*commutative=*/true},
    InstBinding{"vfaddsub",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0,
                              /*scalarVersion=*/true,
                              /*scalarPos=*/1},
                {&FAddOp, &FSubOp},
                FAddSubBound,
                1},
    InstBinding{
        {SingleInst{{{Source::Input, 0}, {Source::Input, 1}}, "vfaddsub"},
         SingleInst{{{Source::Intermediate, 0}, {Source::Intermediate, 0}},
                    "vfsgnjn"}},
        {},
        InstSignature{{OperandType(OperandType::ScalableVec),
                       OperandType(OperandType::ScalableVec)},
                      OperandType(OperandType::ScalableVec),
                      eleNumMapFunction0},
        {&FAddOp, &FSubOp},
        FSubAddBound,
        1},
    InstBinding{"vadd",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0,
                              /*scalarVersion=*/true,
                              /*scalarPos=*/1},
                {&AddOp},
                AddBound,
                1,
                /*commutative=*/true},
    InstBinding{"vsub",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0,
                              /*scalarVersion=*/true,
                              /*scalarPos=*/1},
                {&SubOp},
                SubBound,
                1},
    InstBinding{"vmul",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0,
                              /*scalarVersion=*/true,
                              /*scalarPos=*/1},
                {&MulOp},
                MulBound,
                1,
                /*commutative=*/true},
    InstBinding{"vsll",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0,
                              /*scalarVersion=*/true,
                              /*scalarPos=*/1},
                {&ShlOp},
                ShlBound,
                1},
    InstBinding{"vsra",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0,
                              /*scalarVersion=*/true,
                              /*scalarPos=*/1},
                {&AShrOp},
                AShrBound,
                1},
    InstBinding{"vsrl",
                {},
                InstSignature{{OperandType(OperandType::ScalableVec),
                               OperandType(OperandType::ScalableVec)},
                              OperandType(OperandType::ScalableVec),
                              eleNumMapFunction0,
                              /*scalarVersion=*/true,
                              /*scalarPos=*/1},
                {&LShrOp},
                LShrBound,
                1},
    BinaryNonCommutativeWithScalarBindingGen(vsmin, Intrinsicsmin, 1),
    BinaryNonCommutativeWithScalarBindingGen(vsmax, Intrinsicsmax, 1),
    BinaryNonCommutativeWithScalarBindingGen(vumin, Intrinsicumin, 1),
    BinaryNonCommutativeWithScalarBindingGen(vumax, Intrinsicumax, 1),
    BinaryNonCommutativeWithScalarBindingGen(vicmpeq, ICmpEQ, 1),
    BinaryNonCommutativeWithScalarBindingGen(vicmpne, ICmpNE, 1),
    BinaryNonCommutativeWithScalarBindingGen(vicmpeq, ICmpUGT, 1),
    BinaryNonCommutativeWithScalarBindingGen(vicmpeq, ICmpUGE, 1),
    BinaryNonCommutativeWithScalarBindingGen(vicmpeq, ICmpULT, 1),
    BinaryNonCommutativeWithScalarBindingGen(vicmpeq, ICmpULE, 1),
    BinaryNonCommutativeWithScalarBindingGen(vicmpeq, ICmpSGT, 1),
    BinaryNonCommutativeWithScalarBindingGen(vicmpeq, ICmpSGE, 1),
    BinaryNonCommutativeWithScalarBindingGen(vicmpeq, ICmpSLT, 1),
    BinaryNonCommutativeWithScalarBindingGen(vicmpeq, ICmpSLE, 1),
    TernaryNonCommutativeWithScalarBindingGen(vmerge, Select, 1),
    BinaryNonCommutativeWithScalarBindingGen(vsdiv, SDiv, 1),
    BinaryNonCommutativeWithScalarBindingGen(vudiv, UDiv, 1),
    UnaryBindingGen(vzext, ZExt2, 1),
    UnaryBindingGen(vzext, ZExt4, 1),
    UnaryBindingGen(vzext, ZExt8, 1),
    UnaryBindingGen(vsext, SExt2, 1),
    UnaryBindingGen(vsext, SExt4, 1),
    UnaryBindingGen(vsext, SExt8, 1),
};
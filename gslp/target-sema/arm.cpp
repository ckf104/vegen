#include "InstSema.h"
#include "MatchingUtil.h"

using namespace llvm;
using namespace PatternMatch;
    
class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_c_Add(
      m_SExt(
        m_Value(tmp0)),
      m_SExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation0;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Add(
      m_SExt(
        m_Value(tmp0)),
      m_SExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation1;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_c_Add(
      m_SExt(
        m_Value(tmp0)),
      m_SExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation2;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_c_Add(
      m_ZExt(
        m_Value(tmp0)),
      m_ZExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation3;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Add(
      m_ZExt(
        m_Value(tmp0)),
      m_ZExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation4;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_c_Add(
      m_ZExt(
        m_Value(tmp0)),
      m_ZExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation5;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_c_Add(
      m_SExt(
        m_Value(tmp0)),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation6;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Add(
      m_SExt(
        m_Value(tmp0)),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation7;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_c_Add(
      m_SExt(
        m_Value(tmp0)),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 64);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation8;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_c_Add(
      m_ZExt(
        m_Value(tmp0)),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation9;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Add(
      m_ZExt(
        m_Value(tmp0)),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation10;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_c_Add(
      m_ZExt(
        m_Value(tmp0)),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 64);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation11;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_c_Add(
          m_SExt(
            m_Value(tmp0)),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(16, "1", 10))))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation12;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_c_Add(
          m_SExt(
            m_Value(tmp0)),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(32, "1", 10))))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation13;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_c_Add(
          m_SExt(
            m_Value(tmp0)),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(64, "1", 10))))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation14;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_c_Add(
          m_ZExt(
            m_Value(tmp0)),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(16, "1", 10))))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation15;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_c_Add(
          m_ZExt(
            m_Value(tmp0)),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(32, "1", 10))))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation16;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_c_Add(
          m_ZExt(
            m_Value(tmp0)),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(64, "1", 10))))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation17;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_c_Add(
          m_c_Add(
            m_SExt(
              m_Value(tmp0)),
            m_SpecificInt(APInt(16, "1", 10))),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(16, "1", 10))))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation18;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_c_Add(
          m_c_Add(
            m_SExt(
              m_Value(tmp0)),
            m_SpecificInt(APInt(32, "1", 10))),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(32, "1", 10))))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation19;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_c_Add(
          m_c_Add(
            m_SExt(
              m_Value(tmp0)),
            m_SpecificInt(APInt(64, "1", 10))),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(64, "1", 10))))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation20;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_c_Add(
          m_c_Add(
            m_ZExt(
              m_Value(tmp0)),
            m_SpecificInt(APInt(16, "1", 10))),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(16, "1", 10))))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation21;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_c_Add(
          m_c_Add(
            m_ZExt(
              m_Value(tmp0)),
            m_SpecificInt(APInt(32, "1", 10))),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(32, "1", 10))))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation22;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_c_Add(
          m_c_Add(
            m_ZExt(
              m_Value(tmp0)),
            m_SpecificInt(APInt(64, "1", 10))),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(64, "1", 10))))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation23;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
        m_c_Add(
          m_SExt(
            m_Value(tmp0)),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(16, "127", 10)),
        m_SpecificInt(APInt(16, "127", 10)),
        m_SelectOnCmp(CmpInst::Predicate::ICMP_SLT,
          m_c_Add(
            m_SExt(
              m_Value(tmp2)),
            m_SExt(
              m_Value(tmp3))),
          m_SpecificInt(APInt(16, "65409", 10)),
          m_SpecificInt(APInt(16, "65408", 10)),
          m_c_Add(
            m_SExt(
              m_Value(tmp4)),
            m_SExt(
              m_Value(tmp5))))))) &&
hasBitWidth(tmp0, 8) &&
tmp0 == tmp2 &&
tmp0 == tmp4 &&
hasBitWidth(tmp1, 8) &&
tmp1 == tmp3 &&
tmp1 == tmp5;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation24;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
        m_c_Add(
          m_SExt(
            m_Value(tmp0)),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(32, "32767", 10)),
        m_SpecificInt(APInt(32, "32767", 10)),
        m_SelectOnCmp(CmpInst::Predicate::ICMP_SLT,
          m_c_Add(
            m_SExt(
              m_Value(tmp2)),
            m_SExt(
              m_Value(tmp3))),
          m_SpecificInt(APInt(32, "4294934529", 10)),
          m_SpecificInt(APInt(32, "4294934528", 10)),
          m_c_Add(
            m_SExt(
              m_Value(tmp4)),
            m_SExt(
              m_Value(tmp5))))))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp2 &&
tmp0 == tmp4 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp3 &&
tmp1 == tmp5;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation25;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
        m_c_Add(
          m_SExt(
            m_Value(tmp0)),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(64, "2147483647", 10)),
        m_SpecificInt(APInt(64, "2147483647", 10)),
        m_SelectOnCmp(CmpInst::Predicate::ICMP_SLT,
          m_c_Add(
            m_SExt(
              m_Value(tmp2)),
            m_SExt(
              m_Value(tmp3))),
          m_SpecificInt(APInt(64, "18446744071562067969", 10)),
          m_SpecificInt(APInt(64, "18446744071562067968", 10)),
          m_c_Add(
            m_SExt(
              m_Value(tmp4)),
            m_SExt(
              m_Value(tmp5))))))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp2 &&
tmp0 == tmp4 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp3 &&
tmp1 == tmp5;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation26;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_ULT,
        m_c_Add(
          m_ZExt(
            m_Value(tmp0)),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(16, "255", 10)),
        m_c_Add(
          m_ZExt(
            m_Value(tmp2)),
          m_ZExt(
            m_Value(tmp3))),
        m_SpecificInt(APInt(16, "255", 10))))) &&
hasBitWidth(tmp0, 8) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 8) &&
tmp1 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation27;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_ULT,
        m_c_Add(
          m_ZExt(
            m_Value(tmp0)),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(32, "65535", 10)),
        m_c_Add(
          m_ZExt(
            m_Value(tmp2)),
          m_ZExt(
            m_Value(tmp3))),
        m_SpecificInt(APInt(32, "65535", 10))))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation28;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_ULT,
        m_c_Add(
          m_ZExt(
            m_Value(tmp0)),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(64, "4294967295", 10)),
        m_c_Add(
          m_ZExt(
            m_Value(tmp2)),
          m_ZExt(
            m_Value(tmp3))),
        m_SpecificInt(APInt(64, "4294967295", 10))))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation29;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_c_Add(
          m_ZExt(
            m_Value(tmp0)),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(32, "8", 10))))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation30;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_c_Add(
          m_ZExt(
            m_Value(tmp0)),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(64, "16", 10))))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation31;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_c_Add(
          m_c_Add(
            m_ZExt(
              m_Value(tmp0)),
            m_SpecificInt(APInt(32, "128", 10))),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(32, "8", 10))))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation32;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_c_Add(
          m_c_Add(
            m_ZExt(
              m_Value(tmp0)),
            m_SpecificInt(APInt(64, "32768", 10))),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(64, "16", 10))))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation33;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_c_Mul(
      m_Value(tmp0),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation34;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_c_Mul(
      m_Value(tmp0),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation35;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Mul(
      m_Value(tmp0),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation36;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_FMul(
      m_Value(tmp0),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation37;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_c_Mul(
      m_SExt(
        m_Value(tmp0)),
      m_SExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation38;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Mul(
      m_SExt(
        m_Value(tmp0)),
      m_SExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation39;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_c_Mul(
      m_SExt(
        m_Value(tmp0)),
      m_SExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation40;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_c_Mul(
      m_ZExt(
        m_Value(tmp0)),
      m_ZExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation41;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Mul(
      m_ZExt(
        m_Value(tmp0)),
      m_ZExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation42;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_c_Mul(
      m_ZExt(
        m_Value(tmp0)),
      m_ZExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation43;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_c_Add(
      m_c_Mul(
        m_Value(tmp0),
        m_Value(tmp1)),
      m_Value(tmp2))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8) &&
hasBitWidth(tmp2, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation44;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_c_Add(
      m_c_Mul(
        m_Value(tmp0),
        m_Value(tmp1)),
      m_Value(tmp2))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16) &&
hasBitWidth(tmp2, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation45;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Add(
      m_c_Mul(
        m_Value(tmp0),
        m_Value(tmp1)),
      m_Value(tmp2))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32) &&
hasBitWidth(tmp2, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation46;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_FAdd(
      m_Value(tmp0),
      m_c_FMul(
        m_Value(tmp1),
        m_Value(tmp2)))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32) &&
hasBitWidth(tmp2, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation47;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_c_Add(
      m_c_Mul(
        m_SExt(
          m_Value(tmp0)),
        m_SExt(
          m_Value(tmp1))),
      m_Value(tmp2))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8) &&
hasBitWidth(tmp2, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation48;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Add(
      m_c_Mul(
        m_SExt(
          m_Value(tmp0)),
        m_SExt(
          m_Value(tmp1))),
      m_Value(tmp2))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16) &&
hasBitWidth(tmp2, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation49;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_c_Add(
      m_c_Mul(
        m_SExt(
          m_Value(tmp0)),
        m_SExt(
          m_Value(tmp1))),
      m_Value(tmp2))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32) &&
hasBitWidth(tmp2, 64);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation50;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_c_Add(
      m_c_Mul(
        m_ZExt(
          m_Value(tmp0)),
        m_ZExt(
          m_Value(tmp1))),
      m_Value(tmp2))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8) &&
hasBitWidth(tmp2, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation51;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Add(
      m_c_Mul(
        m_ZExt(
          m_Value(tmp0)),
        m_ZExt(
          m_Value(tmp1))),
      m_Value(tmp2))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16) &&
hasBitWidth(tmp2, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation52;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_c_Add(
      m_c_Mul(
        m_ZExt(
          m_Value(tmp0)),
        m_ZExt(
          m_Value(tmp1))),
      m_Value(tmp2))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32) &&
hasBitWidth(tmp2, 64);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation53;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_c_Mul(
        m_Value(tmp1),
        m_Value(tmp2)))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8) &&
hasBitWidth(tmp2, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation54;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_c_Mul(
        m_Value(tmp1),
        m_Value(tmp2)))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16) &&
hasBitWidth(tmp2, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation55;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_c_Mul(
        m_Value(tmp1),
        m_Value(tmp2)))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32) &&
hasBitWidth(tmp2, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation56;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_FSub(
      m_Value(tmp0),
      m_c_FMul(
        m_Value(tmp1),
        m_Value(tmp2)))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32) &&
hasBitWidth(tmp2, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation57;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_c_Mul(
        m_SExt(
          m_Value(tmp1)),
        m_SExt(
          m_Value(tmp2))))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 8) &&
hasBitWidth(tmp2, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation58;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_c_Mul(
        m_SExt(
          m_Value(tmp1)),
        m_SExt(
          m_Value(tmp2))))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 16) &&
hasBitWidth(tmp2, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation59;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_c_Mul(
        m_SExt(
          m_Value(tmp1)),
        m_SExt(
          m_Value(tmp2))))) &&
hasBitWidth(tmp0, 64) &&
hasBitWidth(tmp1, 32) &&
hasBitWidth(tmp2, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation60;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_c_Mul(
        m_ZExt(
          m_Value(tmp1)),
        m_ZExt(
          m_Value(tmp2))))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 8) &&
hasBitWidth(tmp2, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation61;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_c_Mul(
        m_ZExt(
          m_Value(tmp1)),
        m_ZExt(
          m_Value(tmp2))))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 16) &&
hasBitWidth(tmp2, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation62;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_c_Mul(
        m_ZExt(
          m_Value(tmp1)),
        m_ZExt(
          m_Value(tmp2))))) &&
hasBitWidth(tmp0, 64) &&
hasBitWidth(tmp1, 32) &&
hasBitWidth(tmp2, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation63;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_SLT,
      m_Shl(
        m_c_Mul(
          m_SExt(
            m_Value(tmp0)),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(32, "1", 10))),
      m_SpecificInt(APInt(32, "-2147418112", 10)),
      m_SpecificInt(APInt(16, "-32768", 10)),
      m_Trunc(
        m_LShr(
          m_c_Mul(
            m_SExt(
              m_Value(tmp2)),
            m_SExt(
              m_Value(tmp3))),
          m_SpecificInt(APInt(32, "15", 10)))))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation64;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_SLT,
      m_Shl(
        m_c_Mul(
          m_SExt(
            m_Value(tmp0)),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(64, "1", 10))),
      m_SpecificInt(APInt(64, "-9223372032559808512", 10)),
      m_SpecificInt(APInt(32, "-2147483648", 10)),
      m_Trunc(
        m_LShr(
          m_c_Mul(
            m_SExt(
              m_Value(tmp2)),
            m_SExt(
              m_Value(tmp3))),
          m_SpecificInt(APInt(64, "31", 10)))))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation65;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_SLT,
      m_c_Add(
        m_c_Mul(
          m_Shl(
            m_SExt(
              m_Value(tmp0)),
            m_SpecificInt(APInt(32, "1", 10))),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(32, "32768", 10))),
      m_SpecificInt(APInt(32, "-2147418112", 10)),
      m_SpecificInt(APInt(16, "-32768", 10)),
      m_Trunc(
        m_LShr(
          m_c_Add(
            m_c_Mul(
              m_Shl(
                m_SExt(
                  m_Value(tmp2)),
                m_SpecificInt(APInt(32, "1", 10))),
              m_SExt(
                m_Value(tmp3))),
            m_SpecificInt(APInt(32, "32768", 10))),
          m_SpecificInt(APInt(32, "16", 10)))))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation66;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_SLT,
      m_c_Add(
        m_c_Mul(
          m_Shl(
            m_SExt(
              m_Value(tmp0)),
            m_SpecificInt(APInt(64, "1", 10))),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(64, "2147483648", 10))),
      m_SpecificInt(APInt(64, "-9223372032559808512", 10)),
      m_SpecificInt(APInt(32, "-2147483648", 10)),
      m_Trunc(
        m_LShr(
          m_c_Add(
            m_c_Mul(
              m_Shl(
                m_SExt(
                  m_Value(tmp2)),
                m_SpecificInt(APInt(64, "1", 10))),
              m_SExt(
                m_Value(tmp3))),
            m_SpecificInt(APInt(64, "2147483648", 10))),
          m_SpecificInt(APInt(64, "32", 10)))))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation67;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation68;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation69;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation70;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 64) &&
hasBitWidth(tmp1, 64);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation71;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_FSub(
      m_Value(tmp0),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation72;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Sub(
      m_SExt(
        m_Value(tmp0)),
      m_SExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation73;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Sub(
      m_SExt(
        m_Value(tmp0)),
      m_SExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation74;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_Sub(
      m_SExt(
        m_Value(tmp0)),
      m_SExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation75;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Sub(
      m_ZExt(
        m_Value(tmp0)),
      m_ZExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation76;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Sub(
      m_ZExt(
        m_Value(tmp0)),
      m_ZExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation77;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_Sub(
      m_ZExt(
        m_Value(tmp0)),
      m_ZExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation78;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_SExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation79;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_SExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation80;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_SExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 64) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation81;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_ZExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation82;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_ZExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation83;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_Sub(
      m_Value(tmp0),
      m_ZExt(
        m_Value(tmp1)))) &&
hasBitWidth(tmp0, 64) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation84;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
        m_Sub(
          m_SExt(
            m_Value(tmp0)),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(16, "127", 10)),
        m_SpecificInt(APInt(16, "127", 10)),
        m_SelectOnCmp(CmpInst::Predicate::ICMP_SLT,
          m_Sub(
            m_SExt(
              m_Value(tmp2)),
            m_SExt(
              m_Value(tmp3))),
          m_SpecificInt(APInt(16, "65409", 10)),
          m_SpecificInt(APInt(16, "65408", 10)),
          m_Sub(
            m_SExt(
              m_Value(tmp4)),
            m_SExt(
              m_Value(tmp5))))))) &&
hasBitWidth(tmp0, 8) &&
tmp0 == tmp2 &&
tmp0 == tmp4 &&
hasBitWidth(tmp1, 8) &&
tmp1 == tmp3 &&
tmp1 == tmp5;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation85;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
        m_Sub(
          m_SExt(
            m_Value(tmp0)),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(32, "32767", 10)),
        m_SpecificInt(APInt(32, "32767", 10)),
        m_SelectOnCmp(CmpInst::Predicate::ICMP_SLT,
          m_Sub(
            m_SExt(
              m_Value(tmp2)),
            m_SExt(
              m_Value(tmp3))),
          m_SpecificInt(APInt(32, "4294934529", 10)),
          m_SpecificInt(APInt(32, "4294934528", 10)),
          m_Sub(
            m_SExt(
              m_Value(tmp4)),
            m_SExt(
              m_Value(tmp5))))))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp2 &&
tmp0 == tmp4 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp3 &&
tmp1 == tmp5;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation86;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
        m_Sub(
          m_SExt(
            m_Value(tmp0)),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(64, "2147483647", 10)),
        m_SpecificInt(APInt(64, "2147483647", 10)),
        m_SelectOnCmp(CmpInst::Predicate::ICMP_SLT,
          m_Sub(
            m_SExt(
              m_Value(tmp2)),
            m_SExt(
              m_Value(tmp3))),
          m_SpecificInt(APInt(64, "18446744071562067969", 10)),
          m_SpecificInt(APInt(64, "18446744071562067968", 10)),
          m_Sub(
            m_SExt(
              m_Value(tmp4)),
            m_SExt(
              m_Value(tmp5))))))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp2 &&
tmp0 == tmp4 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp3 &&
tmp1 == tmp5;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation87;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_ULT,
        m_Sub(
          m_ZExt(
            m_Value(tmp0)),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(16, "255", 10)),
        m_Sub(
          m_ZExt(
            m_Value(tmp2)),
          m_ZExt(
            m_Value(tmp3))),
        m_SpecificInt(APInt(16, "255", 10))))) &&
hasBitWidth(tmp0, 8) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 8) &&
tmp1 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation88;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_ULT,
        m_Sub(
          m_ZExt(
            m_Value(tmp0)),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(32, "65535", 10)),
        m_Sub(
          m_ZExt(
            m_Value(tmp2)),
          m_ZExt(
            m_Value(tmp3))),
        m_SpecificInt(APInt(32, "65535", 10))))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation89;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_ULT,
        m_Sub(
          m_ZExt(
            m_Value(tmp0)),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(64, "4294967295", 10)),
        m_Sub(
          m_ZExt(
            m_Value(tmp2)),
          m_ZExt(
            m_Value(tmp3))),
        m_SpecificInt(APInt(64, "4294967295", 10))))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation90;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_Sub(
          m_SExt(
            m_Value(tmp0)),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(16, "1", 10))))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation91;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_Sub(
          m_SExt(
            m_Value(tmp0)),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(32, "1", 10))))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation92;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_Sub(
          m_SExt(
            m_Value(tmp0)),
          m_SExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(64, "1", 10))))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation93;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_Sub(
          m_ZExt(
            m_Value(tmp0)),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(16, "1", 10))))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation94;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_Sub(
          m_ZExt(
            m_Value(tmp0)),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(32, "1", 10))))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation95;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_Sub(
          m_ZExt(
            m_Value(tmp0)),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(64, "1", 10))))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation96;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_Sub(
          m_ZExt(
            m_Value(tmp0)),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(32, "8", 10))))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation97;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_Sub(
          m_ZExt(
            m_Value(tmp0)),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(64, "16", 10))))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation98;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_Sub(
          m_c_Add(
            m_ZExt(
              m_Value(tmp0)),
            m_SpecificInt(APInt(32, "128", 10))),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(32, "8", 10))))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation99;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Trunc(
      m_LShr(
        m_Sub(
          m_c_Add(
            m_ZExt(
              m_Value(tmp0)),
            m_SpecificInt(APInt(64, "32768", 10))),
          m_ZExt(
            m_Value(tmp1))),
        m_SpecificInt(APInt(64, "16", 10))))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation100;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Sub(
        m_Value(tmp2),
        m_Value(tmp3)),
      m_Sub(
        m_Value(tmp4),
        m_Value(tmp5)))) &&
hasBitWidth(tmp0, 8) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 8) &&
tmp1 == tmp3 &&
tmp1 == tmp4;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation101;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Sub(
        m_Value(tmp2),
        m_Value(tmp3)),
      m_Sub(
        m_Value(tmp4),
        m_Value(tmp5)))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp3 &&
tmp1 == tmp4;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation102;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Sub(
        m_Value(tmp2),
        m_Value(tmp3)),
      m_Sub(
        m_Value(tmp4),
        m_Value(tmp5)))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp3 &&
tmp1 == tmp4;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation103;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Sub(
        m_Value(tmp2),
        m_Value(tmp3)),
      m_Sub(
        m_Value(tmp4),
        m_Value(tmp5)))) &&
hasBitWidth(tmp0, 8) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 8) &&
tmp1 == tmp3 &&
tmp1 == tmp4;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation104;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Sub(
        m_Value(tmp2),
        m_Value(tmp3)),
      m_Sub(
        m_Value(tmp4),
        m_Value(tmp5)))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp3 &&
tmp1 == tmp4;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation105;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Sub(
        m_Value(tmp2),
        m_Value(tmp3)),
      m_Sub(
        m_Value(tmp4),
        m_Value(tmp5)))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp3 &&
tmp1 == tmp4;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation106;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::FCMP_OLT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_FSub(
        m_Value(tmp2),
        m_Value(tmp3)),
      m_FSub(
        m_Value(tmp4),
        m_Value(tmp5)))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp3 &&
tmp0 == tmp4 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp2 &&
tmp1 == tmp5;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation107;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Sub(
        m_SExt(
          m_Value(tmp2)),
        m_SExt(
          m_Value(tmp3))),
      m_Sub(
        m_SExt(
          m_Value(tmp4)),
        m_SExt(
          m_Value(tmp5))))) &&
hasBitWidth(tmp0, 8) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 8) &&
tmp1 == tmp3 &&
tmp1 == tmp4;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation108;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Sub(
        m_SExt(
          m_Value(tmp2)),
        m_SExt(
          m_Value(tmp3))),
      m_Sub(
        m_SExt(
          m_Value(tmp4)),
        m_SExt(
          m_Value(tmp5))))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp3 &&
tmp1 == tmp4;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation109;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Sub(
        m_SExt(
          m_Value(tmp2)),
        m_SExt(
          m_Value(tmp3))),
      m_Sub(
        m_SExt(
          m_Value(tmp4)),
        m_SExt(
          m_Value(tmp5))))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp3 &&
tmp1 == tmp4;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation110;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Sub(
        m_ZExt(
          m_Value(tmp2)),
        m_ZExt(
          m_Value(tmp3))),
      m_Sub(
        m_ZExt(
          m_Value(tmp4)),
        m_ZExt(
          m_Value(tmp5))))) &&
hasBitWidth(tmp0, 8) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 8) &&
tmp1 == tmp3 &&
tmp1 == tmp4;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation111;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Sub(
        m_ZExt(
          m_Value(tmp2)),
        m_ZExt(
          m_Value(tmp3))),
      m_Sub(
        m_ZExt(
          m_Value(tmp4)),
        m_ZExt(
          m_Value(tmp5))))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp3 &&
tmp1 == tmp4;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation112;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Sub(
        m_ZExt(
          m_Value(tmp2)),
        m_ZExt(
          m_Value(tmp3))),
      m_Sub(
        m_ZExt(
          m_Value(tmp4)),
        m_ZExt(
          m_Value(tmp5))))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp3 &&
tmp1 == tmp4;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation113;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5; Value *tmp6;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_c_Add(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
        m_Value(tmp0),
        m_Value(tmp1),
        m_Sub(
          m_Value(tmp2),
          m_Value(tmp3)),
        m_Sub(
          m_Value(tmp4),
          m_Value(tmp5))),
      m_Value(tmp6))) &&
hasBitWidth(tmp0, 8) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 8) &&
tmp1 == tmp3 &&
tmp1 == tmp4 &&
hasBitWidth(tmp6, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp6 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation114;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5; Value *tmp6;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_c_Add(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
        m_Value(tmp0),
        m_Value(tmp1),
        m_Sub(
          m_Value(tmp2),
          m_Value(tmp3)),
        m_Sub(
          m_Value(tmp4),
          m_Value(tmp5))),
      m_Value(tmp6))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp3 &&
tmp1 == tmp4 &&
hasBitWidth(tmp6, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp6 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation115;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5; Value *tmp6;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Add(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
        m_Value(tmp0),
        m_Value(tmp1),
        m_Sub(
          m_Value(tmp2),
          m_Value(tmp3)),
        m_Sub(
          m_Value(tmp4),
          m_Value(tmp5))),
      m_Value(tmp6))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp3 &&
tmp1 == tmp4 &&
hasBitWidth(tmp6, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp6 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation116;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5; Value *tmp6;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_c_Add(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
        m_Value(tmp0),
        m_Value(tmp1),
        m_Sub(
          m_Value(tmp2),
          m_Value(tmp3)),
        m_Sub(
          m_Value(tmp4),
          m_Value(tmp5))),
      m_Value(tmp6))) &&
hasBitWidth(tmp0, 8) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 8) &&
tmp1 == tmp3 &&
tmp1 == tmp4 &&
hasBitWidth(tmp6, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp6 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation117;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5; Value *tmp6;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_c_Add(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
        m_Value(tmp0),
        m_Value(tmp1),
        m_Sub(
          m_Value(tmp2),
          m_Value(tmp3)),
        m_Sub(
          m_Value(tmp4),
          m_Value(tmp5))),
      m_Value(tmp6))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp3 &&
tmp1 == tmp4 &&
hasBitWidth(tmp6, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp6 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation118;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5; Value *tmp6;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Add(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
        m_Value(tmp0),
        m_Value(tmp1),
        m_Sub(
          m_Value(tmp2),
          m_Value(tmp3)),
        m_Sub(
          m_Value(tmp4),
          m_Value(tmp5))),
      m_Value(tmp6))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp3 &&
tmp1 == tmp4 &&
hasBitWidth(tmp6, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp6 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation119;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5; Value *tmp6;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_c_Add(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
        m_Value(tmp0),
        m_Value(tmp1),
        m_Sub(
          m_SExt(
            m_Value(tmp2)),
          m_SExt(
            m_Value(tmp3))),
        m_Sub(
          m_SExt(
            m_Value(tmp4)),
          m_SExt(
            m_Value(tmp5)))),
      m_Value(tmp6))) &&
hasBitWidth(tmp0, 8) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 8) &&
tmp1 == tmp3 &&
tmp1 == tmp4 &&
hasBitWidth(tmp6, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp6 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation120;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5; Value *tmp6;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Add(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
        m_Value(tmp0),
        m_Value(tmp1),
        m_Sub(
          m_SExt(
            m_Value(tmp2)),
          m_SExt(
            m_Value(tmp3))),
        m_Sub(
          m_SExt(
            m_Value(tmp4)),
          m_SExt(
            m_Value(tmp5)))),
      m_Value(tmp6))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp3 &&
tmp1 == tmp4 &&
hasBitWidth(tmp6, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp6 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation121;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5; Value *tmp6;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_c_Add(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
        m_Value(tmp0),
        m_Value(tmp1),
        m_Sub(
          m_SExt(
            m_Value(tmp2)),
          m_SExt(
            m_Value(tmp3))),
        m_Sub(
          m_SExt(
            m_Value(tmp4)),
          m_SExt(
            m_Value(tmp5)))),
      m_Value(tmp6))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp3 &&
tmp1 == tmp4 &&
hasBitWidth(tmp6, 64);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp6 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation122;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5; Value *tmp6;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_c_Add(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
        m_Value(tmp0),
        m_Value(tmp1),
        m_Sub(
          m_ZExt(
            m_Value(tmp2)),
          m_ZExt(
            m_Value(tmp3))),
        m_Sub(
          m_ZExt(
            m_Value(tmp4)),
          m_ZExt(
            m_Value(tmp5)))),
      m_Value(tmp6))) &&
hasBitWidth(tmp0, 8) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 8) &&
tmp1 == tmp3 &&
tmp1 == tmp4 &&
hasBitWidth(tmp6, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp6 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation123;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5; Value *tmp6;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Add(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
        m_Value(tmp0),
        m_Value(tmp1),
        m_Sub(
          m_ZExt(
            m_Value(tmp2)),
          m_ZExt(
            m_Value(tmp3))),
        m_Sub(
          m_ZExt(
            m_Value(tmp4)),
          m_ZExt(
            m_Value(tmp5)))),
      m_Value(tmp6))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp3 &&
tmp1 == tmp4 &&
hasBitWidth(tmp6, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp6 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation124;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5; Value *tmp6;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_c_Add(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
        m_Value(tmp0),
        m_Value(tmp1),
        m_Sub(
          m_ZExt(
            m_Value(tmp2)),
          m_ZExt(
            m_Value(tmp3))),
        m_Sub(
          m_ZExt(
            m_Value(tmp4)),
          m_ZExt(
            m_Value(tmp5)))),
      m_Value(tmp6))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp2 &&
tmp0 == tmp5 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp3 &&
tmp1 == tmp4 &&
hasBitWidth(tmp6, 64);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp6 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation125;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Value(tmp2),
      m_Value(tmp3))) &&
hasBitWidth(tmp0, 8) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 8) &&
tmp1 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation126;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Value(tmp2),
      m_Value(tmp3))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation127;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Value(tmp2),
      m_Value(tmp3))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation128;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Value(tmp2),
      m_Value(tmp3))) &&
hasBitWidth(tmp0, 8) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 8) &&
tmp1 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation129;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Value(tmp2),
      m_Value(tmp3))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation130;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Value(tmp2),
      m_Value(tmp3))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation131;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::FCMP_OLT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Value(tmp2),
      m_Value(tmp3))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp3 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp2;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation132;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Value(tmp2),
      m_Value(tmp3))) &&
hasBitWidth(tmp0, 8) &&
tmp0 == tmp3 &&
hasBitWidth(tmp1, 8) &&
tmp1 == tmp2;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation133;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Value(tmp2),
      m_Value(tmp3))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp3 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp2;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation134;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Value(tmp2),
      m_Value(tmp3))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp3 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp2;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation135;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Value(tmp2),
      m_Value(tmp3))) &&
hasBitWidth(tmp0, 8) &&
tmp0 == tmp3 &&
hasBitWidth(tmp1, 8) &&
tmp1 == tmp2;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation136;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Value(tmp2),
      m_Value(tmp3))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp3 &&
hasBitWidth(tmp1, 16) &&
tmp1 == tmp2;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation137;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::ICMP_UGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Value(tmp2),
      m_Value(tmp3))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp3 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp2;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation138;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::FCMP_OLT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Value(tmp2),
      m_Value(tmp3))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 32) &&
tmp1 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation139;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_SLT,
        m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
          m_Value(tmp0),
          m_SpecificInt(APInt(16, "-128", 10)),
          m_Value(tmp1),
          m_SpecificInt(APInt(16, "-128", 10))),
        m_SpecificInt(APInt(16, "127", 10)),
        m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
          m_Value(tmp2),
          m_SpecificInt(APInt(16, "-128", 10)),
          m_Value(tmp3),
          m_SpecificInt(APInt(16, "-128", 10))),
        m_SpecificInt(APInt(16, "127", 10))))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp1 &&
tmp0 == tmp2 &&
tmp0 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation140;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_SLT,
        m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
          m_Value(tmp0),
          m_SpecificInt(APInt(32, "-32768", 10)),
          m_Value(tmp1),
          m_SpecificInt(APInt(32, "-32768", 10))),
        m_SpecificInt(APInt(32, "32767", 10)),
        m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
          m_Value(tmp2),
          m_SpecificInt(APInt(32, "-32768", 10)),
          m_Value(tmp3),
          m_SpecificInt(APInt(32, "-32768", 10))),
        m_SpecificInt(APInt(32, "32767", 10))))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp1 &&
tmp0 == tmp2 &&
tmp0 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation141;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_SLT,
        m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
          m_Value(tmp0),
          m_SpecificInt(APInt(64, "-2147483648", 10)),
          m_Value(tmp1),
          m_SpecificInt(APInt(64, "-2147483648", 10))),
        m_SpecificInt(APInt(64, "2147483647", 10)),
        m_SelectOnCmp(CmpInst::Predicate::ICMP_SGT,
          m_Value(tmp2),
          m_SpecificInt(APInt(64, "-2147483648", 10)),
          m_Value(tmp3),
          m_SpecificInt(APInt(64, "-2147483648", 10))),
        m_SpecificInt(APInt(64, "2147483647", 10))))) &&
hasBitWidth(tmp0, 64) &&
tmp0 == tmp1 &&
tmp0 == tmp2 &&
tmp0 == tmp3;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation142;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_ULT,
        m_Value(tmp0),
        m_SpecificInt(APInt(16, "255", 10)),
        m_Value(tmp1),
        m_SpecificInt(APInt(16, "255", 10))))) &&
hasBitWidth(tmp0, 16) &&
tmp0 == tmp1;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation143;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_ULT,
        m_Value(tmp0),
        m_SpecificInt(APInt(32, "65535", 10)),
        m_Value(tmp1),
        m_SpecificInt(APInt(32, "65535", 10))))) &&
hasBitWidth(tmp0, 32) &&
tmp0 == tmp1;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation144;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_Trunc(
      m_SelectOnCmp(CmpInst::Predicate::ICMP_ULT,
        m_Value(tmp0),
        m_SpecificInt(APInt(64, "4294967295", 10)),
        m_Value(tmp1),
        m_SpecificInt(APInt(64, "4294967295", 10))))) &&
hasBitWidth(tmp0, 64) &&
tmp0 == tmp1;
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation145;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_SExt(
      m_Value(tmp0))) &&
hasBitWidth(tmp0, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation146;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_SExt(
      m_Value(tmp0))) &&
hasBitWidth(tmp0, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation147;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_SExt(
      m_Value(tmp0))) &&
hasBitWidth(tmp0, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation148;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_ZExt(
      m_Value(tmp0))) &&
hasBitWidth(tmp0, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation149;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_ZExt(
      m_Value(tmp0))) &&
hasBitWidth(tmp0, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation150;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_ZExt(
      m_Value(tmp0))) &&
hasBitWidth(tmp0, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation151;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 8) &&
PatternMatch::match(V, m_c_Add(
      m_Value(tmp0),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation152;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_c_Add(
      m_Value(tmp0),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation153;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Add(
      m_Value(tmp0),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation154;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_FAdd(
      m_Value(tmp0),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation155;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_c_Add(
      m_Value(tmp0),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 64) &&
hasBitWidth(tmp1, 64);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation156;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_c_FAdd(
      m_Value(tmp0),
      m_Value(tmp1))) &&
hasBitWidth(tmp0, 64) &&
hasBitWidth(tmp1, 64);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation157;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_c_Add(
      m_c_Add(
        m_SExt(
          m_Value(tmp0)),
        m_Value(tmp1)),
      m_SExt(
        m_Value(tmp2)))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 16) &&
hasBitWidth(tmp2, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation158;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Add(
      m_c_Add(
        m_SExt(
          m_Value(tmp0)),
        m_Value(tmp1)),
      m_SExt(
        m_Value(tmp2)))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 32) &&
hasBitWidth(tmp2, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation159;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_c_Add(
      m_c_Add(
        m_SExt(
          m_Value(tmp0)),
        m_Value(tmp1)),
      m_SExt(
        m_Value(tmp2)))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 64) &&
hasBitWidth(tmp2, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation160;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 16) &&
PatternMatch::match(V, m_c_Add(
      m_c_Add(
        m_ZExt(
          m_Value(tmp0)),
        m_Value(tmp1)),
      m_ZExt(
        m_Value(tmp2)))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 16) &&
hasBitWidth(tmp2, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation161;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Add(
      m_c_Add(
        m_ZExt(
          m_Value(tmp0)),
        m_Value(tmp1)),
      m_ZExt(
        m_Value(tmp2)))) &&
hasBitWidth(tmp0, 16) &&
hasBitWidth(tmp1, 32) &&
hasBitWidth(tmp2, 16);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation162;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_c_Add(
      m_c_Add(
        m_ZExt(
          m_Value(tmp0)),
        m_Value(tmp1)),
      m_ZExt(
        m_Value(tmp2)))) &&
hasBitWidth(tmp0, 32) &&
hasBitWidth(tmp1, 64) &&
hasBitWidth(tmp2, 32);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation163;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5; Value *tmp6; Value *tmp7; Value *tmp8;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Add(
      m_c_Add(
        m_c_Add(
          m_c_Add(
            m_c_Mul(
              m_ZExt(
                m_Value(tmp0)),
              m_ZExt(
                m_Value(tmp1))),
            m_Value(tmp2)),
          m_c_Mul(
            m_ZExt(
              m_Value(tmp3)),
            m_ZExt(
              m_Value(tmp4)))),
        m_c_Mul(
          m_ZExt(
            m_Value(tmp5)),
          m_ZExt(
            m_Value(tmp6)))),
      m_c_Mul(
        m_ZExt(
          m_Value(tmp7)),
        m_ZExt(
          m_Value(tmp8))))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8) &&
hasBitWidth(tmp2, 32) &&
hasBitWidth(tmp3, 8) &&
hasBitWidth(tmp4, 8) &&
hasBitWidth(tmp5, 8) &&
hasBitWidth(tmp6, 8) &&
hasBitWidth(tmp7, 8) &&
hasBitWidth(tmp8, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation164;
  

class : public Operation {
  bool match(
    Value *V, SmallVectorImpl<Match> &Matches) const override {
    
    Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3; Value *tmp4; Value *tmp5; Value *tmp6; Value *tmp7; Value *tmp8;
    bool Matched = hasBitWidth(V, 32) &&
PatternMatch::match(V, m_c_Add(
      m_c_Add(
        m_c_Add(
          m_c_Add(
            m_c_Mul(
              m_SExt(
                m_Value(tmp0)),
              m_SExt(
                m_Value(tmp1))),
            m_Value(tmp2)),
          m_c_Mul(
            m_SExt(
              m_Value(tmp3)),
            m_SExt(
              m_Value(tmp4)))),
        m_c_Mul(
          m_SExt(
            m_Value(tmp5)),
          m_SExt(
            m_Value(tmp6)))),
      m_c_Mul(
        m_SExt(
          m_Value(tmp7)),
        m_SExt(
          m_Value(tmp8))))) &&
hasBitWidth(tmp0, 8) &&
hasBitWidth(tmp1, 8) &&
hasBitWidth(tmp2, 32) &&
hasBitWidth(tmp3, 8) &&
hasBitWidth(tmp4, 8) &&
hasBitWidth(tmp5, 8) &&
hasBitWidth(tmp6, 8) &&
hasBitWidth(tmp7, 8) &&
hasBitWidth(tmp8, 8);
    if (Matched)
      Matches.push_back({
      false,
      // matched live ins
      { tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8 },
      // the matched value itself
      V
      });
    return Matched;
    
  }
} Operation165;
  
std::vector<InstBinding> ArmInsts {
  InstBinding("vaddl_s8", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation0, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation0, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation0, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation0, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation0, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation0, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation0, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation0, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vaddl_s16", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation1, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation1, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation1, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation1, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vaddl_s32", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation2, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation2, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vaddl_u8", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation3, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation3, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation3, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation3, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation3, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation3, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation3, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation3, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vaddl_u16", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation4, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation4, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation4, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation4, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vaddl_u32", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation5, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation5, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vaddw_s8", {  }, InstSignature { { 128, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation6, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation6, { InputSlice { 1, 8, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation6, { InputSlice { 1, 16, 24 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation6, { InputSlice { 1, 24, 32 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation6, { InputSlice { 1, 32, 40 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation6, { InputSlice { 1, 40, 48 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation6, { InputSlice { 1, 48, 56 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation6, { InputSlice { 1, 56, 64 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vaddw_s16", {  }, InstSignature { { 128, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation7, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation7, { InputSlice { 1, 16, 32 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation7, { InputSlice { 1, 32, 48 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation7, { InputSlice { 1, 48, 64 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vaddw_s32", {  }, InstSignature { { 128, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation8, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 64 } }), 
    LegacyBoundOperation(&Operation8, { InputSlice { 1, 32, 64 }, InputSlice { 0, 64, 128 } }) }, 2),
  InstBinding("vaddw_u8", {  }, InstSignature { { 128, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation9, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation9, { InputSlice { 1, 8, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation9, { InputSlice { 1, 16, 24 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation9, { InputSlice { 1, 24, 32 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation9, { InputSlice { 1, 32, 40 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation9, { InputSlice { 1, 40, 48 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation9, { InputSlice { 1, 48, 56 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation9, { InputSlice { 1, 56, 64 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vaddw_u16", {  }, InstSignature { { 128, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation10, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation10, { InputSlice { 1, 16, 32 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation10, { InputSlice { 1, 32, 48 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation10, { InputSlice { 1, 48, 64 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vaddw_u32", {  }, InstSignature { { 128, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation11, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 64 } }), 
    LegacyBoundOperation(&Operation11, { InputSlice { 1, 32, 64 }, InputSlice { 0, 64, 128 } }) }, 2),
  InstBinding("vhadd_s8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vhadd_s16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation13, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation13, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation13, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation13, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vhadd_s32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation14, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation14, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vhadd_u8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vhadd_u16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation16, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation16, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation16, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation16, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vhadd_u32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation17, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation17, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vhaddq_s8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 72 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 72, 80 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 80, 88 }, InputSlice { 0, 80, 88 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 88, 96 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 104 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 104, 112 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 112, 120 }, InputSlice { 0, 112, 120 } }), 
    LegacyBoundOperation(&Operation12, { InputSlice { 1, 120, 128 }, InputSlice { 0, 120, 128 } }) }, 2),
  InstBinding("vhaddq_s16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation13, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation13, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation13, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation13, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation13, { InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation13, { InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation13, { InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation13, { InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vhaddq_s32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation14, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation14, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation14, { InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation14, { InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vhaddq_u8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 72 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 72, 80 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 80, 88 }, InputSlice { 0, 80, 88 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 88, 96 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 104 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 104, 112 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 112, 120 }, InputSlice { 0, 112, 120 } }), 
    LegacyBoundOperation(&Operation15, { InputSlice { 1, 120, 128 }, InputSlice { 0, 120, 128 } }) }, 2),
  InstBinding("vhaddq_u16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation16, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation16, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation16, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation16, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation16, { InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation16, { InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation16, { InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation16, { InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vhaddq_u32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation17, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation17, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation17, { InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation17, { InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vrhadd_s8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vrhadd_s16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation19, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation19, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation19, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation19, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vrhadd_s32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation20, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation20, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vrhadd_u8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vrhadd_u16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation22, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation22, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation22, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation22, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vrhadd_u32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation23, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation23, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vrhaddq_s8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 64, 72 }, InputSlice { 1, 64, 72 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 72, 80 }, InputSlice { 1, 72, 80 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 80, 88 }, InputSlice { 1, 80, 88 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 88, 96 }, InputSlice { 1, 88, 96 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 96, 104 }, InputSlice { 1, 96, 104 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 104, 112 }, InputSlice { 1, 104, 112 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 112, 120 }, InputSlice { 1, 112, 120 } }), 
    LegacyBoundOperation(&Operation18, { InputSlice { 0, 120, 128 }, InputSlice { 1, 120, 128 } }) }, 2),
  InstBinding("vrhaddq_s16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation19, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation19, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation19, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation19, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation19, { InputSlice { 0, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation19, { InputSlice { 0, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation19, { InputSlice { 0, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation19, { InputSlice { 0, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vrhaddq_s32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation20, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation20, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation20, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation20, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vrhaddq_u8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 64, 72 }, InputSlice { 1, 64, 72 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 72, 80 }, InputSlice { 1, 72, 80 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 80, 88 }, InputSlice { 1, 80, 88 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 88, 96 }, InputSlice { 1, 88, 96 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 96, 104 }, InputSlice { 1, 96, 104 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 104, 112 }, InputSlice { 1, 104, 112 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 112, 120 }, InputSlice { 1, 112, 120 } }), 
    LegacyBoundOperation(&Operation21, { InputSlice { 0, 120, 128 }, InputSlice { 1, 120, 128 } }) }, 2),
  InstBinding("vrhaddq_u16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation22, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation22, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation22, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation22, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation22, { InputSlice { 0, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation22, { InputSlice { 0, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation22, { InputSlice { 0, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation22, { InputSlice { 0, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vrhaddq_u32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation23, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation23, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation23, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation23, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vqadd_s8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vqadd_s16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation25, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation25, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation25, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation25, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vqadd_s32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation26, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation26, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vqadd_u8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vqadd_u16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation28, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation28, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation28, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation28, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vqadd_u32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation29, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation29, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vqaddq_s8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 64, 72 }, InputSlice { 1, 64, 72 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 72, 80 }, InputSlice { 1, 72, 80 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 80, 88 }, InputSlice { 1, 80, 88 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 88, 96 }, InputSlice { 1, 88, 96 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 96, 104 }, InputSlice { 1, 96, 104 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 104, 112 }, InputSlice { 1, 104, 112 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 112, 120 }, InputSlice { 1, 112, 120 } }), 
    LegacyBoundOperation(&Operation24, { InputSlice { 0, 120, 128 }, InputSlice { 1, 120, 128 } }) }, 2),
  InstBinding("vqaddq_s16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation25, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation25, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation25, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation25, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation25, { InputSlice { 0, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation25, { InputSlice { 0, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation25, { InputSlice { 0, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation25, { InputSlice { 0, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vqaddq_s32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation26, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation26, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation26, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation26, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vqaddq_u8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 72 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 72, 80 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 80, 88 }, InputSlice { 0, 80, 88 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 88, 96 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 104 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 104, 112 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 112, 120 }, InputSlice { 0, 112, 120 } }), 
    LegacyBoundOperation(&Operation27, { InputSlice { 1, 120, 128 }, InputSlice { 0, 120, 128 } }) }, 2),
  InstBinding("vqaddq_u16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation28, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation28, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation28, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation28, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation28, { InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation28, { InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation28, { InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation28, { InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vqaddq_u32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation29, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation29, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation29, { InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation29, { InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vaddhn_s16", {  }, InstSignature { { 128, 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation30, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation30, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation30, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation30, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation30, { InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation30, { InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation30, { InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation30, { InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vaddhn_s32", {  }, InstSignature { { 128, 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation31, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation31, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation31, { InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation31, { InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vaddhn_u16", {  }, InstSignature { { 128, 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation30, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation30, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation30, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation30, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation30, { InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation30, { InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation30, { InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation30, { InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vaddhn_u32", {  }, InstSignature { { 128, 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation31, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation31, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation31, { InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation31, { InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vraddhn_s16", {  }, InstSignature { { 128, 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation32, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation32, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation32, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation32, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation32, { InputSlice { 0, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation32, { InputSlice { 0, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation32, { InputSlice { 0, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation32, { InputSlice { 0, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vraddhn_s32", {  }, InstSignature { { 128, 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation33, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation33, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation33, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation33, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vraddhn_u16", {  }, InstSignature { { 128, 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation32, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation32, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation32, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation32, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation32, { InputSlice { 0, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation32, { InputSlice { 0, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation32, { InputSlice { 0, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation32, { InputSlice { 0, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vraddhn_u32", {  }, InstSignature { { 128, 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation33, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation33, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation33, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation33, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vmul_s8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vmul_s16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vmul_s32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation36, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation36, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vmul_f32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation37, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation37, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vmul_u8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vmul_u16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vmul_u32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation36, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation36, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vmulq_s8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 72 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 72, 80 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 80, 88 }, InputSlice { 0, 80, 88 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 88, 96 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 104 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 104, 112 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 112, 120 }, InputSlice { 0, 112, 120 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 120, 128 }, InputSlice { 0, 120, 128 } }) }, 2),
  InstBinding("vmulq_s16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vmulq_s32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation36, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation36, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation36, { InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation36, { InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vmulq_f32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation37, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation37, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation37, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation37, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vmulq_u8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 72 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 72, 80 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 80, 88 }, InputSlice { 0, 80, 88 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 88, 96 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 104 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 104, 112 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 112, 120 }, InputSlice { 0, 112, 120 } }), 
    LegacyBoundOperation(&Operation34, { InputSlice { 1, 120, 128 }, InputSlice { 0, 120, 128 } }) }, 2),
  InstBinding("vmulq_u16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation35, { InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vmulq_u32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation36, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation36, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation36, { InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation36, { InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vmull_s8", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation38, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation38, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation38, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation38, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation38, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation38, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation38, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation38, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vmull_s16", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation39, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation39, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation39, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation39, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vmull_s32", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation40, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation40, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vmull_u8", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation41, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation41, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation41, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation41, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation41, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation41, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation41, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation41, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vmull_u16", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation42, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation42, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation42, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation42, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vmull_u32", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation43, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation43, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vmla_s8", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vmla_s16", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vmla_s32", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation46, { InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation46, { InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vmla_f32", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation47, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 }, InputSlice { 2, 0, 32 } }), 
    LegacyBoundOperation(&Operation47, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 }, InputSlice { 2, 32, 64 } }) }, 2),
  InstBinding("vmla_u8", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vmla_u16", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vmla_u32", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation46, { InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation46, { InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vmlaq_s8", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 64, 72 }, InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 72 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 72, 80 }, InputSlice { 1, 72, 80 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 80, 88 }, InputSlice { 1, 80, 88 }, InputSlice { 0, 80, 88 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 88, 96 }, InputSlice { 1, 88, 96 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 96, 104 }, InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 104 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 104, 112 }, InputSlice { 1, 104, 112 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 112, 120 }, InputSlice { 1, 112, 120 }, InputSlice { 0, 112, 120 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 120, 128 }, InputSlice { 1, 120, 128 }, InputSlice { 0, 120, 128 } }) }, 2),
  InstBinding("vmlaq_s16", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 64, 80 }, InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 80, 96 }, InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 96, 112 }, InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 112, 128 }, InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vmlaq_s32", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation46, { InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation46, { InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation46, { InputSlice { 2, 64, 96 }, InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation46, { InputSlice { 2, 96, 128 }, InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vmlaq_f32", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation47, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 }, InputSlice { 2, 0, 32 } }), 
    LegacyBoundOperation(&Operation47, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 }, InputSlice { 2, 32, 64 } }), 
    LegacyBoundOperation(&Operation47, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 }, InputSlice { 2, 64, 96 } }), 
    LegacyBoundOperation(&Operation47, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 }, InputSlice { 2, 96, 128 } }) }, 2),
  InstBinding("vmlaq_u8", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 64, 72 }, InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 72 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 72, 80 }, InputSlice { 1, 72, 80 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 80, 88 }, InputSlice { 1, 80, 88 }, InputSlice { 0, 80, 88 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 88, 96 }, InputSlice { 1, 88, 96 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 96, 104 }, InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 104 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 104, 112 }, InputSlice { 1, 104, 112 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 112, 120 }, InputSlice { 1, 112, 120 }, InputSlice { 0, 112, 120 } }), 
    LegacyBoundOperation(&Operation44, { InputSlice { 2, 120, 128 }, InputSlice { 1, 120, 128 }, InputSlice { 0, 120, 128 } }) }, 2),
  InstBinding("vmlaq_u16", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 64, 80 }, InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 80, 96 }, InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 96, 112 }, InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation45, { InputSlice { 2, 112, 128 }, InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vmlaq_u32", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation46, { InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation46, { InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation46, { InputSlice { 2, 64, 96 }, InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation46, { InputSlice { 2, 96, 128 }, InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vmlal_s8", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation48, { InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation48, { InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation48, { InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation48, { InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation48, { InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation48, { InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation48, { InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation48, { InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vmlal_s16", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation49, { InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation49, { InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation49, { InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation49, { InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vmlal_s32", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation50, { InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 64 } }), 
    LegacyBoundOperation(&Operation50, { InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 }, InputSlice { 0, 64, 128 } }) }, 2),
  InstBinding("vmlal_u8", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation51, { InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation51, { InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation51, { InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation51, { InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation51, { InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation51, { InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation51, { InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation51, { InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vmlal_u16", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation52, { InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation52, { InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation52, { InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation52, { InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vmlal_u32", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation53, { InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 64 } }), 
    LegacyBoundOperation(&Operation53, { InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 }, InputSlice { 0, 64, 128 } }) }, 2),
  InstBinding("vmls_s8", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 0, 8 }, InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 8, 16 }, InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 16, 24 }, InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 24, 32 }, InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 32, 40 }, InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 40, 48 }, InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 48, 56 }, InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 56, 64 }, InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vmls_s16", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 0, 16 }, InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 16, 32 }, InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 32, 48 }, InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 48, 64 }, InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vmls_s32", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation56, { InputSlice { 0, 0, 32 }, InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation56, { InputSlice { 0, 32, 64 }, InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vmls_f32", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation57, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 }, InputSlice { 2, 0, 32 } }), 
    LegacyBoundOperation(&Operation57, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 }, InputSlice { 2, 32, 64 } }) }, 2),
  InstBinding("vmls_u8", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 0, 8 }, InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 8, 16 }, InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 16, 24 }, InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 24, 32 }, InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 32, 40 }, InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 40, 48 }, InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 48, 56 }, InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 56, 64 }, InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vmls_u16", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 0, 16 }, InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 16, 32 }, InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 32, 48 }, InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 48, 64 }, InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vmls_u32", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation56, { InputSlice { 0, 0, 32 }, InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation56, { InputSlice { 0, 32, 64 }, InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vmlsq_s8", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 0, 8 }, InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 8, 16 }, InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 16, 24 }, InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 24, 32 }, InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 32, 40 }, InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 40, 48 }, InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 48, 56 }, InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 56, 64 }, InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 64, 72 }, InputSlice { 2, 64, 72 }, InputSlice { 1, 64, 72 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 72, 80 }, InputSlice { 2, 72, 80 }, InputSlice { 1, 72, 80 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 80, 88 }, InputSlice { 2, 80, 88 }, InputSlice { 1, 80, 88 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 88, 96 }, InputSlice { 2, 88, 96 }, InputSlice { 1, 88, 96 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 96, 104 }, InputSlice { 2, 96, 104 }, InputSlice { 1, 96, 104 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 104, 112 }, InputSlice { 2, 104, 112 }, InputSlice { 1, 104, 112 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 112, 120 }, InputSlice { 2, 112, 120 }, InputSlice { 1, 112, 120 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 120, 128 }, InputSlice { 2, 120, 128 }, InputSlice { 1, 120, 128 } }) }, 2),
  InstBinding("vmlsq_s16", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 0, 16 }, InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 16, 32 }, InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 32, 48 }, InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 48, 64 }, InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 64, 80 }, InputSlice { 2, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 80, 96 }, InputSlice { 2, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 96, 112 }, InputSlice { 2, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 112, 128 }, InputSlice { 2, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vmlsq_s32", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation56, { InputSlice { 0, 0, 32 }, InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation56, { InputSlice { 0, 32, 64 }, InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation56, { InputSlice { 0, 64, 96 }, InputSlice { 2, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation56, { InputSlice { 0, 96, 128 }, InputSlice { 2, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vmlsq_f32", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation57, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 }, InputSlice { 2, 0, 32 } }), 
    LegacyBoundOperation(&Operation57, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 }, InputSlice { 2, 32, 64 } }), 
    LegacyBoundOperation(&Operation57, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 }, InputSlice { 2, 64, 96 } }), 
    LegacyBoundOperation(&Operation57, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 }, InputSlice { 2, 96, 128 } }) }, 2),
  InstBinding("vmlsq_u8", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 0, 8 }, InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 8, 16 }, InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 16, 24 }, InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 24, 32 }, InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 32, 40 }, InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 40, 48 }, InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 48, 56 }, InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 56, 64 }, InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 64, 72 }, InputSlice { 2, 64, 72 }, InputSlice { 1, 64, 72 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 72, 80 }, InputSlice { 2, 72, 80 }, InputSlice { 1, 72, 80 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 80, 88 }, InputSlice { 2, 80, 88 }, InputSlice { 1, 80, 88 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 88, 96 }, InputSlice { 2, 88, 96 }, InputSlice { 1, 88, 96 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 96, 104 }, InputSlice { 2, 96, 104 }, InputSlice { 1, 96, 104 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 104, 112 }, InputSlice { 2, 104, 112 }, InputSlice { 1, 104, 112 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 112, 120 }, InputSlice { 2, 112, 120 }, InputSlice { 1, 112, 120 } }), 
    LegacyBoundOperation(&Operation54, { InputSlice { 0, 120, 128 }, InputSlice { 2, 120, 128 }, InputSlice { 1, 120, 128 } }) }, 2),
  InstBinding("vmlsq_u16", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 0, 16 }, InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 16, 32 }, InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 32, 48 }, InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 48, 64 }, InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 64, 80 }, InputSlice { 2, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 80, 96 }, InputSlice { 2, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 96, 112 }, InputSlice { 2, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation55, { InputSlice { 0, 112, 128 }, InputSlice { 2, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vmlsq_u32", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation56, { InputSlice { 0, 0, 32 }, InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation56, { InputSlice { 0, 32, 64 }, InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation56, { InputSlice { 0, 64, 96 }, InputSlice { 2, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation56, { InputSlice { 0, 96, 128 }, InputSlice { 2, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vmlsl_s8", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation58, { InputSlice { 0, 0, 16 }, InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation58, { InputSlice { 0, 16, 32 }, InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation58, { InputSlice { 0, 32, 48 }, InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation58, { InputSlice { 0, 48, 64 }, InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation58, { InputSlice { 0, 64, 80 }, InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation58, { InputSlice { 0, 80, 96 }, InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation58, { InputSlice { 0, 96, 112 }, InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation58, { InputSlice { 0, 112, 128 }, InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vmlsl_s16", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation59, { InputSlice { 0, 0, 32 }, InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation59, { InputSlice { 0, 32, 64 }, InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation59, { InputSlice { 0, 64, 96 }, InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation59, { InputSlice { 0, 96, 128 }, InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vmlsl_s32", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation60, { InputSlice { 0, 0, 64 }, InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation60, { InputSlice { 0, 64, 128 }, InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vmlsl_u8", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation61, { InputSlice { 0, 0, 16 }, InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation61, { InputSlice { 0, 16, 32 }, InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation61, { InputSlice { 0, 32, 48 }, InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation61, { InputSlice { 0, 48, 64 }, InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation61, { InputSlice { 0, 64, 80 }, InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation61, { InputSlice { 0, 80, 96 }, InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation61, { InputSlice { 0, 96, 112 }, InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation61, { InputSlice { 0, 112, 128 }, InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vmlsl_u16", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation62, { InputSlice { 0, 0, 32 }, InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation62, { InputSlice { 0, 32, 64 }, InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation62, { InputSlice { 0, 64, 96 }, InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation62, { InputSlice { 0, 96, 128 }, InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vmlsl_u32", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation63, { InputSlice { 0, 0, 64 }, InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation63, { InputSlice { 0, 64, 128 }, InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vqdmulh_s16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation64, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation64, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation64, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation64, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vqdmulh_s32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation65, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation65, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vqdmulhq_s16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation64, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation64, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation64, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation64, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation64, { InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation64, { InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation64, { InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation64, { InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vqdmulhq_s32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation65, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation65, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation65, { InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation65, { InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vqrdmulh_s16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation66, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation66, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation66, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation66, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vqrdmulh_s32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation67, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation67, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vqrdmulhq_s16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation66, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation66, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation66, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation66, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation66, { InputSlice { 0, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation66, { InputSlice { 0, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation66, { InputSlice { 0, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation66, { InputSlice { 0, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vqrdmulhq_s32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation67, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation67, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation67, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation67, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vsub_s8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vsub_s16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vsub_s32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation70, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation70, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vsub_s64", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation71, { InputSlice { 0, 0, 64 }, InputSlice { 1, 0, 64 } }) }, 2),
  InstBinding("vsub_f32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation72, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation72, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vsub_u8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vsub_u16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vsub_u32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation70, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation70, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vsub_u64", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation71, { InputSlice { 0, 0, 64 }, InputSlice { 1, 0, 64 } }) }, 2),
  InstBinding("vsubq_s8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 64, 72 }, InputSlice { 1, 64, 72 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 72, 80 }, InputSlice { 1, 72, 80 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 80, 88 }, InputSlice { 1, 80, 88 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 88, 96 }, InputSlice { 1, 88, 96 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 96, 104 }, InputSlice { 1, 96, 104 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 104, 112 }, InputSlice { 1, 104, 112 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 112, 120 }, InputSlice { 1, 112, 120 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 120, 128 }, InputSlice { 1, 120, 128 } }) }, 2),
  InstBinding("vsubq_s16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vsubq_s32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation70, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation70, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation70, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation70, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vsubq_s64", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation71, { InputSlice { 0, 0, 64 }, InputSlice { 1, 0, 64 } }), 
    LegacyBoundOperation(&Operation71, { InputSlice { 0, 64, 128 }, InputSlice { 1, 64, 128 } }) }, 2),
  InstBinding("vsubq_f32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation72, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation72, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation72, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation72, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vsubq_u8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 64, 72 }, InputSlice { 1, 64, 72 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 72, 80 }, InputSlice { 1, 72, 80 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 80, 88 }, InputSlice { 1, 80, 88 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 88, 96 }, InputSlice { 1, 88, 96 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 96, 104 }, InputSlice { 1, 96, 104 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 104, 112 }, InputSlice { 1, 104, 112 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 112, 120 }, InputSlice { 1, 112, 120 } }), 
    LegacyBoundOperation(&Operation68, { InputSlice { 0, 120, 128 }, InputSlice { 1, 120, 128 } }) }, 2),
  InstBinding("vsubq_u16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation69, { InputSlice { 0, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vsubq_u32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation70, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation70, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation70, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation70, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vsubq_u64", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation71, { InputSlice { 0, 0, 64 }, InputSlice { 1, 0, 64 } }), 
    LegacyBoundOperation(&Operation71, { InputSlice { 0, 64, 128 }, InputSlice { 1, 64, 128 } }) }, 2),
  InstBinding("vsubl_s8", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation73, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation73, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation73, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation73, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation73, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation73, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation73, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation73, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vsubl_s16", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation74, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation74, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation74, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation74, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vsubl_s32", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation75, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation75, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vsubl_u8", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation76, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation76, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation76, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation76, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation76, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation76, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation76, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation76, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vsubl_u16", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation77, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation77, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation77, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation77, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vsubl_u32", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation78, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation78, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vsubw_s8", {  }, InstSignature { { 128, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation79, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation79, { InputSlice { 0, 16, 32 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation79, { InputSlice { 0, 32, 48 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation79, { InputSlice { 0, 48, 64 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation79, { InputSlice { 0, 64, 80 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation79, { InputSlice { 0, 80, 96 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation79, { InputSlice { 0, 96, 112 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation79, { InputSlice { 0, 112, 128 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vsubw_s16", {  }, InstSignature { { 128, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation80, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation80, { InputSlice { 0, 32, 64 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation80, { InputSlice { 0, 64, 96 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation80, { InputSlice { 0, 96, 128 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vsubw_s32", {  }, InstSignature { { 128, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation81, { InputSlice { 0, 0, 64 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation81, { InputSlice { 0, 64, 128 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vsubw_u8", {  }, InstSignature { { 128, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation82, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation82, { InputSlice { 0, 16, 32 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation82, { InputSlice { 0, 32, 48 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation82, { InputSlice { 0, 48, 64 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation82, { InputSlice { 0, 64, 80 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation82, { InputSlice { 0, 80, 96 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation82, { InputSlice { 0, 96, 112 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation82, { InputSlice { 0, 112, 128 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vsubw_u16", {  }, InstSignature { { 128, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation83, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation83, { InputSlice { 0, 32, 64 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation83, { InputSlice { 0, 64, 96 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation83, { InputSlice { 0, 96, 128 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vsubw_u32", {  }, InstSignature { { 128, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation84, { InputSlice { 0, 0, 64 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation84, { InputSlice { 0, 64, 128 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vqsub_s8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vqsub_s16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation86, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation86, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation86, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation86, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vqsub_s32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation87, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation87, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vqsub_u8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vqsub_u16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation89, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation89, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation89, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation89, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vqsub_u32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation90, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation90, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vqsubq_s8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 64, 72 }, InputSlice { 1, 64, 72 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 72, 80 }, InputSlice { 1, 72, 80 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 80, 88 }, InputSlice { 1, 80, 88 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 88, 96 }, InputSlice { 1, 88, 96 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 96, 104 }, InputSlice { 1, 96, 104 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 104, 112 }, InputSlice { 1, 104, 112 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 112, 120 }, InputSlice { 1, 112, 120 } }), 
    LegacyBoundOperation(&Operation85, { InputSlice { 0, 120, 128 }, InputSlice { 1, 120, 128 } }) }, 2),
  InstBinding("vqsubq_s16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation86, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation86, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation86, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation86, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation86, { InputSlice { 0, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation86, { InputSlice { 0, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation86, { InputSlice { 0, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation86, { InputSlice { 0, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vqsubq_s32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation87, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation87, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation87, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation87, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vqsubq_u8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 64, 72 }, InputSlice { 1, 64, 72 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 72, 80 }, InputSlice { 1, 72, 80 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 80, 88 }, InputSlice { 1, 80, 88 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 88, 96 }, InputSlice { 1, 88, 96 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 96, 104 }, InputSlice { 1, 96, 104 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 104, 112 }, InputSlice { 1, 104, 112 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 112, 120 }, InputSlice { 1, 112, 120 } }), 
    LegacyBoundOperation(&Operation88, { InputSlice { 0, 120, 128 }, InputSlice { 1, 120, 128 } }) }, 2),
  InstBinding("vqsubq_u16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation89, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation89, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation89, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation89, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation89, { InputSlice { 0, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation89, { InputSlice { 0, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation89, { InputSlice { 0, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation89, { InputSlice { 0, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vqsubq_u32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation90, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation90, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation90, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation90, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vhsub_s8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vhsub_s16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation92, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation92, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation92, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation92, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vhsub_s32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation93, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation93, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vhsub_u8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vhsub_u16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation95, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation95, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation95, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation95, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vhsub_u32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation96, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation96, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vhsubq_s8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 64, 72 }, InputSlice { 1, 64, 72 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 72, 80 }, InputSlice { 1, 72, 80 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 80, 88 }, InputSlice { 1, 80, 88 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 88, 96 }, InputSlice { 1, 88, 96 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 96, 104 }, InputSlice { 1, 96, 104 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 104, 112 }, InputSlice { 1, 104, 112 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 112, 120 }, InputSlice { 1, 112, 120 } }), 
    LegacyBoundOperation(&Operation91, { InputSlice { 0, 120, 128 }, InputSlice { 1, 120, 128 } }) }, 2),
  InstBinding("vhsubq_s16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation92, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation92, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation92, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation92, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation92, { InputSlice { 0, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation92, { InputSlice { 0, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation92, { InputSlice { 0, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation92, { InputSlice { 0, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vhsubq_s32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation93, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation93, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation93, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation93, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vhsubq_u8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 0, 8 }, InputSlice { 1, 0, 8 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 8, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 16, 24 }, InputSlice { 1, 16, 24 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 32, 40 }, InputSlice { 1, 32, 40 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 40, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 48, 56 }, InputSlice { 1, 48, 56 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 56, 64 }, InputSlice { 1, 56, 64 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 64, 72 }, InputSlice { 1, 64, 72 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 72, 80 }, InputSlice { 1, 72, 80 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 80, 88 }, InputSlice { 1, 80, 88 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 88, 96 }, InputSlice { 1, 88, 96 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 96, 104 }, InputSlice { 1, 96, 104 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 104, 112 }, InputSlice { 1, 104, 112 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 112, 120 }, InputSlice { 1, 112, 120 } }), 
    LegacyBoundOperation(&Operation94, { InputSlice { 0, 120, 128 }, InputSlice { 1, 120, 128 } }) }, 2),
  InstBinding("vhsubq_u16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation95, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation95, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation95, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation95, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation95, { InputSlice { 0, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation95, { InputSlice { 0, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation95, { InputSlice { 0, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation95, { InputSlice { 0, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vhsubq_u32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation96, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation96, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation96, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation96, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vsubhn_s16", {  }, InstSignature { { 128, 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation97, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation97, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation97, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation97, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation97, { InputSlice { 0, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation97, { InputSlice { 0, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation97, { InputSlice { 0, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation97, { InputSlice { 0, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vsubhn_s32", {  }, InstSignature { { 128, 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation98, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation98, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation98, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation98, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vsubhn_u16", {  }, InstSignature { { 128, 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation97, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation97, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation97, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation97, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation97, { InputSlice { 0, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation97, { InputSlice { 0, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation97, { InputSlice { 0, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation97, { InputSlice { 0, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vsubhn_u32", {  }, InstSignature { { 128, 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation98, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation98, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation98, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation98, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vrsubhn_s16", {  }, InstSignature { { 128, 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation99, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation99, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation99, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation99, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation99, { InputSlice { 0, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation99, { InputSlice { 0, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation99, { InputSlice { 0, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation99, { InputSlice { 0, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vrsubhn_s32", {  }, InstSignature { { 128, 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation100, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation100, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation100, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation100, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vrsubhn_u16", {  }, InstSignature { { 128, 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation99, { InputSlice { 0, 0, 16 }, InputSlice { 1, 0, 16 } }), 
    LegacyBoundOperation(&Operation99, { InputSlice { 0, 16, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation99, { InputSlice { 0, 32, 48 }, InputSlice { 1, 32, 48 } }), 
    LegacyBoundOperation(&Operation99, { InputSlice { 0, 48, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation99, { InputSlice { 0, 64, 80 }, InputSlice { 1, 64, 80 } }), 
    LegacyBoundOperation(&Operation99, { InputSlice { 0, 80, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation99, { InputSlice { 0, 96, 112 }, InputSlice { 1, 96, 112 } }), 
    LegacyBoundOperation(&Operation99, { InputSlice { 0, 112, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vrsubhn_u32", {  }, InstSignature { { 128, 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation100, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation100, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation100, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation100, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vabd_s8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vabd_s16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation102, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation102, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation102, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation102, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vabd_s32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation103, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation103, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vabd_u8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vabd_u16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation105, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation105, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation105, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation105, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vabd_u32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation106, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation106, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vabd_f32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation107, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation107, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vabdq_s8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 72 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 72, 80 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 80, 88 }, InputSlice { 0, 80, 88 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 88, 96 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 104 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 104, 112 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 112, 120 }, InputSlice { 0, 112, 120 } }), 
    LegacyBoundOperation(&Operation101, { InputSlice { 1, 120, 128 }, InputSlice { 0, 120, 128 } }) }, 2),
  InstBinding("vabdq_s16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation102, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation102, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation102, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation102, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation102, { InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation102, { InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation102, { InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation102, { InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vabdq_s32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation103, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation103, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation103, { InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation103, { InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vabdq_u8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 72 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 72, 80 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 80, 88 }, InputSlice { 0, 80, 88 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 88, 96 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 104 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 104, 112 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 112, 120 }, InputSlice { 0, 112, 120 } }), 
    LegacyBoundOperation(&Operation104, { InputSlice { 1, 120, 128 }, InputSlice { 0, 120, 128 } }) }, 2),
  InstBinding("vabdq_u16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation105, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation105, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation105, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation105, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation105, { InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation105, { InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation105, { InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation105, { InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vabdq_u32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation106, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation106, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation106, { InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation106, { InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vabdq_f32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation107, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation107, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation107, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation107, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vabdl_s8", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation108, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation108, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation108, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation108, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation108, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation108, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation108, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation108, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vabdl_s16", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation109, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation109, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation109, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation109, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vabdl_s32", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation110, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation110, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vabdl_u8", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation111, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation111, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation111, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation111, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation111, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation111, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation111, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation111, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vabdl_u16", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation112, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation112, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation112, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation112, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vabdl_u32", {  }, InstSignature { { 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation113, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation113, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vaba_s8", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vaba_s16", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation115, { InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation115, { InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation115, { InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation115, { InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vaba_s32", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation116, { InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation116, { InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vaba_u8", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vaba_u16", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation118, { InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation118, { InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation118, { InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation118, { InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vaba_u32", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation119, { InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation119, { InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vabaq_s8", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 64, 72 }, InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 72 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 72, 80 }, InputSlice { 1, 72, 80 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 80, 88 }, InputSlice { 1, 80, 88 }, InputSlice { 0, 80, 88 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 88, 96 }, InputSlice { 1, 88, 96 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 96, 104 }, InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 104 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 104, 112 }, InputSlice { 1, 104, 112 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 112, 120 }, InputSlice { 1, 112, 120 }, InputSlice { 0, 112, 120 } }), 
    LegacyBoundOperation(&Operation114, { InputSlice { 2, 120, 128 }, InputSlice { 1, 120, 128 }, InputSlice { 0, 120, 128 } }) }, 2),
  InstBinding("vabaq_s16", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation115, { InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation115, { InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation115, { InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation115, { InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation115, { InputSlice { 2, 64, 80 }, InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation115, { InputSlice { 2, 80, 96 }, InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation115, { InputSlice { 2, 96, 112 }, InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation115, { InputSlice { 2, 112, 128 }, InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vabaq_s32", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation116, { InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation116, { InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation116, { InputSlice { 2, 64, 96 }, InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation116, { InputSlice { 2, 96, 128 }, InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vabaq_u8", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 64, 72 }, InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 72 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 72, 80 }, InputSlice { 1, 72, 80 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 80, 88 }, InputSlice { 1, 80, 88 }, InputSlice { 0, 80, 88 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 88, 96 }, InputSlice { 1, 88, 96 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 96, 104 }, InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 104 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 104, 112 }, InputSlice { 1, 104, 112 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 112, 120 }, InputSlice { 1, 112, 120 }, InputSlice { 0, 112, 120 } }), 
    LegacyBoundOperation(&Operation117, { InputSlice { 2, 120, 128 }, InputSlice { 1, 120, 128 }, InputSlice { 0, 120, 128 } }) }, 2),
  InstBinding("vabaq_u16", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation118, { InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation118, { InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation118, { InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation118, { InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation118, { InputSlice { 2, 64, 80 }, InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation118, { InputSlice { 2, 80, 96 }, InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation118, { InputSlice { 2, 96, 112 }, InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation118, { InputSlice { 2, 112, 128 }, InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vabaq_u32", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation119, { InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation119, { InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation119, { InputSlice { 2, 64, 96 }, InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation119, { InputSlice { 2, 96, 128 }, InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vabal_s8", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation120, { InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation120, { InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation120, { InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation120, { InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation120, { InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation120, { InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation120, { InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation120, { InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vabal_s16", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation121, { InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation121, { InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation121, { InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation121, { InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vabal_s32", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation122, { InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 64 } }), 
    LegacyBoundOperation(&Operation122, { InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 }, InputSlice { 0, 64, 128 } }) }, 2),
  InstBinding("vabal_u8", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation123, { InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation123, { InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation123, { InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation123, { InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation123, { InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation123, { InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation123, { InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation123, { InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vabal_u16", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation124, { InputSlice { 2, 0, 16 }, InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation124, { InputSlice { 2, 16, 32 }, InputSlice { 1, 16, 32 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation124, { InputSlice { 2, 32, 48 }, InputSlice { 1, 32, 48 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation124, { InputSlice { 2, 48, 64 }, InputSlice { 1, 48, 64 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vabal_u32", {  }, InstSignature { { 128, 64, 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation125, { InputSlice { 2, 0, 32 }, InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 64 } }), 
    LegacyBoundOperation(&Operation125, { InputSlice { 2, 32, 64 }, InputSlice { 1, 32, 64 }, InputSlice { 0, 64, 128 } }) }, 2),
  InstBinding("vmax_s8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vmax_s16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation127, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation127, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation127, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation127, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vmax_s32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation128, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation128, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vmax_u8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vmax_u16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation130, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation130, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation130, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation130, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vmax_u32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation131, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation131, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vmax_f32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation132, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation132, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vmaxq_s8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 72 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 72, 80 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 80, 88 }, InputSlice { 0, 80, 88 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 88, 96 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 104 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 104, 112 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 112, 120 }, InputSlice { 0, 112, 120 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 120, 128 }, InputSlice { 0, 120, 128 } }) }, 2),
  InstBinding("vmaxq_s16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation127, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation127, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation127, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation127, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation127, { InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation127, { InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation127, { InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation127, { InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vmaxq_s32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation128, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation128, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation128, { InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation128, { InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vmaxq_u8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 72 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 72, 80 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 80, 88 }, InputSlice { 0, 80, 88 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 88, 96 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 104 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 104, 112 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 112, 120 }, InputSlice { 0, 112, 120 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 120, 128 }, InputSlice { 0, 120, 128 } }) }, 2),
  InstBinding("vmaxq_u16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation130, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation130, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation130, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation130, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation130, { InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation130, { InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation130, { InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation130, { InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vmaxq_u32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation131, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation131, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation131, { InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation131, { InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vmaxq_f32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation132, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation132, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation132, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation132, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vmin_s8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vmin_s16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation134, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation134, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation134, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation134, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vmin_s32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation135, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation135, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vmin_u8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vmin_u16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation137, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation137, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation137, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation137, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vmin_u32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation138, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation138, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vmin_f32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation139, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation139, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vminq_s8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 72 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 72, 80 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 80, 88 }, InputSlice { 0, 80, 88 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 88, 96 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 104 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 104, 112 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 112, 120 }, InputSlice { 0, 112, 120 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 120, 128 }, InputSlice { 0, 120, 128 } }) }, 2),
  InstBinding("vminq_s16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation134, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation134, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation134, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation134, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation134, { InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation134, { InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation134, { InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation134, { InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vminq_s32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation135, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation135, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation135, { InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation135, { InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vminq_u8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 8, 16 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 24, 32 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 40, 48 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 56, 64 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 72 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 72, 80 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 80, 88 }, InputSlice { 0, 80, 88 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 88, 96 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 104 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 104, 112 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 112, 120 }, InputSlice { 0, 112, 120 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 120, 128 }, InputSlice { 0, 120, 128 } }) }, 2),
  InstBinding("vminq_u16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation137, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation137, { InputSlice { 1, 16, 32 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation137, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation137, { InputSlice { 1, 48, 64 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation137, { InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation137, { InputSlice { 1, 80, 96 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation137, { InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation137, { InputSlice { 1, 112, 128 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vminq_u32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation138, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation138, { InputSlice { 1, 32, 64 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation138, { InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation138, { InputSlice { 1, 96, 128 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vminq_f32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation139, { InputSlice { 0, 0, 32 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation139, { InputSlice { 0, 32, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation139, { InputSlice { 0, 64, 96 }, InputSlice { 1, 64, 96 } }), 
    LegacyBoundOperation(&Operation139, { InputSlice { 0, 96, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vqmovn_s16", {  }, InstSignature { { 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation140, { InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation140, { InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation140, { InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation140, { InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation140, { InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation140, { InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation140, { InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation140, { InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vqmovn_s32", {  }, InstSignature { { 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation141, { InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation141, { InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation141, { InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation141, { InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vqmovn_s64", {  }, InstSignature { { 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation142, { InputSlice { 0, 0, 64 } }), 
    LegacyBoundOperation(&Operation142, { InputSlice { 0, 64, 128 } }) }, 2),
  InstBinding("vqmovn_u16", {  }, InstSignature { { 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation143, { InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation143, { InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation143, { InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation143, { InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation143, { InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation143, { InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation143, { InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation143, { InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vqmovn_u32", {  }, InstSignature { { 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation144, { InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation144, { InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation144, { InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation144, { InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vqmovn_u64", {  }, InstSignature { { 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation145, { InputSlice { 0, 0, 64 } }), 
    LegacyBoundOperation(&Operation145, { InputSlice { 0, 64, 128 } }) }, 2),
  InstBinding("vqmovun_s16", {  }, InstSignature { { 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation143, { InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation143, { InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation143, { InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation143, { InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation143, { InputSlice { 0, 64, 80 } }), 
    LegacyBoundOperation(&Operation143, { InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation143, { InputSlice { 0, 96, 112 } }), 
    LegacyBoundOperation(&Operation143, { InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vqmovun_s32", {  }, InstSignature { { 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation144, { InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation144, { InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation144, { InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation144, { InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vqmovun_s64", {  }, InstSignature { { 128 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation145, { InputSlice { 0, 0, 64 } }), 
    LegacyBoundOperation(&Operation145, { InputSlice { 0, 64, 128 } }) }, 2),
  InstBinding("vmovl_s8", {  }, InstSignature { { 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation146, { InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation146, { InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation146, { InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation146, { InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation146, { InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation146, { InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation146, { InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation146, { InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vmovl_s16", {  }, InstSignature { { 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation147, { InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation147, { InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation147, { InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation147, { InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vmovl_s32", {  }, InstSignature { { 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation148, { InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation148, { InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vmovl_u8", {  }, InstSignature { { 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation149, { InputSlice { 0, 0, 8 } }), 
    LegacyBoundOperation(&Operation149, { InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation149, { InputSlice { 0, 16, 24 } }), 
    LegacyBoundOperation(&Operation149, { InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation149, { InputSlice { 0, 32, 40 } }), 
    LegacyBoundOperation(&Operation149, { InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation149, { InputSlice { 0, 48, 56 } }), 
    LegacyBoundOperation(&Operation149, { InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vmovl_u16", {  }, InstSignature { { 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation150, { InputSlice { 0, 0, 16 } }), 
    LegacyBoundOperation(&Operation150, { InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation150, { InputSlice { 0, 32, 48 } }), 
    LegacyBoundOperation(&Operation150, { InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vmovl_u32", {  }, InstSignature { { 64 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation151, { InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation151, { InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vpadd_s8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 0, 8 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 16, 24 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 32, 40 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 48, 56 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 0, 8 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 16, 24 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 32, 40 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 48, 56 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vpadd_s16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation153, { InputSlice { 0, 0, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 0, 32, 48 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 1, 0, 16 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 1, 32, 48 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vpadd_s32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation154, { InputSlice { 0, 0, 32 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation154, { InputSlice { 1, 0, 32 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vpadd_u8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 0, 8 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 16, 24 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 32, 40 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 48, 56 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 0, 8 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 16, 24 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 32, 40 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 48, 56 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vpadd_u16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation153, { InputSlice { 0, 0, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 0, 32, 48 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 1, 0, 16 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 1, 32, 48 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vpadd_u32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation154, { InputSlice { 0, 0, 32 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation154, { InputSlice { 1, 0, 32 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vpadd_f32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation155, { InputSlice { 0, 32, 64 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation155, { InputSlice { 1, 32, 64 }, InputSlice { 1, 0, 32 } }) }, 2),
  InstBinding("vpaddl_s8", {  }, InstSignature { { 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation0, { InputSlice { 0, 0, 8 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation0, { InputSlice { 0, 16, 24 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation0, { InputSlice { 0, 32, 40 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation0, { InputSlice { 0, 48, 56 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vpaddl_s16", {  }, InstSignature { { 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation1, { InputSlice { 0, 0, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation1, { InputSlice { 0, 32, 48 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vpaddl_s32", {  }, InstSignature { { 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation2, { InputSlice { 0, 0, 32 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vpaddl_u8", {  }, InstSignature { { 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation3, { InputSlice { 0, 0, 8 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation3, { InputSlice { 0, 16, 24 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation3, { InputSlice { 0, 32, 40 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation3, { InputSlice { 0, 48, 56 }, InputSlice { 0, 56, 64 } }) }, 2),
  InstBinding("vpaddl_u16", {  }, InstSignature { { 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation4, { InputSlice { 0, 0, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation4, { InputSlice { 0, 32, 48 }, InputSlice { 0, 48, 64 } }) }, 2),
  InstBinding("vpaddl_u32", {  }, InstSignature { { 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation5, { InputSlice { 0, 0, 32 }, InputSlice { 0, 32, 64 } }) }, 2),
  InstBinding("vpaddlq_s8", {  }, InstSignature { { 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation0, { InputSlice { 0, 0, 8 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation0, { InputSlice { 0, 16, 24 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation0, { InputSlice { 0, 32, 40 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation0, { InputSlice { 0, 48, 56 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation0, { InputSlice { 0, 64, 72 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation0, { InputSlice { 0, 80, 88 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation0, { InputSlice { 0, 96, 104 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation0, { InputSlice { 0, 112, 120 }, InputSlice { 0, 120, 128 } }) }, 2),
  InstBinding("vpaddlq_s16", {  }, InstSignature { { 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation1, { InputSlice { 0, 0, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation1, { InputSlice { 0, 32, 48 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation1, { InputSlice { 0, 64, 80 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation1, { InputSlice { 0, 96, 112 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vpaddlq_s32", {  }, InstSignature { { 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation2, { InputSlice { 0, 0, 32 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation2, { InputSlice { 0, 64, 96 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vpaddlq_u8", {  }, InstSignature { { 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation3, { InputSlice { 0, 0, 8 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation3, { InputSlice { 0, 16, 24 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation3, { InputSlice { 0, 32, 40 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation3, { InputSlice { 0, 48, 56 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation3, { InputSlice { 0, 64, 72 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation3, { InputSlice { 0, 80, 88 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation3, { InputSlice { 0, 96, 104 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation3, { InputSlice { 0, 112, 120 }, InputSlice { 0, 120, 128 } }) }, 2),
  InstBinding("vpaddlq_u16", {  }, InstSignature { { 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation4, { InputSlice { 0, 0, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation4, { InputSlice { 0, 32, 48 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation4, { InputSlice { 0, 64, 80 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation4, { InputSlice { 0, 96, 112 }, InputSlice { 0, 112, 128 } }) }, 2),
  InstBinding("vpaddlq_u32", {  }, InstSignature { { 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation5, { InputSlice { 0, 0, 32 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation5, { InputSlice { 0, 64, 96 }, InputSlice { 0, 96, 128 } }) }, 2),
  InstBinding("vpaddq_s8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 0, 8 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 16, 24 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 32, 40 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 48, 56 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 64, 72 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 80, 88 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 96, 104 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 112, 120 }, InputSlice { 0, 120, 128 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 0, 8 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 16, 24 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 32, 40 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 48, 56 }, InputSlice { 1, 56, 64 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 64, 72 }, InputSlice { 1, 72, 80 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 80, 88 }, InputSlice { 1, 88, 96 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 96, 104 }, InputSlice { 1, 104, 112 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 112, 120 }, InputSlice { 1, 120, 128 } }) }, 2),
  InstBinding("vpaddq_s16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation153, { InputSlice { 0, 0, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 0, 32, 48 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 0, 64, 80 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 0, 96, 112 }, InputSlice { 0, 112, 128 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 1, 0, 16 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 1, 32, 48 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 1, 64, 80 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 1, 96, 112 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vpaddq_s32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation154, { InputSlice { 0, 0, 32 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation154, { InputSlice { 0, 64, 96 }, InputSlice { 0, 96, 128 } }), 
    LegacyBoundOperation(&Operation154, { InputSlice { 1, 0, 32 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation154, { InputSlice { 1, 64, 96 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vpaddq_s64", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation156, { InputSlice { 0, 0, 64 }, InputSlice { 0, 64, 128 } }), 
    LegacyBoundOperation(&Operation156, { InputSlice { 1, 0, 64 }, InputSlice { 1, 64, 128 } }) }, 2),
  InstBinding("vpaddq_u8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 0, 8 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 16, 24 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 32, 40 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 48, 56 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 64, 72 }, InputSlice { 0, 72, 80 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 80, 88 }, InputSlice { 0, 88, 96 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 96, 104 }, InputSlice { 0, 104, 112 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 0, 112, 120 }, InputSlice { 0, 120, 128 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 0, 8 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 16, 24 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 32, 40 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 48, 56 }, InputSlice { 1, 56, 64 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 64, 72 }, InputSlice { 1, 72, 80 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 80, 88 }, InputSlice { 1, 88, 96 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 96, 104 }, InputSlice { 1, 104, 112 } }), 
    LegacyBoundOperation(&Operation152, { InputSlice { 1, 112, 120 }, InputSlice { 1, 120, 128 } }) }, 2),
  InstBinding("vpaddq_u16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation153, { InputSlice { 0, 0, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 0, 32, 48 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 0, 64, 80 }, InputSlice { 0, 80, 96 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 0, 96, 112 }, InputSlice { 0, 112, 128 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 1, 0, 16 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 1, 32, 48 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 1, 64, 80 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation153, { InputSlice { 1, 96, 112 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vpaddq_u32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation154, { InputSlice { 0, 0, 32 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation154, { InputSlice { 0, 64, 96 }, InputSlice { 0, 96, 128 } }), 
    LegacyBoundOperation(&Operation154, { InputSlice { 1, 0, 32 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation154, { InputSlice { 1, 64, 96 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vpaddq_u64", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation156, { InputSlice { 0, 0, 64 }, InputSlice { 0, 64, 128 } }), 
    LegacyBoundOperation(&Operation156, { InputSlice { 1, 0, 64 }, InputSlice { 1, 64, 128 } }) }, 2),
  InstBinding("vpaddq_f32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation155, { InputSlice { 0, 32, 64 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation155, { InputSlice { 0, 96, 128 }, InputSlice { 0, 64, 96 } }), 
    LegacyBoundOperation(&Operation155, { InputSlice { 1, 32, 64 }, InputSlice { 1, 0, 32 } }), 
    LegacyBoundOperation(&Operation155, { InputSlice { 1, 96, 128 }, InputSlice { 1, 64, 96 } }) }, 2),
  InstBinding("vpaddq_f64", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation157, { InputSlice { 0, 64, 128 }, InputSlice { 0, 0, 64 } }), 
    LegacyBoundOperation(&Operation157, { InputSlice { 1, 64, 128 }, InputSlice { 1, 0, 64 } }) }, 2),
  InstBinding("vpadal_s8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation158, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation158, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation158, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation158, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vpadal_s16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation159, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation159, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vpadal_s32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation160, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vpadal_u8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation161, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation161, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation161, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation161, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vpadal_u16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation162, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation162, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 64 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vpadal_u32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation163, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 64 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vpadalq_s8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation158, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation158, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation158, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation158, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 64 }, InputSlice { 1, 56, 64 } }), 
    LegacyBoundOperation(&Operation158, { InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 80 }, InputSlice { 1, 72, 80 } }), 
    LegacyBoundOperation(&Operation158, { InputSlice { 1, 80, 88 }, InputSlice { 0, 80, 96 }, InputSlice { 1, 88, 96 } }), 
    LegacyBoundOperation(&Operation158, { InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 112 }, InputSlice { 1, 104, 112 } }), 
    LegacyBoundOperation(&Operation158, { InputSlice { 1, 112, 120 }, InputSlice { 0, 112, 128 }, InputSlice { 1, 120, 128 } }) }, 2),
  InstBinding("vpadalq_s16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation159, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation159, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation159, { InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation159, { InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vpadalq_s32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation160, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation160, { InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vpadalq_u8", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation161, { InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 16 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation161, { InputSlice { 1, 16, 24 }, InputSlice { 0, 16, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation161, { InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 48 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation161, { InputSlice { 1, 48, 56 }, InputSlice { 0, 48, 64 }, InputSlice { 1, 56, 64 } }), 
    LegacyBoundOperation(&Operation161, { InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 80 }, InputSlice { 1, 72, 80 } }), 
    LegacyBoundOperation(&Operation161, { InputSlice { 1, 80, 88 }, InputSlice { 0, 80, 96 }, InputSlice { 1, 88, 96 } }), 
    LegacyBoundOperation(&Operation161, { InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 112 }, InputSlice { 1, 104, 112 } }), 
    LegacyBoundOperation(&Operation161, { InputSlice { 1, 112, 120 }, InputSlice { 0, 112, 128 }, InputSlice { 1, 120, 128 } }) }, 2),
  InstBinding("vpadalq_u16", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation162, { InputSlice { 1, 0, 16 }, InputSlice { 0, 0, 32 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation162, { InputSlice { 1, 32, 48 }, InputSlice { 0, 32, 64 }, InputSlice { 1, 48, 64 } }), 
    LegacyBoundOperation(&Operation162, { InputSlice { 1, 64, 80 }, InputSlice { 0, 64, 96 }, InputSlice { 1, 80, 96 } }), 
    LegacyBoundOperation(&Operation162, { InputSlice { 1, 96, 112 }, InputSlice { 0, 96, 128 }, InputSlice { 1, 112, 128 } }) }, 2),
  InstBinding("vpadalq_u32", {  }, InstSignature { { 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation163, { InputSlice { 1, 0, 32 }, InputSlice { 0, 0, 64 }, InputSlice { 1, 32, 64 } }), 
    LegacyBoundOperation(&Operation163, { InputSlice { 1, 64, 96 }, InputSlice { 0, 64, 128 }, InputSlice { 1, 96, 128 } }) }, 2),
  InstBinding("vpmax_s8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation126, { InputSlice { 0, 0, 8 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 0, 16, 24 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 0, 32, 40 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 0, 48, 56 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 0, 8 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 16, 24 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 32, 40 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation126, { InputSlice { 1, 48, 56 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vpmax_s16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation127, { InputSlice { 0, 0, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation127, { InputSlice { 0, 32, 48 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation127, { InputSlice { 1, 0, 16 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation127, { InputSlice { 1, 32, 48 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vpmax_s32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation128, { InputSlice { 0, 0, 32 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation128, { InputSlice { 1, 0, 32 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vpmax_u8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation129, { InputSlice { 0, 0, 8 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 0, 16, 24 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 0, 32, 40 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 0, 48, 56 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 0, 8 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 16, 24 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 32, 40 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation129, { InputSlice { 1, 48, 56 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vpmax_u16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation130, { InputSlice { 0, 0, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation130, { InputSlice { 0, 32, 48 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation130, { InputSlice { 1, 0, 16 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation130, { InputSlice { 1, 32, 48 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vpmax_u32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation131, { InputSlice { 0, 0, 32 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation131, { InputSlice { 1, 0, 32 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vpmax_f32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation132, { InputSlice { 0, 32, 64 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation132, { InputSlice { 1, 32, 64 }, InputSlice { 1, 0, 32 } }) }, 2),
  InstBinding("vpmin_s8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation133, { InputSlice { 0, 0, 8 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 0, 16, 24 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 0, 32, 40 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 0, 48, 56 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 0, 8 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 16, 24 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 32, 40 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation133, { InputSlice { 1, 48, 56 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vpmin_s16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation134, { InputSlice { 0, 0, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation134, { InputSlice { 0, 32, 48 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation134, { InputSlice { 1, 0, 16 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation134, { InputSlice { 1, 32, 48 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vpmin_s32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation135, { InputSlice { 0, 0, 32 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation135, { InputSlice { 1, 0, 32 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vpmin_u8", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation136, { InputSlice { 0, 0, 8 }, InputSlice { 0, 8, 16 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 0, 16, 24 }, InputSlice { 0, 24, 32 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 0, 32, 40 }, InputSlice { 0, 40, 48 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 0, 48, 56 }, InputSlice { 0, 56, 64 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 0, 8 }, InputSlice { 1, 8, 16 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 16, 24 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 32, 40 }, InputSlice { 1, 40, 48 } }), 
    LegacyBoundOperation(&Operation136, { InputSlice { 1, 48, 56 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vpmin_u16", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation137, { InputSlice { 0, 0, 16 }, InputSlice { 0, 16, 32 } }), 
    LegacyBoundOperation(&Operation137, { InputSlice { 0, 32, 48 }, InputSlice { 0, 48, 64 } }), 
    LegacyBoundOperation(&Operation137, { InputSlice { 1, 0, 16 }, InputSlice { 1, 16, 32 } }), 
    LegacyBoundOperation(&Operation137, { InputSlice { 1, 32, 48 }, InputSlice { 1, 48, 64 } }) }, 2),
  InstBinding("vpmin_u32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation138, { InputSlice { 0, 0, 32 }, InputSlice { 0, 32, 64 } }), 
    LegacyBoundOperation(&Operation138, { InputSlice { 1, 0, 32 }, InputSlice { 1, 32, 64 } }) }, 2),
  InstBinding("vpmin_f32", {  }, InstSignature { { 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation139, { InputSlice { 0, 32, 64 }, InputSlice { 0, 0, 32 } }), 
    LegacyBoundOperation(&Operation139, { InputSlice { 1, 32, 64 }, InputSlice { 1, 0, 32 } }) }, 2),
  InstBinding("vdot_u32", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation164, { InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 32 }, InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 }, InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 }, InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation164, { InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 64 }, InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 }, InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 }, InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vdot_s32", {  }, InstSignature { { 64, 64, 64 }, { 64 }, false }, { 
    LegacyBoundOperation(&Operation165, { InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 32 }, InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 }, InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 }, InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation165, { InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 64 }, InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 }, InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 }, InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 } }) }, 2),
  InstBinding("vdotq_u32", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation164, { InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 32 }, InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 }, InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 }, InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation164, { InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 64 }, InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 }, InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 }, InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 } }), 
    LegacyBoundOperation(&Operation164, { InputSlice { 2, 64, 72 }, InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 96 }, InputSlice { 2, 72, 80 }, InputSlice { 1, 72, 80 }, InputSlice { 2, 80, 88 }, InputSlice { 1, 80, 88 }, InputSlice { 2, 88, 96 }, InputSlice { 1, 88, 96 } }), 
    LegacyBoundOperation(&Operation164, { InputSlice { 2, 96, 104 }, InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 128 }, InputSlice { 2, 104, 112 }, InputSlice { 1, 104, 112 }, InputSlice { 2, 112, 120 }, InputSlice { 1, 112, 120 }, InputSlice { 2, 120, 128 }, InputSlice { 1, 120, 128 } }) }, 2),
  InstBinding("vdotq_s32", {  }, InstSignature { { 128, 128, 128 }, { 128 }, false }, { 
    LegacyBoundOperation(&Operation165, { InputSlice { 2, 0, 8 }, InputSlice { 1, 0, 8 }, InputSlice { 0, 0, 32 }, InputSlice { 2, 8, 16 }, InputSlice { 1, 8, 16 }, InputSlice { 2, 16, 24 }, InputSlice { 1, 16, 24 }, InputSlice { 2, 24, 32 }, InputSlice { 1, 24, 32 } }), 
    LegacyBoundOperation(&Operation165, { InputSlice { 2, 32, 40 }, InputSlice { 1, 32, 40 }, InputSlice { 0, 32, 64 }, InputSlice { 2, 40, 48 }, InputSlice { 1, 40, 48 }, InputSlice { 2, 48, 56 }, InputSlice { 1, 48, 56 }, InputSlice { 2, 56, 64 }, InputSlice { 1, 56, 64 } }), 
    LegacyBoundOperation(&Operation165, { InputSlice { 2, 64, 72 }, InputSlice { 1, 64, 72 }, InputSlice { 0, 64, 96 }, InputSlice { 2, 72, 80 }, InputSlice { 1, 72, 80 }, InputSlice { 2, 80, 88 }, InputSlice { 1, 80, 88 }, InputSlice { 2, 88, 96 }, InputSlice { 1, 88, 96 } }), 
    LegacyBoundOperation(&Operation165, { InputSlice { 2, 96, 104 }, InputSlice { 1, 96, 104 }, InputSlice { 0, 96, 128 }, InputSlice { 2, 104, 112 }, InputSlice { 1, 104, 112 }, InputSlice { 2, 112, 120 }, InputSlice { 1, 112, 120 }, InputSlice { 2, 120, 128 }, InputSlice { 1, 120, 128 } }) }, 2)
};

11.25, z3 ref:

1. https://ericpony.github.io/z3py-tutorial/advanced-examples.htm
2. https://www.lri.fr/~conchon/TER/2013/2/SMTLIB2.pdf
3. https://theory.stanford.edu/~nikolaj/programmingz3.html
4. https://smtlib.cs.uiowa.edu/

rvv in llvm:

* https://zhuanlan.zhihu.com/p/551333227
* https://llvm.org/devmtg/2019-04/slides/TechTalk-Kruppe-Espasa-RISC-V_Vectors_and_LLVM.pdf

11.29, vegen drawback:
~~inherent drawback because of generating from xml? unnecessarily complicated llvm expression.~~
eg: _mm256_sra_epi32
llvm expr:
3:tmp518[224:256]
2:Instruction(op='SExt', bitwidth=64, args=[3])
4:tmp519[0:64]
1:Instruction(op='AShr', bitwidth=64, args=[2, 4])
0:Instruction(op='Trunc', bitwidth=32, args=[1])

the essential problem is llvm `ashr`semantics(two operand with the same width and return poisoned value if operand is bigger than sum bits) is different from intel inst ?



11.30, some transformation can't change the expr into most simplifed version

eg, _mm256_adds_epu16

7:tmp236[240:256]

6:Instruction(op='ZExt', bitwidth=32, args=[7])

9:tmp237[240:256]

8:Instruction(op='ZExt', bitwidth=32, args=[9])

5:Instruction(op='Add', bitwidth=32, args=[6, 8])

4:Instruction(op='Add', bitwidth=32, args=[6, 8])

10:Constant(value=65535, bitwidth=32)

3:Instruction(op='Ugt', bitwidth=1, args=[4, 10])

13:Constant(value=1, bitwidth=32)

12:Instruction(op='Ult', bitwidth=1, args=[4, 13])

14:Constant(value=0, bitwidth=32)

11:Instruction(op='Select', bitwidth=32, args=[12, 14, 4])

2:Instruction(op='Select', bitwidth=32, args=[3, 10, 11])

1:Instruction(op='Trunc', bitwidth=16, args=[2])

0:Instruction(op='Trunc', bitwidth=16, args=[2])

* using Ult instruction to compare with 1 isn't necessary (subsequent llvm transform will help ?).

* excess expression, eg, inst 1, 5 isn't necessary, code like `return self.ir[node_id]` in z3op_translators causes the emergence of dead expression 



11.30, fix a bug in lift_sema.translate_uninterpreted ? 

we may can do some extension?

* why ir_types does not contain FPConstant ?
* raised keyError in op_table ? eg, inst `_mm256_cvtepi32_pd` conver signed int32 into double. we need to add `z3.Z3_OP_FPA_TO_IEEE_BV, z3.Z3_OP_FPA_TO_FP` two keys and `sitofp, uitofp` two llvm ir ?
* bug in `fp_sema.binary_float_cmp` of `translate_abs` but don't care ? because is_int == true ?



12.01 do not understand generated pattern match code ? eg, `_mm256_max_pd`

```cpp	
   // to return max(f1, f2), why use four variables ? 
	Value *tmp0; Value *tmp1; Value *tmp2; Value *tmp3;
    bool Matched = hasBitWidth(V, 64) &&
PatternMatch::match(V, m_SelectOnCmp(CmpInst::Predicate::FCMP_OGT,
      m_Value(tmp0),
      m_Value(tmp1),
      m_Value(tmp2),
      m_Value(tmp3))) &&
hasBitWidth(tmp0, 64) &&
tmp0 == tmp2 &&
hasBitWidth(tmp1, 64) &&
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
```

12.01 following code filters all move-like instruction, can we cantain it ? (eg, `_mm256_movehdup_ps`)

```python
      if not any(isinstance(v, ir.Instruction) for v in dag.values()):
        continue
```


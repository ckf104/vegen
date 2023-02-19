11.25, z3 ref:

1. https://ericpony.github.io/z3py-tutorial/advanced-examples.htm
2. https://www.lri.fr/~conchon/TER/2013/2/SMTLIB2.pdf
3. https://theory.stanford.edu/~nikolaj/programmingz3.html
4. https://smtlib.cs.uiowa.edu/

llvm test-suite

* https://llvm.org/docs/CommandGuide/lit.html

* https://llvm.org/docs/CommandGuide/FileCheck.html
* https://llvm.org/docs/TestingGuide.html

llvm command line helper

* https://llvm.org/docs/CommandLine.html

rvv in llvm:

* https://zhuanlan.zhihu.com/p/551333227
* https://llvm.org/devmtg/2019-04/slides/TechTalk-Kruppe-Espasa-RISC-V_Vectors_and_LLVM.pdf

llvm vector type

* https://llvm.org/docs/LangRef.html#t-vector
* bitcast from vector to int, first consider that the vector is concatenated into a big int. in little endianness, elements with higher index(right side) are put into more significant bits. so \<i4 1, i4, 2, i4, 3, i4 5\> -> 0x5321

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



12.02  general process to generate x86.cpp(without reading corresponding code carefully if  underlining description)

* <u>use python module ply to  parse datasheet of x86, generate the `intrinsics.all.sema` file (run `sema-gen.py`), the most important info in this file is the smt-lib code describing semantics of instruction.</u>
* parse the `intrinsics.all.sema` file and generate sematics description in memory(defined in `description.py`, run `gen-x86.py`).
* simplify sematics description based on z3 library(erase dead/redundant branch, reduce bitwidth(necessary ?) defined in `lift_sema.py`).
* translate z3 expression into llvm ast (`translator` defined in `lift_sema.py` do core work). 
* <u>canonicalize each llvm ast( defined in `canonicalize.py`)</u>
* translate each llvm ast into llvm pattern match code. `Operation` is a scalar function, describing how some scalar inputs are mapped to a output. `BoundOperation`  binds `Operation` and `InputSlice`(defining mapping between `Operation` inputs and verctor input lanes). `InstBinding` has a `BoundOperation` vector, a element for each output lanes. So `InstBinding` has complete semantic description for a SIMD instruction



## GSLP

1. VectorPackContext: 为每个Instruction分配一个ID

2. GlobalDependenceAnalysis: 分析每个Instruction的依赖（直接user依赖，memory依赖），并计算出依赖的传递闭包

3. ControlDependenceAnalysis: 大概来讲，用来分析每个block在什么情况下才会被执行，一个接口是给一个Block，返回一个ControlCondition(And型或者Or型)

4. VLoop, VLoopInfo: 为每个Loop对应了一个VLoop, 具有与Loop相同的层级结构，VLoopInfo只有一个，存储全局信息（例如哪个Loop对应到哪个VLoop）

5. MatchManager: 对每个Operation，对每个Value进行match

   

6. improvePlan中创建各种VectorPack
7. 在vegen的pack定义中，需要要求各个outputLane不能使用同一个inputLane?

使用legacy pass的问题：clang15不再使用legacy pass manager，没办法把pass加载进来

一些LLVM中的测试用例：

SLPVectorizer, LoopVectorize, SpeculativeExecution

LLVM 有 ScalarizerPass , 为啥要多此一举呢

**x86.c 为什么要把这个wrapper中的立即数枚举为常数呢**

fingerprintSCEV这个函数是干嘛的

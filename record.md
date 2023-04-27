uj11.25, z3 ref:

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

llvm shuffle support for scalable vector

* llvm.experimental.vector.reverse
* llvm.experimental.vector.deinterleave2
* llvm.experimental.vector.interleave2
* llvm.experimental.vector.splice

**idea of VW-SLP?**

编译流程

```shel
$ ~/tmp/install/llvm-epi/bin/clang --target=riscv64-unknown-linux-gnu -march=rv64gcv rvv_saxpy.c  -menable-experimental-extensions --riscv-v-vector-min-bits=512 --sysroot=/home/ckf104/install/riscv/sysroot -no-integrated-as -S -O3 -o out/rvv_saxpy.s
$ riscv64-unknown-linux-gnu-gcc -march=rv64gcv out/rvv_saxpy.s -o out/rvv_saxpy
$ qemu-riscv64 -cpu rv64,v=on out/rvv_saxpy
```

opt pass debug option

```shell
-print-after-all  # print IR after each pass
-debug-pass-manager  # show pass running order
```



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



向量参数的Call Convention?

Mask相关处理

 Vector mask-register logical operations operate on mask registers. Each element in a mask register is a single bit, so these instructions all operate on single vector registers regardless of the setting of the vlmul eld in vtype. They do not change the value of vlmul

TODO:

* ~~修改getVectorType函数，mask...ptr等等不太对~~
* ~~riscv的load，store使用vp版本~~
* 限制seed operand size
* ~~**紧急：当循环展开次数为8时，生成代码与预期不符**（reduce从哪来的？）~~
* 更新reduction, 使用vp版本
* 更新IntrinsicBuilder::Create函数
* 完成 getIntrinsicName 函数
* 更新match函数（考虑output lanes之间使用重复标量时....）
* 添加新的Intrinsic, 然后添加新的V指令

已知

* 在**IntrinsicsRISCV.td**文件中定义了RVV相关的Intrinsic，这个文件被包含在**Intrinsics.td**中，

```shell
~/tmp/install/llvm-git/bin/llvm-tblgen -I ~/tmp/llvm-git/llvm/include --gen-intrinsic-impl  Intrinsics.td -o a.cpp # 生成build目录中的IntrinsicImpl.inc文件
~/tmp/install/llvm-git/bin/llvm-tblgen -I ~/tmp/llvm-git/llvm/include --gen-intrinsic-enums --intrinsic-prefix=riscv Intrinsics.td # 生成build目录中的IntrinsicsRISCV.h
```

* 在`lib/Target/RISCV/RISCVInstrInfoVPseudos.td`文件中定义了`RISCVVIntrinsicsTable : GenericTable`，利用**SearchTable**后端生成**RISCVVIntrinsicInfo**结构体，有`IntrinsicID, VLOperand, ScalarOperand`三个成员
* `lib/Target/RISCV/RISCVInstrInfoV.td`描述V拓展指令结构
* `RISCVRegisterInfo.td`描述了寄存器信息，生成`RISCVGenRegisterInfo.inc`，
* 为什么**RISCVBinaryABShiftUnMasked**没有**ScalarOperand**?
* `IITDescriptor`描述Intrinsic的特性

```cpp
class RISCVDAGToDAGISel : public SelectionDAGISel; // lowering 过程中的第一个machinefunctionPass

// register related info
class RISCVRegisterInfo -> RISCVGenRegisterInfo -> TargetRegisterInfo -> MCRegisterInfo;
# 包含arch中的Register的信息，其中RISCVGenRegisterInfo由tablegen生成

class MCRegisterClass; // -> RISCVMCRegisterClasses, 描述一组寄存器
struct MCRegisterDesc; // -> RISCVRegDesc, 描述单个寄存器
class MCRegister;    // 4 byte unsigned, 

// instr related info
class RISCVInstrInfo -> RISCVGenInStrInfo -> TargetInstrInfo -> MCInstrInfo;
# 包含arch中的Instr信息，其中RISCVGenInStrInfo由tablegen生成

class MCInstrDesc; // -> RISCVInsts, 描述一条指令（可能是伪指令，汇编伪指令或者llvm特有的一些，例如phi）

// some detailed register related data info example
Reg F1_D = 73 { 1538, 4354, 8, 0, 103937, 2 }, 103937 = 6496 * 16 + 1
4354 -> {32,32,0}
regUnit -> {65535, 0} 
Reg F18_F  { 1833, 4355, 6461, 1, 103329, 2 },

Name: RISCVRegStrings, SubReg, SuperReg: RISCVRegDiffLists;
SubRegIndices: RISCVSubRegIdxLists; // index来源于sub_vrm1_0一类的枚举变量

segment load?
Reg V4M2_V6M2_V8M2_V10M2 { 285, 6366, 5098, 187, 722, 40 }: 
SubDiff {65385, 65360, 1, 177, 65360, 1, 176, 65361, 1, 177, 65360, 1, 196, 53, 44, 65440, 53, 65484, 137, 28, 27, 26, 65414, 42, 28, 27, 65396, 44, 42, 28, 65370, 53, 44, 42, 65398, 53, 44, 65440, 53, 65484, 23, 52, 65485, 52, 65485, 0}

Reg V8M2 { 608, 627, 3289, 6, 9090, 7 }: Subdiff {65361, 1} -> V8, V9;
Superdiff: { 1, 1, 52, 1, 50, 1, 42, 65455, 40, 43, 65454, 79, 2, 0,} 
-> V8M4, V8M8, V6M2_V8M2, V8M2_V10M2, V4M2_V6M2_V8M2, V6M2_V8M2_V10M2, V4M2_V6M2_V8M2_V10M2,
V4M4_V8M4, V8M2_V10M2_V12M2, V8M2_V10M2_V12M2_V14M2, V8M4_V12M4, V2M2_V4M2_V6M2_V8M2, V6M2_V8M2_V10M2_V12M2;
-> {4, 5, 0}

subindex=9 -> 12, 4, 5, 13, 6, 7, 0 -> {}
```

读代码时的关注点：

* 如何处理PHI节点？
* Intrinsic在DAG中如何转化 -> 一般的Intrinsic有对应的ISD::opcode, 而后`LegalizeVectors`在被lowering为对应的向量指令而target specific Intrinsic使用`INTRINSIC_WO_CHAIN`等特殊的opcode, 并且在operand中加上IntrinsicID
* **在RISCV指令选择的后端，针对`INTRINSIC_W_CHAIN`, `INTRINSIC_WO_CHAIN`, `INTRINSIC_VOID_CHAIN`三类节点对应的部分V指令有特殊处理，WHY**
* 后端如何进行pattern match(尤其是针对V指令 ->生成waddu?)
* RISCVTargetLowering::getTgtMemIntrinsic，表达Intrinsic的副作用，为啥只包含了一部分的内存指令？
* RISCV后端是如何把Pseudo指令lower到真实指令的？

**tablegen**后端接口

```cpp
class DAGOperand; // target.td，表示DAG的一个operand
class RegisterClass : DAGOperand; 
class Operand : DAGOperand;
```



idea: 用C语言来写operation, 然后自动生成pattern match?(便于处理vfirst这样的数组？)

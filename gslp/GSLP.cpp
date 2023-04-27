#include "BlockBuilder.h"
#include "ControlDependence.h"
#include "IRVec.h"
#include "InstSema.h"
#include "Packer.h"
#include "Scalarizer.h"
#include "SimpleParser.h"
#include "Solver.h"
#include "TargetPlatformInfo.h"
#include "UnrollFactor.h"
#include "VectorPackSet.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/Intrinsics.h"
#ifndef LLVM_17
#include "llvm/ADT/Triple.h"
#else
#include "llvm/TargetParser/Triple.h"
#endif
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/AssumptionCache.h"
#include "llvm/Analysis/BlockFrequencyInfo.h"
#include "llvm/Analysis/DependenceAnalysis.h"
#include "llvm/Analysis/LazyValueInfo.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/MustExecute.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/TargetTransformInfo.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/InitializePasses.h"
#include "llvm/Linker/Linker.h"
#include "llvm/Pass.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Scalar/GVN.h"
// For pass building
#include "clang/AST/ASTConsumer.h"
#include "clang/Frontend/FrontendAction.h"
#include "clang/Frontend/FrontendPluginRegistry.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/Transforms/InstCombine/InstCombine.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Transforms/Scalar/ADCE.h"
#include "llvm/Transforms/Scalar/InstSimplifyPass.h"
#include "llvm/Transforms/Scalar/JumpThreading.h"
#include "llvm/Transforms/Scalar/LoopPassManager.h"
#include "llvm/Transforms/Scalar/LoopRotation.h"
#include "llvm/Transforms/Scalar/SimplifyCFG.h"
#include "llvm/Transforms/Utils.h"
#include "llvm/Transforms/Utils/UnifyFunctionExitNodes.h"
#include "llvm/Transforms/Vectorize.h"
#include <memory>
#include <set>
#include <string>
#include <vector>

using namespace llvm;
using namespace PatternMatch;

namespace llvm {
FunctionPass *createScalarizerPass();
}

#ifdef OPT_PASS
cl::opt<bool>
    TestCodeGen("test-codegen",
                cl::desc("test lowering from vloop without vectorization"),
                cl::init(false));

static cl::opt<std::string>
    WrappersDir("wrappers-dir",
                cl::desc("Path to the directory containing InstWrappers.*.bc"),
                cl::Required);

static cl::list<std::string>
    VectorizeOnly("vectorize-only", cl::desc("only vectorize specified passes"),
                  cl::CommaSeparated);

static cl::opt<std::string>
    Filter("filt",
           cl::desc("only run on function names containing this substring"));

static cl::opt<bool> DisableUnrolling("no-unroll", cl::desc("Don't unroll"),
                                      cl::init(false));

static cl::opt<bool>
    DisableCleanup("no-cleanup",
                   cl::desc("Don't run GVN and ADCE after vectorization"),
                   cl::init(false));

static cl::opt<bool>
    DisableReductionBalancing("no-balance-rdx",
                              cl::desc("Don't balance reduction tree"),
                              cl::init(false));

// ckf: enable of scalarize, worse result for dot-product
static cl::opt<bool> ScalarizeEnable("vegen-scalarize-enable", cl::init(false),
                                     cl::Hidden);
// Only add gslp pass
cl::opt<bool> GSLPOnly("gslp-only", cl::init(false));

#else
// test lowering from vloop without vectorization
OptionItem<bool, false> TestCodeGen("test-codegen", false);

// Path to the directory containing InstWrappers.*.bc
OptionItem<std::string, false, true> WrappersDir("wrappers-dir");

// only vectorize specified passes
OptionItem<std::string, true> VectorizeOnly("vectorize-only");

// only run on function names containing this substring
OptionItem<std::string, false> Filter("filt");

// Don't unroll
OptionItem<bool, false> DisableUnrolling("no-unroll", false);

// Don't run GVN and ADCE after vectorization
OptionItem<bool, false> DisableCleanup("no-cleanup", false);

// Don't balance reduction tree
OptionItem<bool, false> DisableReductionBalancing("no-balance-rdx", false);

// ckf: enable of scalarize, worse result for dot-product
OptionItem<bool, false> ScalarizeEnable("vegen-scalarize-enable", false);

// Only add gslp pass
OptionItem<bool, false> GSLPOnly("gslp-only", false);
#endif

namespace llvm {
void initializeGSLPPass(PassRegistry &);
}

namespace {

DenseSet<Function *> skippedFunc;
// Table holding all IR vector instructions
IRInstTable VecBindingTable;

bool hasFeature(const llvm::Function &F, std::string Feature) {
  Attribute Features = F.getFnAttribute("target-features");
  return !Features.hasAttribute(Attribute::None) &&
         Features.getValueAsString().contains("+" + Feature);
}

class GSLP : public PassInfoMixin<GSLP> {
  std::unique_ptr<Module> InstWrappers;
  TargetInfo target;

  std::vector<InstBinding> &getInsts() const {
    switch (target.Arch) {
    case Triple::x86_64:
      return X86Insts;
    case Triple::aarch64:
      return ArmInsts;
    case Triple::riscv64:
      return Riscv64Insts;
    default:
      llvm_unreachable("unsupported target architecture");
    }
  }

public:
  GSLP() { target.Arch = Triple::UnknownArch; }
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM);

  bool doInitialization(Module &M, TargetTransformInfo *TTI);
};

bool isSupported(InstBinding *Inst, const llvm::Function &F,
                 TargetTransformInfo *TTI) {
  auto arch = Triple(F.getParent()->getTargetTriple()).getArch();
  if (arch == Triple::x86_64 || arch == Triple::aarch64) {
    unsigned PreferVectorWidth =
        TTI->getLoadStoreVecRegBitWidth(/*AddrSpace=*/0);
    if (Inst->getName().contains("cvtepi32_epi64"))
      return true;
    if (Inst->getName().contains("hadd"))
      return false;
    if (Inst->getName().contains("hsub"))
      return false;
    if (Inst->getName().contains("broadcast"))
      return false;
    if (Inst->getName().contains("fmadd"))
      return false;
    for (auto &Feature : Inst->getTargetFeatures())
      if (!hasFeature(F, Feature) ||
          Inst->getSignature().outputSig.getVecWidth().value() >
              PreferVectorWidth)
        return false;
    return true;
  } else if (arch == Triple::riscv64) {
    // FIXME: filter insts by feature using RISCVSubTarget::hasVInstructions*
    return true;
  }
  return false;
}

std::vector<InstBinding> &getInsts(Triple::ArchType arch) {
  switch (arch) {
  case Triple::x86_64:
    return X86Insts;
  case Triple::aarch64:
    return ArmInsts;
  case Triple::riscv64:
    return Riscv64Insts;
  default:
    llvm_unreachable("unsupported target architecture");
  }
}

bool getTarget(Module &M, TargetTransformInfo *TTI, TargetInfo &target) {
  target.Arch = Triple(M.getTargetTriple()).getArch();
  // vscale should can set to be at least TTI->getVScaleForTuning()
  if (target.Arch == Triple::riscv64) {
    auto vscale = TTI->getVScaleForTuning();
    if (!vscale || vscale.value() == 0)
      return false;
    // FIXME: Great hacking! TuningVScale = MinVLEN / 64, we use MinVLEN
    // conservatively
    target.MinVLEN = vscale.value() * 64;
  }
  return true;
}

std::vector<const InstBinding *>
getSupportedIntrinsics(Function &F, TargetTransformInfo *TTI) {
  std::vector<const InstBinding *> SupportedIntrinsics;
  auto arch = Triple(F.getParent()->getTargetTriple()).getArch();
  for (InstBinding &Inst : getInsts(arch))
    if (isSupported(&Inst, F, TTI))
      SupportedIntrinsics.push_back(&Inst);

  // disable llvm's vector inst temporarily for riscv64
  if (arch != Triple::riscv64) {
    for (auto &Inst : VecBindingTable.getBindings()) {
      // if (Inst.isSupported(TTI))
      SupportedIntrinsics.push_back(&Inst);
    }
    for (auto &Inst : VecBindingTable.getUnarys()) {
      // if (Inst.isSupported(TTI))
      SupportedIntrinsics.push_back(&Inst);
    }
    for (auto &Ext : VecBindingTable.getExtensions())
      SupportedIntrinsics.push_back(&Ext);
    for (auto &Trunc : VecBindingTable.getTruncates())
      SupportedIntrinsics.push_back(&Trunc);
    for (auto &Select : VecBindingTable.getSelects())
      SupportedIntrinsics.push_back(&Select);
    for (auto &UnaryMath : VecBindingTable.getUnaryMathFuncs())
      SupportedIntrinsics.push_back(&UnaryMath);
    for (auto &BinaryMath : VecBindingTable.getBinaryMathFuncs())
      SupportedIntrinsics.push_back(&BinaryMath);
    for (auto &FloatToInt : VecBindingTable.getFloatToInts())
      SupportedIntrinsics.push_back(&FloatToInt);
    for (auto &IntToFloat : VecBindingTable.getIntToFloats())
      SupportedIntrinsics.push_back(&IntToFloat);
  }
  errs() << "~~~~ num supported intrinsics: " << SupportedIntrinsics.size()
         << '\n';
  return SupportedIntrinsics;
}

bool shouldSkip(Function &F, LoopInfo *LI) {
  if (!VectorizeOnly.empty() &&
      none_of(VectorizeOnly,
              [&F](StringRef FuncName) { return F.getName() == FuncName; }))
    return true;
  if (F.getName() ==
      "_ZN3pov17Check_And_EnqueueEPNS_21Priority_Queue_StructEPNS_16BBox_Tree_"
      "StructEPNS_19Bounding_Box_StructEPNS_14Rayinfo_StructE")
    return true;
  if (!Filter.empty() && !F.getName().contains(Filter))
    return true;

  // Don't deal with irreducible CFG
  if (mayContainIrreducibleControl(F, LI))
    return true;

  // Don't deal with infinite loops
  for (auto *L : LI->getLoopsInPreorder())
    if (!L->isRotatedForm() || L->hasNoExitBlocks()) {
      assert(L->isLoopSimplifyForm());
      return true;
    }

  // We don't deal with things like switches or invoke
  uint32_t retInstCnt = 0;
  for (auto &BB : F) {
    if (!isa<ReturnInst>(BB.getTerminator()) &&
        !isa<BranchInst>(BB.getTerminator()))
      return true;
    retInstCnt += isa<ReturnInst>(BB.getTerminator());
  }
  assert(retInstCnt == 1 && "Function has multiple return instruction?");
  return false;
}

class GSLPUnrollPass : public PassInfoMixin<GSLPUnrollPass> {
public:
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM);
};

} // namespace

static SmallVector<Value *, 4>
collectReductionElements(Instruction *I,
                         std::vector<Instruction *> &Intermediates) {
  SmallVector<Value *, 4> Elems;

  std::vector<Value *> Worklist{I};
  DenseSet<Value *> Seen;

  while (!Worklist.empty()) {
    auto *V = Worklist.back();
    Worklist.pop_back();

    // if not an Add then found a leave
    Value *A, *B;
    if (!isa<Instruction>(V) ||
        !match(V, m_OneUse(m_Add(m_Value(A), m_Value(B))))) {
      Elems.push_back(V);
      continue;
    }

    // Abort if we try to detect a dag...
    // Only try to match for trees
    bool Inserted = Seen.insert(V).second;
    if (!Inserted)
      return {};

    if (V != I)
      Intermediates.push_back(cast<Instruction>(V));

    Worklist.push_back(A);
    Worklist.push_back(B);
  }
  return Elems;
}

// FIXME: propagate NSW and NUW
static Value *buildBalancedTree(IRBuilderBase &IRB, ArrayRef<Value *> Leaves) {
  if (Leaves.size() == 1)
    return Leaves[0];
  unsigned N = Leaves.size();
  auto *A = buildBalancedTree(IRB, Leaves.drop_back(N / 2 /*num drop*/));
  auto *B = buildBalancedTree(
      IRB, Leaves.slice(N - N / 2 /*num drop*/, N / 2 /*num keep*/));
  return IRB.CreateAdd(A, B);
}

static void balanceReductionTree(Function &F) {
  DenseSet<Instruction *> Ignore;
  for (auto &BB : F) {
    // Can't directly iterate over the BB that we are modifying
    std::vector<Instruction *> Worklist;
    for (auto &I : BB)
      Worklist.push_back(&I);

    while (!Worklist.empty()) {
      auto *I = Worklist.back();
      Worklist.pop_back();
      bool Inserted = Ignore.insert(I).second;
      if (!Inserted)
        continue;

      if (!match(I, m_Add(m_Value(), m_Value())))
        continue;

      std::vector<Instruction *> Intermediates;
      auto Elems = collectReductionElements(I, Intermediates);
      if (Elems.size() > 2) {
        IRBuilder<> IRB(I);
        auto *NewRoot = buildBalancedTree(IRB, Elems);
        I->replaceAllUsesWith(NewRoot);
        I->eraseFromParent();

        for (auto *I2 : Intermediates) {
          Ignore.insert(I2);
          I2->eraseFromParent();
        }
      }
    }
  }
}

void reduceIntrinsic(Function &F);

PreservedAnalyses GSLPUnrollPass::run(Function &F,
                                      FunctionAnalysisManager &FAM) {
  reduceIntrinsic(F);
  auto *AA = &FAM.getResult<AAManager>(F);
  auto *SE = &FAM.getResult<ScalarEvolutionAnalysis>(F);
  auto *DT = &FAM.getResult<DominatorTreeAnalysis>(F);
  auto *LI = &FAM.getResult<LoopAnalysis>(F);
  auto *DI = &FAM.getResult<DependenceAnalysis>(F);
  auto *LVI = &FAM.getResult<LazyValueAnalysis>(F);
  auto *TTI = &FAM.getResult<TargetIRAnalysis>(F);
  auto *BFI = &FAM.getResult<BlockFrequencyAnalysis>(F);
  auto *AC = &FAM.getResult<AssumptionAnalysis>(F);
  TargetInfo target;

  if (shouldSkip(F, LI)) {
    skippedFunc.insert(&F);
    return PreservedAnalyses::none();
  }
  if (!getTarget(*F.getParent(), TTI, target)) {
    skippedFunc.insert(&F);
    return PreservedAnalyses::none();
  }
  if (!DisableReductionBalancing)
    balanceReductionTree(F);

  auto SupportedIntrinsics = getSupportedIntrinsics(F, TTI);

  DenseMap<Loop *, UnrolledLoopTy> DupToOrigLoopMap;
  DenseMap<Instruction *, UnrolledInstruction> UnrolledIterations;
  if (!DisableUnrolling && !TestCodeGen) {
    AssumptionCache AC(F);
    DenseMap<Loop *, unsigned> UFs;
    computeUnrollFactor(SupportedIntrinsics, LVI, TTI, BFI, &F, *LI, UFs,
                        target);
    unrollLoops(&F, *SE, *LI, AC, *DT, TTI, UFs, DupToOrigLoopMap,
                &UnrolledIterations);
    // FIXME: figure out why SimplifyCFG removes preheader
    assert(!verifyFunction(F, &errs()));
    /*FAM.invalidate(F, PreservedAnalyses::none());
    FAM.invalidate(F, SimplifyCFGPass().run(F, FAM));
    FAM.invalidate(F, InstCombinePass().run(F, FAM));
    AA = &FAM.getResult<AAManager>(F);
    SE = &FAM.getResult<ScalarEvolutionAnalysis>(F);
    DT = &FAM.getResult<DominatorTreeAnalysis>(F);
    LI = &FAM.getResult<LoopAnalysis>(F);
    DI = &FAM.getResult<DependenceAnalysis>(F);
    LVI = &FAM.getResult<LazyValueAnalysis>(F);
    TTI = &FAM.getResult<TargetIRAnalysis>(F);
    BFI = &FAM.getResult<BlockFrequencyAnalysis>(F);*/
  }
  return PreservedAnalyses::none();
}

bool GSLP::doInitialization(Module &M, TargetTransformInfo *TTI) {
  assert(getTarget(M, TTI, target));
  SMDiagnostic Err;
  std::string Wrapper;
  switch (target.Arch) {
  case Triple::x86_64:
    Wrapper = "/x86.bc";
    break;
  case Triple::aarch64:
    Wrapper = "/arm.bc";
    break;
  case Triple::riscv64:
    break;

  default:
    llvm_unreachable("architecture not supported");
  }
  if (target.Arch != Triple::riscv64) {
    if (WrappersDir.empty())
      WrappersDir =
          (StringRef(__FILE__).rsplit('/').first.rsplit('/').first + "/build")
              .str();
    errs() << "Loading inst wrappers: " << WrappersDir + Wrapper << '\n';
    InstWrappers = parseIRFile(WrappersDir + Wrapper, Err, M.getContext());
    if (!InstWrappers) {
      report_fatal_error(std::string("Error parsing Inst Wrappers") +
                         Err.getMessage());
    }
  }

  return true;
}

class IntrinsicVisitor : public InstVisitor<IntrinsicVisitor> {
public:
  void visitIntrinsicInst(IntrinsicInst &i) {
    if (i.getIntrinsicID() == Intrinsic::fmuladd) {
      auto iter = i.operands().begin();
      Value *v1 = *(iter++);
      if (v1->getType()->isVectorTy())
        return;
      Value *v2 = *(iter++);
      Value *v3 = *iter;
      IRBuilder<> builder(&i);
      auto *v4 = builder.CreateFMul(v1, v2);
      auto *v5 = builder.CreateFAdd(v4, v3);
      i.replaceAllUsesWith(v5);
      i.eraseFromParent();
    }
  }
};

void reduceIntrinsic(Function &F) {
  auto a = IntrinsicVisitor();
  a.visit(F);
}

PreservedAnalyses GSLP::run(Function &F, FunctionAnalysisManager &FAM) {
  auto *AA = &FAM.getResult<AAManager>(F);
  auto *SE = &FAM.getResult<ScalarEvolutionAnalysis>(F);
  auto *DT = &FAM.getResult<DominatorTreeAnalysis>(F);
  auto *LI = &FAM.getResult<LoopAnalysis>(F);
  auto *DI = &FAM.getResult<DependenceAnalysis>(F);
  auto *LVI = &FAM.getResult<LazyValueAnalysis>(F);
  auto *TTI = &FAM.getResult<TargetIRAnalysis>(F);
  auto *BFI = &FAM.getResult<BlockFrequencyAnalysis>(F);

  if (skippedFunc.count(&F))
    return PreservedAnalyses::all();
  if (!doInitialization(*F.getParent(), TTI))
    return PreservedAnalyses::all();
  for (auto *L : LI->getLoopsInPreorder()) {
    assert(L->getLoopPreheader());
  }

  errs() << "Optimizing " << F.getName() << '\n';
#ifdef BUILD_WITH_DEBUG_LLVM
  F.getParent()->dump();
#endif

  auto SupportedIntrinsics = getSupportedIntrinsics(F, TTI);
  PostDominatorTree PDT(F); // recompute PDT after unrolling
  Packer Pkr(SupportedIntrinsics, F, AA, LI, SE, DT, &PDT, DI, LVI, TTI, BFI,
             target);

  // Forward the seeds from the unroller
  std::vector<const OperandPack *> SeedOperands;
  // disable getSeeds temporarily
  // if (!DisableUnrolling)
  //  SeedOperands = getSeeds(Pkr, DupToOrigLoopMap, UnrolledIterations);

  VectorPackSet Packs(&F);
  if (!TestCodeGen)
    optimizeBottomUp(Packs, &Pkr, SeedOperands);

  IntrinsicBuilder Builder(InstWrappers.get(), Pkr.getContext());
  errs() << "Generating vector code\n";
  Packs.codegen(Builder, Pkr);

  assert(!verifyFunction(F, &errs()));
  return PreservedAnalyses::none();
}

#if 0
INITIALIZE_PASS_BEGIN(GSLP, "gslp", "gslp", false, false)
INITIALIZE_PASS_DEPENDENCY(ScalarEvolutionWrapperPass)
INITIALIZE_PASS_DEPENDENCY(AAResultsWrapperPass)
INITIALIZE_PASS_DEPENDENCY(ScalarEvolutionWrapperPass)
INITIALIZE_PASS_DEPENDENCY(LazyValueInfoWrapperPass)
INITIALIZE_PASS_DEPENDENCY(DependenceAnalysisWrapperPass)
INITIALIZE_PASS_DEPENDENCY(DominatorTreeWrapperPass)
INITIALIZE_PASS_DEPENDENCY(LoopInfoWrapperPass)
INITIALIZE_PASS_DEPENDENCY(PostDominatorTreeWrapperPass)
INITIALIZE_PASS_DEPENDENCY(TargetTransformInfoWrapperPass)
INITIALIZE_PASS_DEPENDENCY(BlockFrequencyInfoWrapperPass)
INITIALIZE_PASS_END(GSLP, "gslp", "gslp", false, false)
#endif

// Automatically enable the pass.
// http://adriansampson.net/blog/clangpass.html
static void registerGSLP(FunctionPassManager &FPM) {
#if 0
  if (ScalarizeEnable)   // temporarily disable
    FPM.addPass(createVeGenScalarizerPass());
#endif
  // MPM.add(createStructurizeCFGPass(false));
  // MPM.add(createCFGSimplificationPass());
  if (GSLPOnly) {
    FPM.addPass(GSLP());
    return;
  }
  FPM.addPass(GVNHoistPass());
  FPM.addPass(UnifyFunctionExitNodesPass());
  FPM.addPass(LoopSimplifyPass());

  FPM.addPass(createFunctionToLoopPassAdaptor(LoopRotatePass()));
  FPM.addPass(LCSSAPass());

  FPM.addPass(GSLPUnrollPass());
  FPM.addPass(SimplifyCFGPass());
  FPM.addPass(InstCombinePass());
  FPM.addPass(LoopSimplifyPass());
  FPM.addPass(GSLP());

  if (!DisableCleanup) {
    FPM.addPass(SimplifyCFGPass());
    FPM.addPass(JumpThreadingPass());
    FPM.addPass(InstCombinePass());
    FPM.addPass(GVNPass());
    FPM.addPass(ADCEPass());
  }
}
#ifndef OPT_PASS
using namespace clang;
class ParseArgPlugin : public PluginASTAction {
public:
  std::unique_ptr<ASTConsumer> CreateASTConsumer(CompilerInstance &,
                                                 StringRef) override {
    errs() << "plugin run!\n";
    return std::make_unique<ASTConsumer>();
  }
  bool ParseArgs(const CompilerInstance &,
                 const std::vector<std::string> &arg) override {
    GlobalParser(arg);
    return true;
  }
};

static FrontendPluginRegistry::Add<ParseArgPlugin> X("gslp",
                                                     "gslp argument passer");
#endif

extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK
llvmGetPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "MyPlugin", "v0.1", [](PassBuilder &PB) {
            using PipelineElement = typename PassBuilder::PipelineElement;
            PB.registerPipelineParsingCallback([](StringRef n,
                                                  FunctionPassManager &FPM,
                                                  ArrayRef<PipelineElement>) {
              if (n == "gslp") {
                registerGSLP(FPM);
                return true;
              }
              return false;
            });
            PB.registerVectorizerStartEPCallback(
                [](FunctionPassManager &FPM, OptimizationLevel OL) {
                  if (OL.getSpeedupLevel() >= 3)
                    registerGSLP(FPM);
                });
          }};
}

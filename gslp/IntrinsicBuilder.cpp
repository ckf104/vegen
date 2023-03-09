#include "IntrinsicBuilder.h"
#include "VectorPackContext.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/ADT/Twine.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Intrinsics.h"
#include "llvm/IR/Use.h"
#include "llvm/Support/FormatVariadic.h"
#include "llvm/TargetParser/Triple.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include <algorithm>
#include <cassert>
#include <string>
#include <tuple>

using namespace llvm;

Value *IntrinsicBuilder::Create(StringRef Name, ArrayRef<Value *> Operands,
                                Type *retTy, uint32_t length,
                                unsigned char Imm8) {
  auto *F = getIntrinsic(Name, retTy, length, Operands);
  assert(F && "Intrinsic wrapper undefined.");

  assert(std::distance(F->begin(), F->end()) == 1 &&
         "Intrinsic Wrapper should have a single basic block");
  auto &BB = *F->begin();

  unsigned NumArgs = std::distance(F->arg_begin(), F->arg_end());
  assert(Operands.size() + (VPCtx->getTarget() == Triple::riscv64) == NumArgs);

  // map wrapper arg to operands
  ValueToValueMapTy VMap;
  for (unsigned i = 0, j = Operands.size(); i < j; i++) {
    Value *Arg = F->getArg(i);
    assert(CastInst::castIsValid(Instruction::CastOps::BitCast, Operands[i],
                                 Arg->getType()) &&
           "Invalid input type");
    assert((VPCtx->getTarget() != Triple::riscv64 ||
            Operands[i]->getType() == Arg->getType()) &&
           "Argument type mismatch?");
    Value *Operand = CreateBitCast(Operands[i], Arg->getType());
    VMap[Arg] = Operand;
  }
  if (VPCtx->getTarget() == Triple::riscv64) {
    VMap[F->getArg(Operands.size())] = ConstantInt::getIntegerValue(
        Type::getInt64Ty(InstWrappers.getContext()),
        APInt(/*numBits=*/64, Operands.size()));
  }

  Value *RetVal = nullptr;
  for (auto &I : BB) {
    if (auto *Ret = dyn_cast<ReturnInst>(&I)) {
      RetVal = Ret->getReturnValue();
      break;
    }
    auto *NewI = I.clone();
    Insert(NewI);
    VMap[&I] = NewI;
    RemapInstruction(NewI, VMap,
                     RF_NoModuleLevelChanges | RF_IgnoreMissingLocals);
    if (auto *CI = dyn_cast<CallInst>(NewI)) {
      auto *Callee = CI->getCalledFunction();
      assert(Callee->isIntrinsic());
      // If the intrinsic wrapper calls an llvm intrinsic,
      // that intrinsic is declared inside `IntrinsicWrappers`.
      // We need to redeclare that intrinsic.
      Module *M = CI->getParent()->getModule();
      FunctionCallee IntrinsicDecl =
          M->getOrInsertFunction(Callee->getName(), Callee->getFunctionType(),
                                 Callee->getAttributes());
      CI->setCalledFunction(cast<Function>(IntrinsicDecl.getCallee()));
    }
  }
  assert(RetVal && "Wrapper not returning explicitly");
  Value *Output = VMap.lookup(RetVal);
  assert(Output);

  return Output;
}

Function *IntrinsicBuilder::getIntrinsic(StringRef Name, Type *retTy,
                                         uint32_t length,
                                         ArrayRef<Value *> Operands,
                                         unsigned char Imm8) {
  std::string name;
  Function *intrinsic;
  if (VPCtx->getTarget() != Triple::riscv64) {
    name = getNonScalableIntrinsicName(Name, Imm8);
    intrinsic = InstWrappers.getFunction(name);
  } else {
    name = getScalableIntrinsicName(Name, retTy, length, Operands,
                                    /*retry=*/false);
    intrinsic = InstWrappers.getFunction(name);
    if (!intrinsic) {
      name = getScalableIntrinsicName(Name, retTy, length, Operands,
                                      /*retry=*/true);
      intrinsic = InstWrappers.getFunction(name);
    }
  }
  assert(intrinsic && "Intrinsic wrapper undefined.");
  return intrinsic;
}

std::string IntrinsicBuilder::getNonScalableIntrinsicName(StringRef Name,
                                                          uint32_t Imm8) {
  return formatv("intrinsic_wrapper_{0}_{1}", Name, Imm8);
}

// RVV Intrinsic name rules:
// https://github.com/riscv-non-isa/rvv-intrinsic-doc/blob/master/rvv-intrinsic-rfc.md#naming-rules
// FIXME: Support complete name rules
std::string IntrinsicBuilder::getScalableIntrinsicName(
    StringRef Name, Type *retTy, uint32_t length, ArrayRef<Value *> Operands,
    bool retry) {
  std::string name = Name.str(), typeStr, lmulStr;
  std::replace(name.begin(), name.end(), '.', '_');
  uint32_t numerator, denominator;
  std::tie(numerator, denominator) = VPCtx->getProperLMUL(retTy, length);
  if (denominator > 1) {
    lmulStr = "mf" + std::to_string(denominator);
  } else {
    lmulStr = "m" + std::to_string(numerator);
  }
  const auto &DL = VPCtx->getFunction()->getParent()->getDataLayout();
  if (retTy->isIEEELikeFPTy()) {
    typeStr = "f" + std::to_string(DL.getTypeStoreSizeInBits(retTy));
  } else if (retTy->isIntOrPtrTy()) {
    // We can't easily know argument/return type is signed or unsigned(Though it
    // may be possible by enumerating all vector insts). A better way is to
    // embed this info in `InstSignature`?
    const char *t = retry ? "u" : "i";
    typeStr = t + std::to_string(DL.getTypeStoreSizeInBits(retTy));
  } else {
    llvm_unreachable("Unsupported return type");
  }
  return "test_" + name + "_" + typeStr + lmulStr;
}

void IntrinsicBuilder::checkLoadStoreType(Type *retTy, Type *ptrTy,
                                          bool isGather) {

  if (VPCtx->getTarget() == Triple::riscv64) {
    assert(isa<ScalableVectorType>(retTy) &&
           "Expected scalable vector type for return value?");
    if (isGather) {
      assert(isa<ScalableVectorType>(ptrTy) &&
             "Expected scalable vector type for ptr?");
      assert(
          isa<PointerType>(cast<ScalableVectorType>(ptrTy)->getElementType()) &&
          "Expected pointer type for element of vector ptr?");
      assert(cast<ScalableVectorType>(ptrTy)->getElementCount() ==
                 cast<ScalableVectorType>(retTy)->getElementCount() &&
             "Expected same number of elements in ptr and ret?");
    } else {
      assert(isa<PointerType>(ptrTy) && "Expected pointer type for ptr?");
    }
  } else {
    assert(isa<FixedVectorType>(retTy) &&
           "Expected fixed vector type for return value?");
    if (isGather) {
      assert(isa<FixedVectorType>(ptrTy) &&
             "Expected fixed vector type for ptr?");
      assert(isa<PointerType>(cast<FixedVectorType>(ptrTy)->getElementType()) &&
             "Expected pointer type for element of vector ptr?");
      assert(cast<FixedVectorType>(ptrTy)->getElementCount() ==
                 cast<FixedVectorType>(retTy)->getElementCount() &&
             "Expected same number of elements in ptr and ret?");
    } else {
      assert(isa<PointerType>(ptrTy) && "Expected pointer type for ptr?");
    }
  }
}

Instruction *IntrinsicBuilder::CreateMaskedGather(Type *Ty, Value *Ptrs,
                                                  Align Alignment, Value *Mask,
                                                  uint32_t evl, Value *PassThru,
                                                  const Twine &Name) {
  checkLoadStoreType(Ty, Ptrs->getType(), /*isGather=*/true);
  if (VPCtx->getTarget() != Triple::riscv64) {
    return IRBuiler::CreateMaskedGather(Ty, Ptrs, Alignment, Mask, PassThru,
                                        Name);
  }
  assert(isa<ScalableVectorType>(Ty) && "Expected scalable vector type?");
  Value *vl = ConstantInt::get(Type::getInt32Ty(getContext()), evl);
  if (!Mask)
    Mask = Constant::getAllOnesValue(ScalableVectorType::get(
        Type::getInt1Ty(getContext()),
        cast<ScalableVectorType>(Ty)->getMinNumElements()));

  assert(evl && "load a zero length vector?");
  return IRBuiler::CreateIntrinsic(Ty, Intrinsic::vp_gather, {Ptrs, Mask, vl});
}

Instruction *IntrinsicBuilder::CreateMaskedLoad(Type *Ty, Value *Ptr,
                                                Align Alignment, Value *Mask,
                                                uint32_t evl, Value *PassThru,
                                                const Twine &Name) {
  checkLoadStoreType(Ty, Ptr->getType(), /*isGather=*/false);
  if (VPCtx->getTarget() != Triple::riscv64) {
    return IRBuiler::CreateMaskedLoad(Ty, Ptr, Alignment, Mask, PassThru, Name);
  }
  Value *vl = ConstantInt::get(Type::getInt32Ty(getContext()), evl);
  // FIXME: I am not sure that all ones ConstantVector will be lowered easily.
  // Need test!
  if (!Mask)
    Mask = Constant::getAllOnesValue(ScalableVectorType::get(
        Type::getInt1Ty(getContext()),
        cast<ScalableVectorType>(Ty)->getMinNumElements()));

  assert(evl && "load a zero length vector?");
  return IRBuiler::CreateIntrinsic(Ty, Intrinsic::vp_load, {Ptr, Mask, vl});
}

Instruction *IntrinsicBuilder::CreateAlignedLoad(Type *Ty, Value *Ptr,
                                                 Align Align, uint32_t evl,
                                                 const Twine &Name) {
  if (VPCtx->getTarget() != Triple::riscv64) {
    checkLoadStoreType(Ty, Ptr->getType(), /*isGather=*/false);
    return IRBuiler::CreateAlignedLoad(Ty, Ptr, Align, Name);
  }
  return CreateMaskedLoad(Ty, Ptr, Align, /*Mask=*/nullptr, evl);
}

Instruction *IntrinsicBuilder::CreateMaskedScatter(Value *Val, Value *Ptrs,
                                                   Align Alignment, Value *Mask,
                                                   uint32_t evl) {
  auto *Ty = Val->getType();
  checkLoadStoreType(Ty, Ptrs->getType(), /*isGather=*/true);
  if (VPCtx->getTarget() != Triple::riscv64) {
    return IRBuiler::CreateMaskedScatter(Val, Ptrs, Alignment, Mask);
  }
  Value *vl = ConstantInt::get(Type::getInt32Ty(getContext()), evl);
  if (!Mask)
    Mask = Constant::getAllOnesValue(ScalableVectorType::get(
        Type::getInt1Ty(getContext()),
        cast<ScalableVectorType>(Ty)->getMinNumElements()));

  assert(evl && "store a zero length vector?");
  return IRBuiler::CreateIntrinsic(Type::getVoidTy(getContext()),
                                   Intrinsic::vp_scatter,
                                   {Val, Ptrs, Mask, vl});
}

Instruction *IntrinsicBuilder::CreateAlignedStore(Value *Val, Value *Ptr,
                                                  Align Align, uint32_t evl,
                                                  bool isVolatile) {
  if (VPCtx->getTarget() != Triple::riscv64) {
    checkLoadStoreType(Val->getType(), Ptr->getType(), /*isGather=*/false);
    return IRBuiler::CreateAlignedStore(Val, Ptr, Align, isVolatile);
  }
  return CreateMaskedStore(Val, Ptr, Align, /*Mask=*/nullptr, evl);
}
Instruction *IntrinsicBuilder::CreateMaskedStore(Value *Val, Value *Ptr,
                                                 Align Alignment, Value *Mask,
                                                 uint32_t evl) {
  auto *Ty = Val->getType();
  checkLoadStoreType(Ty, Ptr->getType(), /*isGather=*/false);
  if (VPCtx->getTarget() != Triple::riscv64) {
    return IRBuiler::CreateMaskedStore(Val, Ptr, Alignment, Mask);
  }
  Value *vl = ConstantInt::get(Type::getInt32Ty(getContext()), evl);
  // FIXME: I am not sure that all ones ConstantVector will be lowered easily.
  // Need test!
  if (!Mask)
    Mask = Constant::getAllOnesValue(ScalableVectorType::get(
        Type::getInt1Ty(getContext()),
        cast<ScalableVectorType>(Ty)->getMinNumElements()));

  assert(evl && "store a zero length vector?");
  return IRBuiler::CreateIntrinsic(Type::getVoidTy(getContext()),
                                   Intrinsic::vp_store, {Val, Ptr, Mask, vl});
}

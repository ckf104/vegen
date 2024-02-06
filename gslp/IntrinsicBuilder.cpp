#include "IntrinsicBuilder.h"
#include "InstSeq.h"
#include "VectorPackContext.h"
#include "llvm/ADT/APInt.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/ADT/Twine.h"
#include "llvm/IR/Constant.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Intrinsics.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Metadata.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Use.h"
#include "llvm/IR/Value.h"
#include "llvm/Support/FormatVariadic.h"
#include "llvm/TargetParser/Triple.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include <algorithm>
#include <cassert>
#include <cstdint>
#include <string>
#include <tuple>

using namespace llvm;

LLVMContext &IntrinsicBuilder::getContext() {
  return VPCtx->getFunction()->getParent()->getContext();
}

IntrinsicBuilder::IntrinsicBuilder(Module *InstWrappers,
                                   const VectorPackContext *VPCtx_)
    : llvm::IRBuilder<>(VPCtx_->getFunction()->getParent()->getContext()),
      VPCtx(VPCtx_), InstWrappers(InstWrappers) {}

static bool checkSlideUpCirPattern(ArrayRef<GatherEdge> edges) {
  if (edges.size() % 2 != 0)
    return false;
  for (auto edge : edges) {
    if (edge.DestIndex % 2 == 0) {
      if (edge.SrcIndex != edge.DestIndex + 1)
        return false;
    } else {
      if (edge.SrcIndex != edge.DestIndex - 1)
        return false;
    }
  }
  return true;
}
Instruction *IntrinsicBuilder::CreateRISCVSlideUpCir(Value *src,
                                                     uint32_t length,
                                                     uint32_t stride) {
  auto &context = src->getContext();
  auto *int64Ty = Type::getInt64Ty(context);
  Constant *vl = ConstantInt::get(int64Ty, APInt(64, length));
  SmallVector<Value *, 6> args;
  args.push_back(PoisonValue::get(src->getType()));
  args.push_back(src);
  args.push_back(ConstantInt::get(int64Ty, APInt(64, stride)));
  args.push_back(vl);
  args.push_back(ConstantInt::get(int64Ty, APInt(64, 0))); // policy ?
  auto intrinsicID = Function::lookupIntrinsicID("llvm.riscv.vslideupcir.vx");
  assert(intrinsicID != Intrinsic::not_intrinsic);
  return IRBuiler::CreateIntrinsic(src->getType(), intrinsicID, args);
}

Instruction *IntrinsicBuilder::CreateRISCVShuffle(ArrayRef<GatherEdge> edges,
                                                  Value *src) {
  assert(src->getType()->isVectorTy() && "shuffle source is not a vector?");
  if (checkSlideUpCirPattern(edges)) {
    return CreateRISCVSlideUpCir(src, edges.size(), /*stride=*/1);
  }
  auto &context = src->getContext();
  auto *int16Type = Type::getInt16Ty(context);
  auto *vecType = VectorType::get(
      int16Type, cast<VectorType>(src->getType())->getElementCount());
  Constant *mask = PoisonValue::get(vecType);
  for (auto edge : edges) {
    mask = ConstantExpr::getInsertElement(
        mask, ConstantInt::get(int16Type, APInt(16, edge.SrcIndex)),
        ConstantInt::get(int16Type, APInt(16, edge.DestIndex)));
  }
  Constant *vl =
      ConstantInt::get(Type::getInt64Ty(context), APInt(64, edges.size()));
  SmallVector<Value *, 6> args;
  args.push_back(PoisonValue::get(src->getType()));
  args.push_back(src);
  args.push_back(mask);
  args.push_back(vl);
  auto intrinsicID = Function::lookupIntrinsicID("llvm.riscv.vrgatherei16.vv");
  assert(intrinsicID != Intrinsic::not_intrinsic);
  return IRBuiler::CreateIntrinsic(src->getType(), intrinsicID, args);
}

// FIXME: find a proper way to infer return type of intermediate instruction
// current implementation requires all instruction's return type are the same
Value *IntrinsicBuilder::Create(const std::vector<SingleInst> &instSeq,
                                ArrayRef<Value *> Operands, Type *retTy,
                                uint32_t length) {
  SmallVector<Value *> intermVals;
  for (uint32_t i = 0, j = instSeq.size(); i < j; ++i) {
    SmallVector<Value *> ops;
    for (auto p : instSeq[i].getInputsPos()) {
      if (p.src == Source::Input)
        ops.push_back(Operands[p.id]);
      else {
        assert(p.id < intermVals.size());
        ops.push_back(intermVals[p.id]);
      }
    }
    auto val = Create(instSeq[i].getInstName(), ops, retTy, length);
    intermVals.push_back(val);
  }

  return intermVals.back();
}
Value *IntrinsicBuilder::Create(StringRef Name, ArrayRef<Value *> Operands,
                                Type *retTy, uint32_t length) {
  auto *vt = cast<VectorType>(Operands[0]->getType());
  auto vecRetTy = VectorType::get(retTy, vt->getElementCount());
  auto *mask = Constant::getAllOnesValue(
      VectorType::get(Type::getInt1Ty(getContext()), vt->getElementCount()));
  auto *leng = ConstantInt::get(Type::getInt32Ty(retTy->getContext()), length);
  if (Name == "vicmpeq" || Name == "vicmpne" || Name == "vicmpugt" ||
      Name == "vicmpuge" || Name == "vicmpult" || Name == "vicmpule" ||
      Name == "vicmpsgt" || Name == "vicmpsge" || Name == "vicmpslt" ||
      Name == "vicmpsle") {
    Intrinsic::ID id = Intrinsic::vp_icmp;
    SmallVector<Value *, 6> args;
    StringRef cnd;
    if (Name == "vicmpeq" || Name == "vicmpne")
      cnd = Name.slice(Name.size() - 2, Name.size());
    else
      cnd = Name.slice(Name.size() - 3, Name.size());
    auto *cndMD = MDString::get(retTy->getContext(), cnd);
    auto *predValue = MetadataAsValue::get(retTy->getContext(), cndMD);
    args.push_back(Operands[0]);
    if (!Operands[1]->getType()->isVectorTy())
      args.push_back(CreateVectorSplat(vt->getElementCount(), Operands[1]));
    else
      args.push_back(Operands[1]);
    args.push_back(predValue);
    args.push_back(mask);
    args.push_back(leng);
    return CreateIntrinsic(vecRetTy, id, args);
  }
  // binary operator except vsext, vzext(unary operator), vmerge(ternary
  // operator)
  if (Name == "vadd" || Name == "vmul" || Name == "vsext" || Name == "vsll" ||
      Name == "vsra" || Name == "vsrl" || Name == "vsmin" || Name == "vsmax" ||
      Name == "vumin" || Name == "vumax" || Name == "vmerge" ||
      Name == "vsdiv" || Name == "vudiv" || Name == "vzext") {
    Intrinsic::ID id;
    if (Name == "vadd")
      id = Intrinsic::vp_add;
    else if (Name == "vmul")
      id = Intrinsic::vp_mul;
    else if (Name == "vsext")
      id = Intrinsic::vp_sext;
    else if (Name == "vzext")
      id = Intrinsic::vp_zext;
    else if (Name == "vsll")
      id = Intrinsic::vp_shl;
    else if (Name == "vsra")
      id = Intrinsic::vp_ashr;
    else if (Name == "vsrl")
      id = Intrinsic::vp_lshr;
    else if (Name == "vsmin")
      id = Intrinsic::vp_smin;
    else if (Name == "vsmax")
      id = Intrinsic::vp_smax;
    else if (Name == "vumin")
      id = Intrinsic::vp_umin;
    else if (Name == "vumax")
      id = Intrinsic::vp_umax;
    else if (Name == "vmerge")
      id = Intrinsic::vp_select;
    else if (Name == "vsdiv")
      id = Intrinsic::vp_sdiv;
    else if (Name == "vudiv")
      id = Intrinsic::vp_udiv;
    else
      llvm_unreachable("IntrinsicBuilder: unkown RSICV name");

    SmallVector<Value *, 6> args;
    args.push_back(Operands[0]);
    if (Name != "vsext" && Name != "vzext" &&
        !Operands[1]->getType()->isVectorTy()) {
      auto v = CreateVectorSplat(vt->getElementCount(), Operands[1]);
      args.push_back(v);
    } else if (Name != "vsext" && Name != "vzext")
      args.push_back(Operands[1]);
    if (Name == "vmerge") {
      assert(Operands.size() == 3);
      if (Operands[2]->getType()->isVectorTy())
        args.push_back(Operands[2]);
      else
        args.push_back(CreateVectorSplat(vt->getElementCount(), Operands[2]));
    } else { // no mask in vmerge
      args.push_back(mask);
    }
    args.push_back(leng);
    return CreateIntrinsic(vecRetTy, id, args);
  }
  return CreateRISCVIntrinsic(Name, retTy, length, Operands);
}

Value *IntrinsicBuilder::CreateRISCVIntrinsic(StringRef Name, Type *retTy,
                                              uint32_t length,
                                              ArrayRef<Value *> Operands) {
  std::string intrinsicName = ("llvm.riscv." + Name).str();
  auto id = Function::lookupIntrinsicID(intrinsicName);
  assert(id != Intrinsic::not_intrinsic && "Intrinsic not found?");

  // FIXME: this will be broken if VL is not last argument or passthrough is not
  // first argument or return type is not vector
  auto vscale = VPCtx->getProperVScale(retTy, length);
  auto vecRetTy = ScalableVectorType::get(retTy, vscale);
  auto poisonVec = PoisonValue::get(vecRetTy);
  SmallVector<Value *, 6> args;
  args.push_back(poisonVec);
  args.append(Operands.begin(), Operands.end());
  args.push_back(ConstantInt::getIntegerValue(Type::getInt64Ty(getContext()),
                                              APInt(/*numBits=*/64, length)));
  return IRBuiler::CreateIntrinsic(vecRetTy, id, args);
}

Function *IntrinsicBuilder::getIntrinsic(StringRef Name, Type *retTy,
                                         uint32_t length,
                                         ArrayRef<Value *> Operands,
                                         unsigned char Imm8) {
  std::string name;
  Function *intrinsic;
  name = getNonScalableIntrinsicName(Name, Imm8);
  intrinsic = InstWrappers->getFunction(name);
  assert(intrinsic && "Intrinsic wrapper undefined.");
  return intrinsic;
}

std::string IntrinsicBuilder::getNonScalableIntrinsicName(StringRef Name,
                                                          uint32_t Imm8) {
  return formatv("intrinsic_wrapper_{0}_{1}", Name, Imm8);
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

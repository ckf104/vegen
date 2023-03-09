#ifndef INTRINSIC_BUILDER_H
#define INTRINSIC_BUILDER_H

#include "TargetPlatformInfo.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Use.h"
#include "llvm/TargetParser/Triple.h"
#include <cstdint>
#include <string>

namespace llvm {
class Function;
}

class VectorPackContext;

class IntrinsicBuilder : public llvm::IRBuilder<> {
  llvm::Module &InstWrappers;
  const VectorPackContext *VPCtx;
  using IRBuiler = llvm::IRBuilder<>;

  void checkLoadStoreType(llvm::Type *retTy, llvm::Type *ptrTy, bool isGather);
  std::string getNonScalableIntrinsicName(llvm::StringRef Name,
                                          uint32_t Imm8 = 0);
  std::string getScalableIntrinsicName(llvm::StringRef Name, llvm::Type *retTy,
                                       uint32_t length,
                                       llvm::ArrayRef<llvm::Value *> Operands, bool retry);
  llvm::Function *getIntrinsic(llvm::StringRef Name, llvm::Type *retTy,
                               uint32_t length,
                               llvm::ArrayRef<llvm::Value *> Operands,
                               unsigned char Imm8 = 0);

public:
  llvm::LLVMContext &getContext() { return InstWrappers.getContext(); }
  using InsertPoint = llvm::IRBuilderBase::InsertPoint;
  IntrinsicBuilder(llvm::Module &InstWrappers, const VectorPackContext *VPCtx_)
      : llvm::IRBuilder<>(InstWrappers.getContext()), VPCtx(VPCtx_),
        InstWrappers(InstWrappers) {}

  llvm::Value *Create(llvm::StringRef Name,
                      llvm::ArrayRef<llvm::Value *> Operands, llvm::Type *retTy,
                      uint32_t length, unsigned char Imm8 = 0);

  // override IRBuilder's CreateMaskGather
  llvm::Instruction *CreateMaskedGather(llvm::Type *Ty, llvm::Value *Ptrs,
                                        llvm::Align Alignment,
                                        llvm::Value *Mask, uint32_t evl = 0,
                                        llvm::Value *PassThru = nullptr,
                                        const llvm::Twine &Name = "");
  // override IRBuilder's CreateMaskLoad
  llvm::Instruction *CreateMaskedLoad(llvm::Type *Ty, llvm::Value *Ptr,
                                      llvm::Align Alignment, llvm::Value *Mask,
                                      uint32_t evl = 0,
                                      llvm::Value *PassThru = nullptr,
                                      const llvm::Twine &Name = "");
  // override IRBuilder's CreateAlignedLoad
  llvm::Instruction *CreateAlignedLoad(llvm::Type *Ty, llvm::Value *Ptr,
                                       llvm::Align Align, uint32_t evl = 0,
                                       const llvm::Twine &Name = "");

  llvm::Instruction *CreateMaskedScatter(llvm::Value *Val, llvm::Value *Ptrs,
                                         llvm::Align Alignment,
                                         llvm::Value *Mask = nullptr,
                                         uint32_t evl = 0);

  llvm::Instruction *CreateAlignedStore(llvm::Value *Val, llvm::Value *Ptr,
                                        llvm::Align Align, uint32_t evl = 0,
                                        bool isVolatile = false);
  llvm::Instruction *CreateMaskedStore(llvm::Value *Val, llvm::Value *Ptr,
                                       llvm::Align Alignment, llvm::Value *Mask,
                                       uint32_t evl = 0);
};

#endif // end INTRINSIC_BUILDER_H

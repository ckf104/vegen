#ifndef INTRINSIC_BUILDER_H
#define INTRINSIC_BUILDER_H

#include "InstSeq.h"
#include "TargetPlatformInfo.h"
#include "llvm/ADT/ArrayRef.h"
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

struct GatherEdge {
  unsigned SrcIndex;
  unsigned DestIndex;
};

class IntrinsicBuilder : public llvm::IRBuilder<> {
  llvm::Module *InstWrappers;
  const VectorPackContext *VPCtx;
  using IRBuiler = llvm::IRBuilder<>;

  void checkLoadStoreType(llvm::Type *retTy, llvm::Type *ptrTy, bool isGather);
  std::string getNonScalableIntrinsicName(llvm::StringRef Name,
                                          uint32_t Imm8 = 0);
  llvm::Function *getIntrinsic(llvm::StringRef Name, llvm::Type *retTy,
                               uint32_t length,
                               llvm::ArrayRef<llvm::Value *> Operands,
                               unsigned char Imm8 = 0);

public:
  llvm::LLVMContext &getContext();
  using InsertPoint = llvm::IRBuilderBase::InsertPoint;
  IntrinsicBuilder(llvm::Module *InstWrappers, const VectorPackContext *VPCtx_);

  llvm::Value *Create(const std::vector<SingleInst> &Seq,
                      llvm::ArrayRef<llvm::Value *> Operands, llvm::Type *retTy,
                      uint32_t length);
  llvm::Value *Create(llvm::StringRef Name,
                      llvm::ArrayRef<llvm::Value *> Operands, llvm::Type *retTy,
                      uint32_t length);
  llvm::Value *CreateRISCVIntrinsic(llvm::StringRef Name, llvm::Type *retTy,
                                    uint32_t length,
                                    llvm::ArrayRef<llvm::Value *> Operands);

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
  llvm::Instruction *CreateRISCVShuffle(llvm::ArrayRef<GatherEdge> edges,
                                        llvm::Value *src);
  llvm::Instruction *CreateRISCVSlideUpCir(llvm::Value *src, uint32_t length,
                                           uint32_t stride);
};

#endif // end INTRINSIC_BUILDER_H

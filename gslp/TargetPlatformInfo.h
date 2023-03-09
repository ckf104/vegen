#ifndef __TargetPlatformInfo_HPP
#define __TargetPlatformInfo_HPP

#include "llvm/TargetParser/Triple.h"
#include <cstdint>

struct TargetInfo {
  // RVV spec[3.4.2] said: Implementations must support LMUL integer values of
  // 1, 2, 4, and 8. For fractional LMUL, LMUL >= SEWmin / ELEN must be
  // supported.
  // FIXME: We now assume ELEN of riscv64 platform is 64, and SEWmin is
  // 8(without embedding LMUL info in struct field). So LMUL can be 1/8, 1/4,
  // 1/2, 1, 2, 4, 8
  llvm::Triple::ArchType Arch;
  uint32_t MinVLEN;
};

// Some consideration about LLVM IR Level Vector Instructions used in RISCV
// First, RVV has no directly support for `insertelement`, LLVM RISCV backend
// will lower it into `vmv.s.x + slideup(with tu)`. If element is i1 mask, the
// sequence of lowered instructions are more complicated. Similar discussion for
// `extractelement`.
// Second, vegen use `llvm.masked.load`, `llvm.masked.gather` and
// `llvm.masked.store` intrinsics to vectorize load/store operation. But
// `llvm.vp.load`, `llvm.vp.store`(and experimental strided version),
// `llvm.vp.gather` should be more suitable for RISCV target. These intrinsics
// will be lowered into constant-stride, unit-stride and indexed RVV load/store
// instructions. There is a subtle pitfall: For riscv64, EEW of gathered
// load/store should be 64. So we may get a EMUL > 8 with big operand size! In
// `VectorPackContext::getMaxOperandSize`, we require max operand size <=
// MinVLEN / 8 to guarantee a reasonable EMUL. But this requirement may be
// relaxed later.
// RVV spec[7.3] said: Vector unit-stride and constant-stride use the EEW/EMUL
// encoded in the instruction for the data values, while vector indexed loads
// and stores use the EEW/EMUL encoded in the instruction for the index values
// and the SEW/LMUL encoded in vtype for the data values.

#endif
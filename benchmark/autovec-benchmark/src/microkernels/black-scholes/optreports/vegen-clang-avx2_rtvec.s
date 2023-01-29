	.text
	.file	"black-scholes_serial.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _Z20black_scholes_serialPfS_S_S_S_S_i
.LCPI0_0:
	.long	0xc0400000                      # float -3
.LCPI0_1:
	.long	0xbf000000                      # float -0.5
.LCPI0_2:
	.long	0x7fffffff                      # float NaN
.LCPI0_3:
	.long	0x00800000                      # float 1.17549435E-38
.LCPI0_4:
	.long	0x3f000000                      # float 0.5
.LCPI0_5:
	.long	0x3f800000                      # float 1
.LCPI0_6:
	.long	0x3e6d3389                      # float 0.231641904
.LCPI0_7:
	.long	0x3ea385fa                      # float 0.319381535
.LCPI0_8:
	.long	0xbeb68f87                      # float -0.356563777
.LCPI0_9:
	.long	0xbfe91eea                      # float -1.82125592
.LCPI0_10:
	.long	0x3faa466f                      # float 1.33027446
.LCPI0_11:
	.long	0x3fe40778                      # float 1.78147793
.LCPI0_12:
	.long	0x3ecc422a                      # float 0.398942292
.LCPI0_13:
	.long	0x80000000                      # float -0
.LCPI0_14:
	.long	0x00000000                      # float 0
	.text
	.globl	_Z20black_scholes_serialPfS_S_S_S_S_i
	.p2align	4, 0x90
	.type	_Z20black_scholes_serialPfS_S_S_S_S_i,@function
_Z20black_scholes_serialPfS_S_S_S_S_i:  # @_Z20black_scholes_serialPfS_S_S_S_S_i
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	192(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB0_3
# %bb.1:
	movq	%r8, %r13
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	%eax, %eax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	xorl	%r15d, %r15d
	vbroadcastss	.LCPI0_2(%rip), %xmm0   # xmm0 = [NaN,NaN,NaN,NaN]
	vmovaps	%xmm0, 80(%rsp)                 # 16-byte Spill
	vbroadcastss	.LCPI0_13(%rip), %xmm0  # xmm0 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vmovaps	%xmm0, 112(%rsp)                # 16-byte Spill
	movq	%r9, 104(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	vmovss	(%r12,%r15,4), %xmm4            # xmm4 = mem[0],zero,zero,zero
	vmovss	%xmm4, 28(%rsp)                 # 4-byte Spill
	vmovss	(%r14,%r15,4), %xmm5            # xmm5 = mem[0],zero,zero,zero
	vmovss	%xmm5, 24(%rsp)                 # 4-byte Spill
	vmovss	(%rbp,%r15,4), %xmm6            # xmm6 = mem[0],zero,zero,zero
	vmovaps	%xmm6, 48(%rsp)                 # 16-byte Spill
	vrsqrtss	%xmm6, %xmm6, %xmm0
	vmulss	%xmm0, %xmm6, %xmm1
	vmovss	.LCPI0_1(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	vmulss	%xmm3, %xmm0, %xmm2
	vfmadd213ss	.LCPI0_0(%rip), %xmm1, %xmm0 # xmm0 = (xmm1 * xmm0) + mem
	vmulss	%xmm3, %xmm1, %xmm1
	vmulss	%xmm0, %xmm1, %xmm1
	vandps	80(%rsp), %xmm6, %xmm3          # 16-byte Folded Reload
	vcmpltss	.LCPI0_3(%rip), %xmm3, %xmm3
	vandnps	%xmm1, %xmm3, %xmm1
	vmovaps	%xmm1, 64(%rsp)                 # 16-byte Spill
	vmulss	%xmm0, %xmm2, %xmm0
	vmovss	%xmm0, 32(%rsp)                 # 4-byte Spill
	vmovss	(%rbx,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 12(%rsp)                 # 4-byte Spill
	vmovss	(%r13,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 16(%rsp)                 # 4-byte Spill
	vdivss	%xmm5, %xmm4, %xmm0
	callq	logf@PLT
	vmovss	16(%rsp), %xmm3                 # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	vmulss	%xmm3, %xmm3, %xmm1
	vmovss	12(%rsp), %xmm2                 # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	vfmadd132ss	.LCPI0_4(%rip), %xmm2, %xmm1 # xmm1 = (xmm1 * mem) + xmm2
	vfmadd132ss	48(%rsp), %xmm0, %xmm1  # 16-byte Folded Reload
                                        # xmm1 = (xmm1 * mem) + xmm0
	vmovss	32(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vdivss	%xmm3, %xmm0, %xmm0
	vmovaps	%xmm3, %xmm4
	vmulss	%xmm0, %xmm1, %xmm5
	vandps	80(%rsp), %xmm5, %xmm0          # 16-byte Folded Reload
	vmovss	.LCPI0_5(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	vmovss	.LCPI0_6(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm2, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm0) + xmm2
	vdivss	%xmm0, %xmm2, %xmm0
	vmulss	%xmm0, %xmm0, %xmm1
	vmulss	%xmm0, %xmm1, %xmm2
	vmovss	.LCPI0_7(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	vmulss	%xmm3, %xmm0, %xmm6
	vmovss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmovss	.LCPI0_8(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm3, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm0) + xmm3
	vmovss	.LCPI0_10(%rip), %xmm3          # xmm3 = mem[0],zero,zero,zero
	vfmadd231ss	%xmm3, %xmm2, %xmm0     # xmm0 = (xmm2 * xmm3) + xmm0
	vmovss	.LCPI0_11(%rip), %xmm3          # xmm3 = mem[0],zero,zero,zero
	vfmadd231ss	%xmm2, %xmm3, %xmm6     # xmm6 = (xmm3 * xmm2) + xmm6
	vfmadd231ss	%xmm0, %xmm1, %xmm6     # xmm6 = (xmm1 * xmm0) + xmm6
	vmovss	%xmm6, 20(%rsp)                 # 4-byte Spill
	vmovaps	64(%rsp), %xmm0                 # 16-byte Reload
	vmovaps	%xmm5, 32(%rsp)                 # 16-byte Spill
	vfnmadd213ss	%xmm5, %xmm4, %xmm0     # xmm0 = -(xmm4 * xmm0) + xmm5
	vmovaps	%xmm0, 64(%rsp)                 # 16-byte Spill
	vmulss	%xmm5, %xmm5, %xmm0
	vmulss	.LCPI0_1(%rip), %xmm0, %xmm0
	callq	expf@PLT
	vmovss	.LCPI0_12(%rip), %xmm1          # xmm1 = mem[0],zero,zero,zero
	vmulss	%xmm1, %xmm0, %xmm0
	vmulss	20(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmovss	.LCPI0_5(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vsubss	%xmm0, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	vcmpltss	32(%rsp), %xmm2, %xmm2          # 16-byte Folded Reload
	vblendvps	%xmm2, %xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	vmovaps	48(%rsp), %xmm0                 # 16-byte Reload
	vxorps	112(%rsp), %xmm0, %xmm0         # 16-byte Folded Reload
	vmulss	12(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	callq	expf@PLT
	vmulss	24(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmovss	%xmm0, 48(%rsp)                 # 4-byte Spill
	vmovaps	64(%rsp), %xmm3                 # 16-byte Reload
	vandps	80(%rsp), %xmm3, %xmm0          # 16-byte Folded Reload
	vmovss	.LCPI0_5(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vfmadd132ss	.LCPI0_6(%rip), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vdivss	%xmm0, %xmm1, %xmm0
	vmulss	%xmm0, %xmm0, %xmm1
	vmulss	%xmm0, %xmm1, %xmm2
	vmulss	.LCPI0_7(%rip), %xmm0, %xmm4
	vmovss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vfmadd213ss	.LCPI0_8(%rip), %xmm1, %xmm0 # xmm0 = (xmm1 * xmm0) + mem
	vfmadd231ss	.LCPI0_10(%rip), %xmm2, %xmm0 # xmm0 = (xmm2 * mem) + xmm0
	vfmadd231ss	.LCPI0_11(%rip), %xmm2, %xmm4 # xmm4 = (xmm2 * mem) + xmm4
	vfmadd231ss	%xmm0, %xmm1, %xmm4     # xmm4 = (xmm1 * xmm0) + xmm4
	vmovss	%xmm4, 12(%rsp)                 # 4-byte Spill
	vmulss	%xmm3, %xmm3, %xmm0
	vmulss	.LCPI0_1(%rip), %xmm0, %xmm0
	callq	expf@PLT
	movq	104(%rsp), %r9                  # 8-byte Reload
	vmulss	.LCPI0_12(%rip), %xmm0, %xmm0
	vmulss	12(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmovss	.LCPI0_5(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vsubss	%xmm0, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	vcmpltss	64(%rsp), %xmm2, %xmm2          # 16-byte Folded Reload
	vblendvps	%xmm2, %xmm1, %xmm0, %xmm0
	vmulss	48(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmovaps	32(%rsp), %xmm1                 # 16-byte Reload
	vfmsub231ss	28(%rsp), %xmm1, %xmm0  # 4-byte Folded Reload
                                        # xmm0 = (xmm1 * mem) - xmm0
	vmovss	%xmm0, (%r9,%r15,4)
	incq	%r15
	cmpq	%r15, 96(%rsp)                  # 8-byte Folded Reload
	jne	.LBB0_2
.LBB0_3:
	addq	$136, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_Z20black_scholes_serialPfS_S_S_S_S_i, .Lfunc_end0-_Z20black_scholes_serialPfS_S_S_S_S_i
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 12.0.0"
	.section	".note.GNU-stack","",@progbits
	.addrsig

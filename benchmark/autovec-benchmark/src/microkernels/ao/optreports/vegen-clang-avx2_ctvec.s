	.text
	.file	"ao_serial.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function _Z9ao_serialiiPf
.LCPI0_0:
	.long	0x00000000                      # float 0
	.long	0xbf000000                      # float -0.5
	.zero	4
	.zero	4
.LCPI0_1:
	.long	0x00000000                      # float 0
	.long	0x3f800000                      # float 1
	.zero	4
	.zero	4
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_2:
	.long	0x3f000000                      # float 0.5
.LCPI0_3:
	.long	0x3f800000                      # float 1
.LCPI0_4:
	.long	0x80000000                      # float -0
.LCPI0_5:
	.long	0xc0400000                      # float -3
.LCPI0_6:
	.long	0xbf000000                      # float -0.5
.LCPI0_7:
	.long	0xdbb1a2bc                      # float -9.99999984E+16
.LCPI0_8:
	.long	0x5bb1a2bc                      # float 9.99999984E+16
.LCPI0_9:
	.long	0x7fffffff                      # float NaN
.LCPI0_10:
	.long	0x233877aa                      # float 9.99999984E-18
.LCPI0_11:
	.long	0x38d1b717                      # float 9.99999974E-5
.LCPI0_12:
	.long	0x3f19999a                      # float 0.600000024
.LCPI0_13:
	.long	0xbf19999a                      # float -0.600000024
.LCPI0_15:
	.long	0xbc800000                      # float -0.015625
.LCPI0_16:
	.long	0x3e800000                      # float 0.25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_14:
	.quad	0x401921fb54442d18              # double 6.2831853071795862
	.text
	.globl	_Z9ao_serialiiPf
	.p2align	4, 0x90
	.type	_Z9ao_serialiiPf,@function
_Z9ao_serialiiPf:                       # @_Z9ao_serialiiPf
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
	subq	$728, %rsp                      # imm = 0x2D8
	.cfi_def_cfa_offset 784
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebx
	movl	%edi, %ebp
	movb	_ZGVZL12ao_scanlinesiiiiPfE5plane(%rip), %al
	testb	%al, %al
	jne	.LBB0_3
# %bb.1:
	movl	$_ZGVZL12ao_scanlinesiiiiPfE5plane, %edi
	callq	__cxa_guard_acquire
	testl	%eax, %eax
	je	.LBB0_3
# %bb.2:
	vmovsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, _ZZL12ao_scanlinesiiiiPfE5plane(%rip)
	movl	$0, _ZZL12ao_scanlinesiiiiPfE5plane+8(%rip)
	vmovsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, _ZZL12ao_scanlinesiiiiPfE5plane+16(%rip)
	movl	$0, _ZZL12ao_scanlinesiiiiPfE5plane+24(%rip)
	movl	$_ZGVZL12ao_scanlinesiiiiPfE5plane, %edi
	callq	__cxa_guard_release
.LBB0_3:
	movb	_ZGVZL12ao_scanlinesiiiiPfE7spheres(%rip), %al
	testb	%al, %al
	jne	.LBB0_6
# %bb.4:
	movl	$_ZGVZL12ao_scanlinesiiiiPfE7spheres, %edi
	callq	__cxa_guard_acquire
	testl	%eax, %eax
	je	.LBB0_6
# %bb.5:
	movl	$-1073741824, _ZZL12ao_scanlinesiiiiPfE7spheres.0.0.0(%rip) # imm = 0xC0000000
	movl	$-1067450368, _ZZL12ao_scanlinesiiiiPfE7spheres.0.0.2(%rip) # imm = 0xC0600000
	movl	$1056964608, _ZZL12ao_scanlinesiiiiPfE7spheres.0.1(%rip) # imm = 0x3F000000
	movl	$-1090519040, _ZZL12ao_scanlinesiiiiPfE7spheres.1.0.0(%rip) # imm = 0xBF000000
	movl	$-1069547520, _ZZL12ao_scanlinesiiiiPfE7spheres.1.0.2(%rip) # imm = 0xC0400000
	movl	$1056964608, _ZZL12ao_scanlinesiiiiPfE7spheres.1.1(%rip) # imm = 0x3F000000
	movl	$1065353216, _ZZL12ao_scanlinesiiiiPfE7spheres.2.0.0(%rip) # imm = 0x3F800000
	movl	$-1072902963, _ZZL12ao_scanlinesiiiiPfE7spheres.2.0.2(%rip) # imm = 0xC00CCCCD
	movl	$1056964608, _ZZL12ao_scanlinesiiiiPfE7spheres.2.1(%rip) # imm = 0x3F000000
	movl	$_ZGVZL12ao_scanlinesiiiiPfE7spheres, %edi
	callq	__cxa_guard_release
.LBB0_6:
	xorl	%edi, %edi
	callq	srand48
	testl	%ebx, %ebx
	jle	.LBB0_20
# %bb.7:
	vcvtsi2ss	%ebp, %xmm1, %xmm0
	vmovss	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vmovss	%xmm0, 80(%rsp)                 # 4-byte Spill
	vmulss	%xmm1, %xmm0, %xmm2
	vcvtsi2ss	%ebx, %xmm3, %xmm0
	vmulss	%xmm1, %xmm0, %xmm1
	vmovss	%xmm1, 68(%rsp)                 # 4-byte Spill
	vmovss	%xmm2, 72(%rsp)                 # 4-byte Spill
	vmulss	%xmm0, %xmm2, %xmm1
	movslq	%ebp, %rax
	movl	%ebx, %ecx
	movq	%rcx, 296(%rsp)                 # 8-byte Spill
	movq	%rax, 304(%rsp)                 # 8-byte Spill
	movl	%eax, %eax
	movq	%rax, 320(%rsp)                 # 8-byte Spill
	vmovss	.LCPI0_3(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	vdivss	%xmm1, %xmm2, %xmm1
	vmovss	%xmm1, 76(%rsp)                 # 4-byte Spill
	vdivss	%xmm0, %xmm2, %xmm0
	vmovss	%xmm0, 108(%rsp)                # 4-byte Spill
	xorl	%r8d, %r8d
	vmovss	.LCPI0_6(%rip), %xmm10          # xmm10 = mem[0],zero,zero,zero
	vxorps	%xmm9, %xmm9, %xmm9
	leaq	172(%rsp), %r15
	leaq	168(%rsp), %rbx
	movl	$1, %r12d
                                        # implicit-def: $dl
                                        # implicit-def: $sil
                                        # implicit-def: $r13b
                                        # implicit-def: $r9b
                                        # implicit-def: $bpl
                                        # implicit-def: $rcx
                                        # kill: killed $rcx
                                        # implicit-def: $r10b
                                        # implicit-def: $r11b
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm6
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm4
	movq	%r14, 328(%rsp)                 # 8-byte Spill
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_8 Depth=1
	movq	312(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %r8
	cmpq	296(%rsp), %rax                 # 8-byte Folded Reload
	je	.LBB0_20
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_13 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #           Child Loop BB0_69 Depth 5
                                        #             Child Loop BB0_70 Depth 6
	movq	%r8, %rdi
	movq	304(%rsp), %rax                 # 8-byte Reload
	imulq	%rax, %rdi
	leaq	1(%r8), %rcx
	movq	%rcx, 312(%rsp)                 # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	vxorps	%xmm11, %xmm11, %xmm11
	vcvtsi2ss	%r8d, %xmm11, %xmm0
	vmovss	68(%rsp), %xmm1                 # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vsubss	%xmm0, %xmm1, %xmm0
	vmovss	%xmm0, 112(%rsp)                # 4-byte Spill
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	movq	232(%rsp), %rax                 # 8-byte Reload
	cmovgq	%rdi, %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	jle	.LBB0_19
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	xorl	%r8d, %r8d
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=2
	vbroadcastss	.LCPI0_16(%rip), %xmm2  # xmm2 = [2.5E-1,2.5E-1,2.5E-1,2.5E-1]
	vmulps	%xmm2, %xmm0, %xmm0
	vmovlps	%xmm0, (%r14,%rdi,4)
	vmulss	.LCPI0_16(%rip), %xmm1, %xmm0
	vmovss	%xmm0, 8(%r14,%rdi,4)
	incq	%r8
	cmpq	320(%rsp), %r8                  # 8-byte Folded Reload
	je	.LBB0_19
.LBB0_12:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_13 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #           Child Loop BB0_69 Depth 5
                                        #             Child Loop BB0_70 Depth 6
	movq	232(%rsp), %rax                 # 8-byte Reload
	addq	%r8, %rax
	leaq	(%rax,%rax,2), %rdi
	vxorps	%xmm11, %xmm11, %xmm11
	vcvtsi2ss	%r8d, %xmm11, %xmm0
	vsubss	72(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmovss	%xmm0, 84(%rsp)                 # 4-byte Spill
	movb	$1, %al
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%r8, 344(%rsp)                  # 8-byte Spill
	movq	%rdi, 336(%rsp)                 # 8-byte Spill
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=3
	vmovss	.LCPI0_2(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	testb	$1, 20(%rsp)                    # 1-byte Folded Reload
	movl	$0, 20(%rsp)                    # 4-byte Folded Spill
	je	.LBB0_18
.LBB0_13:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_14 Depth 4
                                        #           Child Loop BB0_69 Depth 5
                                        #             Child Loop BB0_70 Depth 6
	vaddss	84(%rsp), %xmm2, %xmm0          # 4-byte Folded Reload
	vmulss	80(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmulss	76(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmovss	%xmm0, 120(%rsp)                # 4-byte Spill
	vfmadd213ss	.LCPI0_3(%rip), %xmm0, %xmm0 # xmm0 = (xmm0 * xmm0) + mem
	vmovss	%xmm0, 116(%rsp)                # 4-byte Spill
	vmovss	.LCPI0_4(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movb	$1, %al
	movl	%eax, 28(%rsp)                  # 4-byte Spill
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_79:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	368(%rsp), %xmm1                # 16-byte Reload
	vcmpltss	%xmm14, %xmm1, %xmm1
	vblendvps	%xmm1, %xmm0, %xmm4, %xmm4
	vmovsd	(%r14,%rdi,4), %xmm0            # xmm0 = mem[0],zero
	vbroadcastss	%xmm4, %xmm1
	vaddps	%xmm1, %xmm0, %xmm0
	vmovlps	%xmm0, (%r14,%rdi,4)
	vaddss	8(%r14,%rdi,4), %xmm4, %xmm1
	vmovss	%xmm1, 8(%r14,%rdi,4)
	vmovaps	%xmm10, %xmm2
	testb	$1, 28(%rsp)                    # 1-byte Folded Reload
	movl	$0, 28(%rsp)                    # 4-byte Folded Spill
	je	.LBB0_17
.LBB0_14:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        #       Parent Loop BB0_13 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_69 Depth 5
                                        #             Child Loop BB0_70 Depth 6
	vaddss	112(%rsp), %xmm2, %xmm0         # 4-byte Folded Reload
	vmovss	108(%rsp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vaddss	%xmm1, %xmm1, %xmm1
	vmulss	%xmm1, %xmm0, %xmm2
	vmovaps	%xmm2, %xmm0
	vfmadd213ss	116(%rsp), %xmm2, %xmm0 # 4-byte Folded Reload
                                        # xmm0 = (xmm2 * xmm0) + mem
	vrsqrtss	%xmm0, %xmm0, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	vfmadd213ss	.LCPI0_5(%rip), %xmm1, %xmm0 # xmm0 = (xmm1 * xmm0) + mem
	vmulss	%xmm1, %xmm10, %xmm1
	vmulss	%xmm0, %xmm1, %xmm11
	vmovss	120(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmulss	%xmm0, %xmm11, %xmm13
	vmovaps	%xmm0, %xmm15
	vfnmsub213ss	%xmm9, %xmm11, %xmm15   # xmm15 = -(xmm11 * xmm15) - xmm9
	vmovaps	%xmm2, %xmm14
	vfnmsub213ss	%xmm9, %xmm11, %xmm14   # xmm14 = -(xmm11 * xmm14) - xmm9
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.2(%rip), %xmm3 # xmm3 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.1(%rip), %xmm5 # xmm5 = mem[0],zero,zero,zero
	vmulss	%xmm3, %xmm3, %xmm0
	vfmadd231ss	%xmm1, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm1) + xmm0
	vfnmadd231ss	%xmm5, %xmm5, %xmm0     # xmm0 = -(xmm5 * xmm5) + xmm0
	vmulss	%xmm1, %xmm13, %xmm7
	vfmsub231ss	%xmm3, %xmm11, %xmm7    # xmm7 = (xmm11 * xmm3) - xmm7
	vfmsub231ss	%xmm7, %xmm7, %xmm0     # xmm0 = (xmm7 * xmm7) - xmm0
	xorl	%eax, %eax
	vucomiss	%xmm9, %xmm0
	vmovaps	%xmm6, 208(%rsp)                # 16-byte Spill
	vmovaps	%xmm4, 256(%rsp)                # 16-byte Spill
	vmovss	%xmm2, 32(%rsp)                 # 4-byte Spill
	jbe	.LBB0_23
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=4
	vsqrtss	%xmm0, %xmm0, %xmm5
	vaddss	%xmm7, %xmm5, %xmm7
	xorl	%r10d, %r10d
	vucomiss	%xmm9, %xmm7
	jae	.LBB0_16
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=4
	vucomiss	.LCPI0_7(%rip), %xmm7
	movl	$0, %eax
	jbe	.LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=4
	vbroadcastss	.LCPI0_4(%rip), %xmm5   # xmm5 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vxorps	%xmm5, %xmm7, %xmm5
	vmovaps	%xmm5, 656(%rsp)                # 16-byte Spill
	vmulss	%xmm7, %xmm15, %xmm5
	vmulss	%xmm7, %xmm14, %xmm6
	vmulss	%xmm7, %xmm11, %xmm7
	vinsertps	$16, %xmm6, %xmm5, %xmm4 # xmm4 = xmm5[0],xmm6[0],xmm5[2,3]
	vmovaps	%xmm4, 608(%rsp)                # 16-byte Spill
	vsubss	%xmm1, %xmm5, %xmm2
	vmovaps	%xmm7, 576(%rsp)                # 16-byte Spill
	vsubss	%xmm3, %xmm7, %xmm3
	vmulss	%xmm2, %xmm2, %xmm4
	vfmadd231ss	%xmm6, %xmm6, %xmm4     # xmm4 = (xmm6 * xmm6) + xmm4
	vfmadd231ss	%xmm3, %xmm3, %xmm4     # xmm4 = (xmm3 * xmm3) + xmm4
	vrsqrtss	%xmm4, %xmm4, %xmm5
	vmulss	%xmm5, %xmm4, %xmm4
	vfmadd213ss	.LCPI0_5(%rip), %xmm5, %xmm4 # xmm4 = (xmm5 * xmm4) + mem
	vmulss	%xmm5, %xmm10, %xmm5
	vmulss	%xmm4, %xmm5, %xmm4
	vmulss	%xmm2, %xmm4, %xmm2
	vmulss	%xmm6, %xmm4, %xmm5
	vinsertps	$16, %xmm5, %xmm2, %xmm2 # xmm2 = xmm2[0],xmm5[0],xmm2[2,3]
	vmovaps	%xmm2, 432(%rsp)                # 16-byte Spill
	vmulss	%xmm3, %xmm4, %xmm2
	vmovaps	%xmm2, 416(%rsp)                # 16-byte Spill
	movl	$1, %eax
	movb	$1, %r10b
	jmp	.LBB0_23
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=4
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=4
	vucomiss	%xmm9, %xmm0
	seta	%cl
	vmovaps	416(%rsp), %xmm5                # 16-byte Reload
	vmovaps	432(%rsp), %xmm8                # 16-byte Reload
	vmovaps	576(%rsp), %xmm1                # 16-byte Reload
	vmovaps	608(%rsp), %xmm10               # 16-byte Reload
	testb	%r10b, %cl
	jne	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=4
	vxorps	%xmm5, %xmm5, %xmm5
	vxorps	%xmm8, %xmm8, %xmm8
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm10, %xmm10, %xmm10
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	656(%rsp), %xmm12               # 16-byte Reload
	jne	.LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_14 Depth=4
	vmovss	.LCPI0_8(%rip), %xmm12          # xmm12 = mem[0],zero,zero,zero
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=4
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.0(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.2(%rip), %xmm7 # xmm7 = mem[0],zero,zero,zero
	vmulss	%xmm2, %xmm13, %xmm6
	vfmsub231ss	%xmm11, %xmm7, %xmm6    # xmm6 = (xmm7 * xmm11) - xmm6
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.1(%rip), %xmm4 # xmm4 = mem[0],zero,zero,zero
	vmulss	%xmm7, %xmm7, %xmm0
	vfnmsub231ss	%xmm2, %xmm2, %xmm0     # xmm0 = -(xmm2 * xmm2) - xmm0
	vfmadd231ss	%xmm4, %xmm4, %xmm0     # xmm0 = (xmm4 * xmm4) + xmm0
	vfmadd231ss	%xmm6, %xmm6, %xmm0     # xmm0 = (xmm6 * xmm6) + xmm0
	vucomiss	%xmm9, %xmm0
	vmovss	%xmm14, 16(%rsp)                # 4-byte Spill
	jbe	.LBB0_28
# %bb.29:                               #   in Loop: Header=BB0_14 Depth=4
	vsqrtss	%xmm0, %xmm0, %xmm4
	vaddss	%xmm6, %xmm4, %xmm6
	vbroadcastss	.LCPI0_4(%rip), %xmm4   # xmm4 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vxorps	%xmm4, %xmm6, %xmm3
	xorl	%r9d, %r9d
	vucomiss	%xmm9, %xmm6
	jae	.LBB0_32
# %bb.30:                               #   in Loop: Header=BB0_14 Depth=4
	vucomiss	%xmm3, %xmm12
	jbe	.LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_14 Depth=4
	vmulss	%xmm6, %xmm15, %xmm4
	vmovaps	%xmm5, 48(%rsp)                 # 16-byte Spill
	vmulss	%xmm6, %xmm14, %xmm5
	vmulss	%xmm6, %xmm11, %xmm6
	vmovaps	%xmm13, %xmm14
	vmovaps	%xmm3, %xmm13
	vinsertps	$16, %xmm5, %xmm4, %xmm3 # xmm3 = xmm4[0],xmm5[0],xmm4[2,3]
	vmovaps	%xmm3, 624(%rsp)                # 16-byte Spill
	vmovaps	%xmm13, %xmm3
	vmovaps	%xmm14, %xmm13
	vsubss	%xmm2, %xmm4, %xmm2
	vmovaps	%xmm6, 640(%rsp)                # 16-byte Spill
	vsubss	%xmm7, %xmm6, %xmm4
	vmulss	%xmm2, %xmm2, %xmm6
	vfmadd231ss	%xmm5, %xmm5, %xmm6     # xmm6 = (xmm5 * xmm5) + xmm6
	vfmadd231ss	%xmm4, %xmm4, %xmm6     # xmm6 = (xmm4 * xmm4) + xmm6
	vrsqrtss	%xmm6, %xmm6, %xmm7
	vmulss	%xmm7, %xmm6, %xmm6
	vfmadd213ss	.LCPI0_5(%rip), %xmm7, %xmm6 # xmm6 = (xmm7 * xmm6) + mem
	vmulss	.LCPI0_6(%rip), %xmm7, %xmm7
	vmulss	%xmm6, %xmm7, %xmm6
	vmulss	%xmm2, %xmm6, %xmm2
	vmulss	%xmm5, %xmm6, %xmm5
	vinsertps	$16, %xmm5, %xmm2, %xmm2 # xmm2 = xmm2[0],xmm5[0],xmm2[2,3]
	vmovaps	48(%rsp), %xmm5                 # 16-byte Reload
	vmovaps	%xmm2, 480(%rsp)                # 16-byte Spill
	vmulss	%xmm4, %xmm6, %xmm2
	vmovaps	%xmm2, 400(%rsp)                # 16-byte Spill
	movl	$1, %eax
	movb	$1, %r9b
	jmp	.LBB0_32
	.p2align	4, 0x90
.LBB0_28:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	672(%rsp), %xmm3                # 16-byte Reload
.LBB0_32:                               #   in Loop: Header=BB0_14 Depth=4
	vucomiss	%xmm9, %xmm0
	seta	%cl
	vmovaps	400(%rsp), %xmm4                # 16-byte Reload
	vmovaps	480(%rsp), %xmm6                # 16-byte Reload
	vxorps	%xmm2, %xmm2, %xmm2
	vmovaps	640(%rsp), %xmm9                # 16-byte Reload
	vmovaps	624(%rsp), %xmm14               # 16-byte Reload
	vmovaps	%xmm3, 672(%rsp)                # 16-byte Spill
	vmovaps	%xmm3, %xmm0
	testb	%r9b, %cl
	jne	.LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	%xmm5, %xmm4
	vmovaps	%xmm8, %xmm6
	vmovaps	%xmm1, %xmm9
	vmovaps	%xmm10, %xmm14
	vmovaps	%xmm12, %xmm0
.LBB0_34:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	%xmm6, %xmm12
	vmovaps	%xmm4, %xmm1
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.0(%rip), %xmm4 # xmm4 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.2(%rip), %xmm5 # xmm5 = mem[0],zero,zero,zero
	vmulss	%xmm4, %xmm13, %xmm6
	vfmsub231ss	%xmm11, %xmm5, %xmm6    # xmm6 = (xmm5 * xmm11) - xmm6
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.1(%rip), %xmm7 # xmm7 = mem[0],zero,zero,zero
	vmulss	%xmm5, %xmm5, %xmm3
	vfnmsub231ss	%xmm4, %xmm4, %xmm3     # xmm3 = -(xmm4 * xmm4) - xmm3
	vfmadd231ss	%xmm7, %xmm7, %xmm3     # xmm3 = (xmm7 * xmm7) + xmm3
	vfmadd231ss	%xmm6, %xmm6, %xmm3     # xmm3 = (xmm6 * xmm6) + xmm3
	vucomiss	%xmm2, %xmm3
	vmovss	%xmm0, 48(%rsp)                 # 4-byte Spill
	jbe	.LBB0_35
# %bb.36:                               #   in Loop: Header=BB0_14 Depth=4
	vsqrtss	%xmm3, %xmm3, %xmm7
	vaddss	%xmm6, %xmm7, %xmm6
	vbroadcastss	.LCPI0_4(%rip), %xmm7   # xmm7 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vxorps	%xmm7, %xmm6, %xmm7
	xorl	%r11d, %r11d
	vxorps	%xmm8, %xmm8, %xmm8
	vucomiss	%xmm2, %xmm6
	vmovaps	%xmm7, 384(%rsp)                # 16-byte Spill
	jae	.LBB0_37
# %bb.38:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	%xmm0, %xmm2
	vmovaps	%xmm15, %xmm0
	vmovaps	%xmm13, %xmm15
	vucomiss	%xmm7, %xmm2
	jbe	.LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_14 Depth=4
	vmulss	%xmm0, %xmm6, %xmm7
	vmulss	16(%rsp), %xmm6, %xmm2          # 4-byte Folded Reload
	vmulss	%xmm6, %xmm11, %xmm6
	vinsertps	$16, %xmm2, %xmm7, %xmm0 # xmm0 = xmm7[0],xmm2[0],xmm7[2,3]
	vmovaps	%xmm0, 560(%rsp)                # 16-byte Spill
	vsubss	%xmm4, %xmm7, %xmm4
	vmovaps	%xmm6, 592(%rsp)                # 16-byte Spill
	vsubss	%xmm5, %xmm6, %xmm5
	vmulss	%xmm4, %xmm4, %xmm6
	vfmadd231ss	%xmm2, %xmm2, %xmm6     # xmm6 = (xmm2 * xmm2) + xmm6
	vfmadd231ss	%xmm5, %xmm5, %xmm6     # xmm6 = (xmm5 * xmm5) + xmm6
	vrsqrtss	%xmm6, %xmm6, %xmm7
	vmulss	%xmm7, %xmm6, %xmm6
	vfmadd213ss	.LCPI0_5(%rip), %xmm7, %xmm6 # xmm6 = (xmm7 * xmm6) + mem
	vmovss	.LCPI0_6(%rip), %xmm10          # xmm10 = mem[0],zero,zero,zero
	vmulss	%xmm7, %xmm10, %xmm7
	vmulss	%xmm6, %xmm7, %xmm6
	vmulss	%xmm4, %xmm6, %xmm4
	vmulss	%xmm2, %xmm6, %xmm2
	vinsertps	$16, %xmm2, %xmm4, %xmm0 # xmm0 = xmm4[0],xmm2[0],xmm4[2,3]
	vmovaps	%xmm0, 448(%rsp)                # 16-byte Spill
	vmulss	%xmm5, %xmm6, %xmm0
	vmovaps	%xmm0, 464(%rsp)                # 16-byte Spill
	movl	$1, %eax
	movb	$1, %r11b
	jmp	.LBB0_40
	.p2align	4, 0x90
.LBB0_35:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	%xmm13, %xmm15
	vxorps	%xmm8, %xmm8, %xmm8
.LBB0_40:                               #   in Loop: Header=BB0_14 Depth=4
	vmovss	32(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmovaps	%xmm12, %xmm2
	vmulss	%xmm0, %xmm11, %xmm10
	vucomiss	%xmm8, %xmm3
	seta	%cl
	vmovaps	464(%rsp), %xmm0                # 16-byte Reload
	vmovaps	448(%rsp), %xmm8                # 16-byte Reload
	vmovaps	592(%rsp), %xmm12               # 16-byte Reload
	vmovaps	560(%rsp), %xmm13               # 16-byte Reload
	andb	%r11b, %cl
	jne	.LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	%xmm1, %xmm0
	vmovaps	%xmm2, %xmm8
	vmovaps	%xmm9, %xmm12
	vmovaps	%xmm14, %xmm13
.LBB0_42:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	vbroadcastss	.LCPI0_4(%rip), %xmm0   # xmm0 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vmovaps	%xmm0, 240(%rsp)                # 16-byte Spill
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+16(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+20(%rip), %xmm3 # xmm3 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+24(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	vmulss	%xmm0, %xmm15, %xmm6
	vfmadd231ss	%xmm10, %xmm3, %xmm6    # xmm6 = (xmm3 * xmm10) + xmm6
	vfnmadd231ss	%xmm11, %xmm2, %xmm6    # xmm6 = -(xmm2 * xmm11) + xmm6
	vbroadcastss	.LCPI0_9(%rip), %xmm4   # xmm4 = [NaN,NaN,NaN,NaN]
	vmovaps	%xmm4, 704(%rsp)                # 16-byte Spill
	vandps	%xmm4, %xmm6, %xmm4
	vmovss	.LCPI0_10(%rip), %xmm14         # xmm14 = mem[0],zero,zero,zero
	vmovaps	%xmm4, 368(%rsp)                # 16-byte Spill
	vucomiss	%xmm14, %xmm4
	vxorps	%xmm9, %xmm9, %xmm9
	jae	.LBB0_43
.LBB0_48:                               #   in Loop: Header=BB0_14 Depth=4
	testl	%eax, %eax
	sete	%sil
	jmp	.LBB0_49
	.p2align	4, 0x90
.LBB0_43:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	384(%rsp), %xmm4                # 16-byte Reload
	testb	%cl, %cl
	jne	.LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_14 Depth=4
	vmovss	48(%rsp), %xmm4                 # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
.LBB0_45:                               #   in Loop: Header=BB0_14 Depth=4
	vmulss	_ZZL12ao_scanlinesiiiiPfE5plane+4(%rip), %xmm3, %xmm3
	vfmadd132ss	_ZZL12ao_scanlinesiiiiPfE5plane(%rip), %xmm3, %xmm0 # xmm0 = (xmm0 * mem) + xmm3
	vfmadd132ss	_ZZL12ao_scanlinesiiiiPfE5plane+8(%rip), %xmm0, %xmm2 # xmm2 = (xmm2 * mem) + xmm0
	vdivss	%xmm6, %xmm2, %xmm0
	xorl	%r13d, %r13d
	vucomiss	%xmm9, %xmm0
	jbe	.LBB0_48
# %bb.46:                               #   in Loop: Header=BB0_14 Depth=4
	vucomiss	%xmm4, %xmm0
	jae	.LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_14 Depth=4
	vxorps	240(%rsp), %xmm11, %xmm1        # 16-byte Folded Reload
	vmulss	%xmm0, %xmm15, %xmm2
	vmulss	%xmm0, %xmm10, %xmm3
	vinsertps	$16, %xmm3, %xmm2, %xmm2 # xmm2 = xmm2[0],xmm3[0],xmm2[2,3]
	vmovaps	%xmm2, 544(%rsp)                # 16-byte Spill
	vmulss	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, 528(%rsp)                # 16-byte Spill
	vmovsd	_ZZL12ao_scanlinesiiiiPfE5plane+16(%rip), %xmm0 # xmm0 = mem[0],zero
	vmovaps	%xmm0, 512(%rsp)                # 16-byte Spill
	movb	$1, %r13b
	vmovsd	_ZZL12ao_scanlinesiiiiPfE5plane+24(%rip), %xmm0 # xmm0 = mem[0],zero
	vmovaps	%xmm0, 496(%rsp)                # 16-byte Spill
.LBB0_49:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	352(%rsp), %xmm4                # 16-byte Reload
	vmovaps	368(%rsp), %xmm0                # 16-byte Reload
	vucomiss	%xmm14, %xmm0
	setae	%al
	andb	%r13b, %al
	movl	%eax, %ecx
	orb	%sil, %cl
	vmovaps	544(%rsp), %xmm1                # 16-byte Reload
	vmovaps	528(%rsp), %xmm2                # 16-byte Reload
	vmovaps	512(%rsp), %xmm3                # 16-byte Reload
	vmovaps	496(%rsp), %xmm0                # 16-byte Reload
	testb	%al, %al
	jne	.LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	%xmm4, %xmm1
	vmovaps	272(%rsp), %xmm2                # 16-byte Reload
	vmovaps	192(%rsp), %xmm3                # 16-byte Reload
	vmovaps	176(%rsp), %xmm0                # 16-byte Reload
.LBB0_51:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	%xmm1, %xmm5
	vmovaps	%xmm2, 272(%rsp)                # 16-byte Spill
	vmovaps	%xmm3, 192(%rsp)                # 16-byte Spill
	vmovaps	%xmm0, 176(%rsp)                # 16-byte Spill
	testb	$1, %cl
	jne	.LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	%xmm13, %xmm5
	vmovaps	%xmm12, 272(%rsp)               # 16-byte Spill
	vmovaps	%xmm8, 192(%rsp)                # 16-byte Spill
	vmovaps	32(%rsp), %xmm1                 # 16-byte Reload
	vmovaps	%xmm1, 176(%rsp)                # 16-byte Spill
.LBB0_53:                               #   in Loop: Header=BB0_14 Depth=4
	testb	%al, %al
	vmovaps	%xmm5, 352(%rsp)                # 16-byte Spill
	jne	.LBB0_56
# %bb.54:                               #   in Loop: Header=BB0_14 Depth=4
	testb	$1, %sil
	je	.LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	%xmm0, 176(%rsp)                # 16-byte Spill
	vmovaps	208(%rsp), %xmm6                # 16-byte Reload
	vmovaps	256(%rsp), %xmm4                # 16-byte Reload
	vmovss	.LCPI0_6(%rip), %xmm10          # xmm10 = mem[0],zero,zero,zero
	vxorps	%xmm0, %xmm0, %xmm0
	testb	$1, %sil
	je	.LBB0_76
	jmp	.LBB0_77
	.p2align	4, 0x90
.LBB0_56:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	192(%rsp), %xmm0                # 16-byte Reload
	vmovshdup	%xmm0, %xmm11           # xmm11 = xmm0[1,1,3,3]
	vmovss	.LCPI0_12(%rip), %xmm1          # xmm1 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm0
	setb	%cl
	vucomiss	.LCPI0_13(%rip), %xmm0
	seta	%al
	vxorps	%xmm4, %xmm4, %xmm4
	andb	%cl, %al
	je	.LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_14 Depth=4
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	208(%rsp), %xmm6                # 16-byte Reload
	jmp	.LBB0_64
	.p2align	4, 0x90
.LBB0_58:                               #   in Loop: Header=BB0_14 Depth=4
	vucomiss	%xmm1, %xmm11
	vmovaps	208(%rsp), %xmm6                # 16-byte Reload
	jae	.LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_14 Depth=4
	movb	$1, %dl
	vucomiss	.LCPI0_13(%rip), %xmm11
	vxorps	%xmm0, %xmm0, %xmm0
	ja	.LBB0_64
.LBB0_60:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	176(%rsp), %xmm0                # 16-byte Reload
	vucomiss	%xmm1, %xmm0
	setb	%cl
	vucomiss	.LCPI0_13(%rip), %xmm0
	seta	%dl
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 24(%rsp)                 # 4-byte Spill
	testb	%dl, %cl
	jne	.LBB0_61
# %bb.62:                               #   in Loop: Header=BB0_14 Depth=4
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	.LCPI0_3(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vmovss	%xmm1, 24(%rsp)                 # 4-byte Spill
	jmp	.LBB0_63
.LBB0_37:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	%xmm13, %xmm15
	jmp	.LBB0_40
.LBB0_61:                               #   in Loop: Header=BB0_14 Depth=4
	vmovss	.LCPI0_3(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
.LBB0_63:                               #   in Loop: Header=BB0_14 Depth=4
	xorl	%edx, %edx
.LBB0_64:                               #   in Loop: Header=BB0_14 Depth=4
	vmovss	.LCPI0_3(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	vxorps	%xmm7, %xmm7, %xmm7
	testb	$1, %dl
	jne	.LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_14 Depth=4
	vxorps	%xmm3, %xmm3, %xmm3
	vmovss	24(%rsp), %xmm7                 # 4-byte Reload
                                        # xmm7 = mem[0],zero,zero,zero
.LBB0_66:                               #   in Loop: Header=BB0_14 Depth=4
	movl	%r11d, 88(%rsp)                 # 4-byte Spill
	movl	%r10d, 92(%rsp)                 # 4-byte Spill
	movl	%r9d, 96(%rsp)                  # 4-byte Spill
	movl	%r13d, 100(%rsp)                # 4-byte Spill
	movl	%edx, 104(%rsp)                 # 4-byte Spill
	movb	%sil, 15(%rsp)                  # 1-byte Spill
	vmovshdup	%xmm5, %xmm1            # xmm1 = xmm5[1,1,3,3]
	vmovaps	%xmm11, %xmm2
	vfmadd132ss	.LCPI0_11(%rip), %xmm1, %xmm2 # xmm2 = (xmm2 * mem) + xmm1
	vmovaps	%xmm2, 48(%rsp)                 # 16-byte Spill
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	.LCPI0_3(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	testb	%al, %al
	jne	.LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	%xmm3, %xmm1
	vmovaps	%xmm7, %xmm2
.LBB0_68:                               #   in Loop: Header=BB0_14 Depth=4
	vmovss	.LCPI0_11(%rip), %xmm3          # xmm3 = mem[0],zero,zero,zero
	vmovaps	%xmm3, %xmm7
	vmovaps	192(%rsp), %xmm8                # 16-byte Reload
	vfmadd213ss	%xmm5, %xmm8, %xmm7     # xmm7 = (xmm8 * xmm7) + xmm5
	vmovss	%xmm7, 160(%rsp)                # 4-byte Spill
	vmovaps	176(%rsp), %xmm7                # 16-byte Reload
	vfmadd213ss	272(%rsp), %xmm7, %xmm3 # 16-byte Folded Reload
                                        # xmm3 = (xmm7 * xmm3) + mem
	vmovss	%xmm3, 156(%rsp)                # 4-byte Spill
	vmulss	%xmm0, %xmm11, %xmm9
	vfmsub231ss	%xmm7, %xmm1, %xmm9     # xmm9 = (xmm1 * xmm7) - xmm9
	vmulss	%xmm7, %xmm2, %xmm3
	vfmsub231ss	%xmm0, %xmm8, %xmm3     # xmm3 = (xmm8 * xmm0) - xmm3
	vmulss	%xmm1, %xmm8, %xmm0
	vfmsub231ss	%xmm2, %xmm11, %xmm0    # xmm0 = (xmm11 * xmm2) - xmm0
	vmulss	%xmm9, %xmm9, %xmm1
	vfmadd231ss	%xmm0, %xmm0, %xmm1     # xmm1 = (xmm0 * xmm0) + xmm1
	vfmadd231ss	%xmm3, %xmm3, %xmm1     # xmm1 = (xmm3 * xmm3) + xmm1
	vrsqrtss	%xmm1, %xmm1, %xmm2
	vmulss	%xmm2, %xmm1, %xmm1
	vmovss	.LCPI0_5(%rip), %xmm10          # xmm10 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm10, %xmm2, %xmm1    # xmm1 = (xmm2 * xmm1) + xmm10
	vmovss	.LCPI0_6(%rip), %xmm12          # xmm12 = mem[0],zero,zero,zero
	vmulss	%xmm2, %xmm12, %xmm2
	vmulss	%xmm1, %xmm2, %xmm1
	vmulss	%xmm1, %xmm9, %xmm2
	vmulss	%xmm3, %xmm1, %xmm3
	vmulss	%xmm0, %xmm1, %xmm0
	vmulss	%xmm7, %xmm3, %xmm1
	vfmsub231ss	%xmm11, %xmm0, %xmm1    # xmm1 = (xmm0 * xmm11) - xmm1
	vmovss	%xmm0, 144(%rsp)                # 4-byte Spill
	vmulss	%xmm0, %xmm8, %xmm5
	vfmsub231ss	%xmm7, %xmm2, %xmm5     # xmm5 = (xmm2 * xmm7) - xmm5
	vmovaps	%xmm11, 688(%rsp)               # 16-byte Spill
	vmovss	%xmm2, 152(%rsp)                # 4-byte Spill
	vmulss	%xmm2, %xmm11, %xmm2
	vmovss	%xmm3, 148(%rsp)                # 4-byte Spill
	vfmsub231ss	%xmm8, %xmm3, %xmm2     # xmm2 = (xmm3 * xmm8) - xmm2
	vmovss	%xmm1, 140(%rsp)                # 4-byte Spill
	vmulss	%xmm1, %xmm1, %xmm0
	vmovss	%xmm5, 136(%rsp)                # 4-byte Spill
	vfmadd231ss	%xmm5, %xmm5, %xmm0     # xmm0 = (xmm5 * xmm5) + xmm0
	vmovss	%xmm2, 132(%rsp)                # 4-byte Spill
	vfmadd231ss	%xmm2, %xmm2, %xmm0     # xmm0 = (xmm2 * xmm2) + xmm0
	vrsqrtss	%xmm0, %xmm0, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	vfmadd213ss	%xmm10, %xmm1, %xmm0    # xmm0 = (xmm1 * xmm0) + xmm10
	vmulss	%xmm1, %xmm12, %xmm1
	vmulss	%xmm0, %xmm1, %xmm0
	vmovss	%xmm0, 128(%rsp)                # 4-byte Spill
	vmovaps	48(%rsp), %xmm0                 # 16-byte Reload
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 124(%rsp)                # 4-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB0_69
	.p2align	4, 0x90
.LBB0_73:                               #   in Loop: Header=BB0_69 Depth=5
	incl	%r13d
	cmpl	$8, %r13d
	je	.LBB0_74
.LBB0_69:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        #       Parent Loop BB0_13 Depth=3
                                        #         Parent Loop BB0_14 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_70 Depth 6
	movl	$8, %r14d
	jmp	.LBB0_70
	.p2align	4, 0x90
.LBB0_100:                              #   in Loop: Header=BB0_70 Depth=6
	vcmpltss	%xmm14, %xmm1, %xmm1
	vblendvps	%xmm1, %xmm6, %xmm0, %xmm4
	decl	%r14d
	je	.LBB0_73
.LBB0_70:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        #       Parent Loop BB0_13 Depth=3
                                        #         Parent Loop BB0_14 Depth=4
                                        #           Parent Loop BB0_69 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	vmovaps	%xmm4, 256(%rsp)                # 16-byte Spill
	vmovaps	%xmm6, 208(%rsp)                # 16-byte Spill
	callq	drand48
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 32(%rsp)                 # 4-byte Spill
	vsqrtss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 16(%rsp)                 # 4-byte Spill
	callq	drand48
	vmulsd	.LCPI0_14(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	sincosf@PLT
	vxorps	%xmm9, %xmm9, %xmm9
	vmovss	16(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmulss	168(%rsp), %xmm0, %xmm3
	vmulss	172(%rsp), %xmm0, %xmm0
	vmulss	128(%rsp), %xmm0, %xmm4         # 4-byte Folded Reload
	vmovss	.LCPI0_3(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vsubss	32(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vsqrtss	%xmm0, %xmm0, %xmm0
	vmulss	192(%rsp), %xmm0, %xmm1         # 16-byte Folded Reload
	vfmadd231ss	152(%rsp), %xmm3, %xmm1 # 4-byte Folded Reload
                                        # xmm1 = (xmm3 * mem) + xmm1
	vfmadd231ss	140(%rsp), %xmm4, %xmm1 # 4-byte Folded Reload
                                        # xmm1 = (xmm4 * mem) + xmm1
	vmulss	688(%rsp), %xmm0, %xmm2         # 16-byte Folded Reload
	vfmadd231ss	148(%rsp), %xmm3, %xmm2 # 4-byte Folded Reload
                                        # xmm2 = (xmm3 * mem) + xmm2
	vfmadd231ss	136(%rsp), %xmm4, %xmm2 # 4-byte Folded Reload
                                        # xmm2 = (xmm4 * mem) + xmm2
	vmulss	176(%rsp), %xmm0, %xmm0         # 16-byte Folded Reload
	vfmadd231ss	144(%rsp), %xmm3, %xmm0 # 4-byte Folded Reload
                                        # xmm0 = (xmm3 * mem) + xmm0
	vfmadd231ss	132(%rsp), %xmm4, %xmm0 # 4-byte Folded Reload
                                        # xmm0 = (xmm4 * mem) + xmm0
	vmovss	160(%rsp), %xmm10               # 4-byte Reload
                                        # xmm10 = mem[0],zero,zero,zero
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.0(%rip), %xmm10, %xmm5
	vmovss	156(%rsp), %xmm11               # 4-byte Reload
                                        # xmm11 = mem[0],zero,zero,zero
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.2(%rip), %xmm11, %xmm3
	vmulss	48(%rsp), %xmm2, %xmm4          # 16-byte Folded Reload
	vmovaps	%xmm5, %xmm6
	vfmadd213ss	%xmm4, %xmm1, %xmm6     # xmm6 = (xmm1 * xmm6) + xmm4
	vfmadd231ss	%xmm3, %xmm0, %xmm6     # xmm6 = (xmm0 * xmm3) + xmm6
	vmovss	124(%rsp), %xmm12               # 4-byte Reload
                                        # xmm12 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm12, %xmm5, %xmm5    # xmm5 = (xmm5 * xmm5) + xmm12
	vfmadd231ss	%xmm3, %xmm3, %xmm5     # xmm5 = (xmm3 * xmm3) + xmm5
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.1(%rip), %xmm3 # xmm3 = mem[0],zero,zero,zero
	vfnmadd231ss	%xmm3, %xmm3, %xmm5     # xmm5 = -(xmm3 * xmm3) + xmm5
	vfmsub231ss	%xmm6, %xmm6, %xmm5     # xmm5 = (xmm6 * xmm6) - xmm5
	xorl	%eax, %eax
	vucomiss	%xmm9, %xmm5
	vmovss	.LCPI0_8(%rip), %xmm8           # xmm8 = mem[0],zero,zero,zero
	jbe	.LBB0_82
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=6
	vsqrtss	%xmm5, %xmm5, %xmm3
	vaddss	%xmm6, %xmm3, %xmm3
	vucomiss	%xmm9, %xmm3
	setb	%cl
	vucomiss	.LCPI0_7(%rip), %xmm3
	seta	%al
	andb	%cl, %al
	jne	.LBB0_72
# %bb.80:                               #   in Loop: Header=BB0_70 Depth=6
	vmovss	.LCPI0_8(%rip), %xmm8           # xmm8 = mem[0],zero,zero,zero
	jmp	.LBB0_81
	.p2align	4, 0x90
.LBB0_72:                               #   in Loop: Header=BB0_70 Depth=6
	vxorps	240(%rsp), %xmm3, %xmm8         # 16-byte Folded Reload
.LBB0_81:                               #   in Loop: Header=BB0_70 Depth=6
	movzbl	%al, %eax
.LBB0_82:                               #   in Loop: Header=BB0_70 Depth=6
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.0(%rip), %xmm10, %xmm5
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.2(%rip), %xmm11, %xmm7
	vmovaps	%xmm1, %xmm6
	vfmadd213ss	%xmm4, %xmm5, %xmm6     # xmm6 = (xmm5 * xmm6) + xmm4
	vfmadd231ss	%xmm0, %xmm7, %xmm6     # xmm6 = (xmm7 * xmm0) + xmm6
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.1(%rip), %xmm3 # xmm3 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm12, %xmm5, %xmm5    # xmm5 = (xmm5 * xmm5) + xmm12
	vfnmsub231ss	%xmm7, %xmm7, %xmm5     # xmm5 = -(xmm7 * xmm7) - xmm5
	vfmadd231ss	%xmm3, %xmm3, %xmm5     # xmm5 = (xmm3 * xmm3) + xmm5
	vfmadd231ss	%xmm6, %xmm6, %xmm5     # xmm5 = (xmm6 * xmm6) + xmm5
	vucomiss	%xmm9, %xmm5
	jbe	.LBB0_83
# %bb.84:                               #   in Loop: Header=BB0_70 Depth=6
	vsqrtss	%xmm5, %xmm5, %xmm3
	vaddss	%xmm6, %xmm3, %xmm3
	vxorps	240(%rsp), %xmm3, %xmm5         # 16-byte Folded Reload
	vucomiss	%xmm9, %xmm3
	setb	%cl
	vucomiss	%xmm5, %xmm8
	seta	%dl
	testb	%dl, %cl
	cmovnel	%r12d, %eax
	vmovss	.LCPI0_10(%rip), %xmm14         # xmm14 = mem[0],zero,zero,zero
	vmovaps	256(%rsp), %xmm7                # 16-byte Reload
	jne	.LBB0_86
# %bb.85:                               #   in Loop: Header=BB0_70 Depth=6
	vmovaps	%xmm8, %xmm5
.LBB0_86:                               #   in Loop: Header=BB0_70 Depth=6
	vmovaps	%xmm5, %xmm8
	jmp	.LBB0_87
	.p2align	4, 0x90
.LBB0_83:                               #   in Loop: Header=BB0_70 Depth=6
	vmovss	.LCPI0_10(%rip), %xmm14         # xmm14 = mem[0],zero,zero,zero
	vmovaps	256(%rsp), %xmm7                # 16-byte Reload
.LBB0_87:                               #   in Loop: Header=BB0_70 Depth=6
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.0(%rip), %xmm10, %xmm5
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.2(%rip), %xmm11, %xmm3
	vfmadd231ss	%xmm1, %xmm5, %xmm4     # xmm4 = (xmm5 * xmm1) + xmm4
	vfmadd231ss	%xmm0, %xmm3, %xmm4     # xmm4 = (xmm3 * xmm0) + xmm4
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.1(%rip), %xmm6 # xmm6 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm12, %xmm5, %xmm5    # xmm5 = (xmm5 * xmm5) + xmm12
	vfnmsub231ss	%xmm3, %xmm3, %xmm5     # xmm5 = -(xmm3 * xmm3) - xmm5
	vfmadd231ss	%xmm6, %xmm6, %xmm5     # xmm5 = (xmm6 * xmm6) + xmm5
	vfmadd231ss	%xmm4, %xmm4, %xmm5     # xmm5 = (xmm4 * xmm4) + xmm5
	vucomiss	%xmm9, %xmm5
	jbe	.LBB0_91
# %bb.88:                               #   in Loop: Header=BB0_70 Depth=6
	vsqrtss	%xmm5, %xmm5, %xmm3
	vaddss	%xmm4, %xmm3, %xmm3
	vxorps	240(%rsp), %xmm3, %xmm4         # 16-byte Folded Reload
	vucomiss	%xmm9, %xmm3
	setb	%cl
	vucomiss	%xmm4, %xmm8
	seta	%dl
	testb	%dl, %cl
	cmovnel	%r12d, %eax
	jne	.LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_70 Depth=6
	vmovaps	%xmm8, %xmm4
.LBB0_90:                               #   in Loop: Header=BB0_70 Depth=6
	vmovaps	%xmm4, %xmm8
.LBB0_91:                               #   in Loop: Header=BB0_70 Depth=6
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+16(%rip), %xmm4 # xmm4 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+20(%rip), %xmm6 # xmm6 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+24(%rip), %xmm5 # xmm5 = mem[0],zero,zero,zero
	vmulss	%xmm1, %xmm4, %xmm1
	vfmadd213ss	%xmm1, %xmm6, %xmm2     # xmm2 = (xmm6 * xmm2) + xmm1
	vfmadd213ss	%xmm2, %xmm5, %xmm0     # xmm0 = (xmm5 * xmm0) + xmm2
	vandps	704(%rsp), %xmm0, %xmm1         # 16-byte Folded Reload
	vucomiss	%xmm14, %xmm1
	jae	.LBB0_92
.LBB0_95:                               #   in Loop: Header=BB0_70 Depth=6
	vaddss	.LCPI0_3(%rip), %xmm7, %xmm0
	testl	%eax, %eax
	je	.LBB0_97
# %bb.96:                               #   in Loop: Header=BB0_70 Depth=6
	vmovaps	%xmm0, %xmm7
.LBB0_97:                               #   in Loop: Header=BB0_70 Depth=6
	vmovaps	%xmm7, %xmm6
	vmovss	164(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	testb	$1, %bpl
	jne	.LBB0_100
	jmp	.LBB0_99
	.p2align	4, 0x90
.LBB0_92:                               #   in Loop: Header=BB0_70 Depth=6
	vmulss	%xmm4, %xmm10, %xmm2
	vfmadd231ss	48(%rsp), %xmm6, %xmm2  # 16-byte Folded Reload
                                        # xmm2 = (xmm6 * mem) + xmm2
	vfmadd231ss	%xmm11, %xmm5, %xmm2    # xmm2 = (xmm5 * xmm11) + xmm2
	vfnmadd231ss	_ZZL12ao_scanlinesiiiiPfE5plane+4(%rip), %xmm6, %xmm2 # xmm2 = -(xmm6 * mem) + xmm2
	vfnmadd231ss	_ZZL12ao_scanlinesiiiiPfE5plane(%rip), %xmm4, %xmm2 # xmm2 = -(xmm4 * mem) + xmm2
	vfmsub231ss	_ZZL12ao_scanlinesiiiiPfE5plane+8(%rip), %xmm5, %xmm2 # xmm2 = (xmm5 * mem) - xmm2
	vdivss	%xmm0, %xmm2, %xmm0
	xorl	%ebp, %ebp
	vucomiss	%xmm9, %xmm0
	jbe	.LBB0_95
# %bb.93:                               #   in Loop: Header=BB0_70 Depth=6
	vucomiss	%xmm8, %xmm0
	jae	.LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_70 Depth=6
	vaddss	.LCPI0_3(%rip), %xmm7, %xmm0
	vmovss	%xmm0, 164(%rsp)                # 4-byte Spill
	movb	$1, %bpl
	vmovaps	208(%rsp), %xmm6                # 16-byte Reload
	vmovss	164(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	testb	$1, %bpl
	jne	.LBB0_100
.LBB0_99:                               #   in Loop: Header=BB0_70 Depth=6
	vmovaps	%xmm6, %xmm0
	jmp	.LBB0_100
	.p2align	4, 0x90
.LBB0_74:                               #   in Loop: Header=BB0_14 Depth=4
	vmovss	.LCPI0_15(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vfmadd213ss	.LCPI0_3(%rip), %xmm0, %xmm4 # xmm4 = (xmm0 * xmm4) + mem
	movq	328(%rsp), %r14                 # 8-byte Reload
	vmovss	.LCPI0_6(%rip), %xmm10          # xmm10 = mem[0],zero,zero,zero
	movb	15(%rsp), %sil                  # 1-byte Reload
	movl	104(%rsp), %edx                 # 4-byte Reload
	movl	100(%rsp), %r13d                # 4-byte Reload
	movl	96(%rsp), %r9d                  # 4-byte Reload
	movl	92(%rsp), %r10d                 # 4-byte Reload
	movl	88(%rsp), %r11d                 # 4-byte Reload
	movq	344(%rsp), %r8                  # 8-byte Reload
	movq	336(%rsp), %rdi                 # 8-byte Reload
	vxorps	%xmm0, %xmm0, %xmm0
	testb	$1, %sil
	jne	.LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	%xmm4, %xmm0
.LBB0_77:                               #   in Loop: Header=BB0_14 Depth=4
	testb	$1, %r13b
	jne	.LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_14 Depth=4
	vmovaps	%xmm0, %xmm4
	jmp	.LBB0_79
.LBB0_20:
	addq	$728, %rsp                      # imm = 0x2D8
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
	.size	_Z9ao_serialiiPf, .Lfunc_end0-_Z9ao_serialiiPf
	.cfi_endproc
                                        # -- End function
	.type	_ZZL12ao_scanlinesiiiiPfE5plane,@object # @_ZZL12ao_scanlinesiiiiPfE5plane
	.local	_ZZL12ao_scanlinesiiiiPfE5plane
	.comm	_ZZL12ao_scanlinesiiiiPfE5plane,32,8
	.type	_ZGVZL12ao_scanlinesiiiiPfE5plane,@object # @_ZGVZL12ao_scanlinesiiiiPfE5plane
	.local	_ZGVZL12ao_scanlinesiiiiPfE5plane
	.comm	_ZGVZL12ao_scanlinesiiiiPfE5plane,8,8
	.type	_ZGVZL12ao_scanlinesiiiiPfE7spheres,@object # @_ZGVZL12ao_scanlinesiiiiPfE7spheres
	.local	_ZGVZL12ao_scanlinesiiiiPfE7spheres
	.comm	_ZGVZL12ao_scanlinesiiiiPfE7spheres,8,8
	.type	_ZZL12ao_scanlinesiiiiPfE7spheres.0.1,@object # @_ZZL12ao_scanlinesiiiiPfE7spheres.0.1
	.local	_ZZL12ao_scanlinesiiiiPfE7spheres.0.1
	.comm	_ZZL12ao_scanlinesiiiiPfE7spheres.0.1,4,16
	.type	_ZZL12ao_scanlinesiiiiPfE7spheres.1.1,@object # @_ZZL12ao_scanlinesiiiiPfE7spheres.1.1
	.local	_ZZL12ao_scanlinesiiiiPfE7spheres.1.1
	.comm	_ZZL12ao_scanlinesiiiiPfE7spheres.1.1,4,16
	.type	_ZZL12ao_scanlinesiiiiPfE7spheres.2.1,@object # @_ZZL12ao_scanlinesiiiiPfE7spheres.2.1
	.local	_ZZL12ao_scanlinesiiiiPfE7spheres.2.1
	.comm	_ZZL12ao_scanlinesiiiiPfE7spheres.2.1,4,8
	.type	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.0,@object # @_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.0
	.local	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.0
	.comm	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.0,4,16
	.type	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.2,@object # @_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.2
	.local	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.2
	.comm	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.2,4,8
	.type	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.0,@object # @_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.0
	.local	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.0
	.comm	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.0,4,16
	.type	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.2,@object # @_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.2
	.local	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.2
	.comm	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.2,4,8
	.type	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.0,@object # @_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.0
	.local	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.0
	.comm	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.0,4,8
	.type	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.2,@object # @_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.2
	.local	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.2
	.comm	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.2,4,8
	.ident	"clang version 12.0.0"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZZL12ao_scanlinesiiiiPfE5plane
	.addrsig_sym _ZGVZL12ao_scanlinesiiiiPfE5plane
	.addrsig_sym _ZGVZL12ao_scanlinesiiiiPfE7spheres

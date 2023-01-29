	.text
	.file	"ao_serial.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _Z9ao_serialiiPf
.LCPI0_0:
	.long	0x3f000000                      # float 0.5
.LCPI0_1:
	.long	0x3f800000                      # float 1
.LCPI0_2:
	.long	0x80000000                      # float -0
.LCPI0_3:
	.long	0xc0400000                      # float -3
.LCPI0_4:
	.long	0xbf000000                      # float -0.5
.LCPI0_5:
	.long	0x5bb1a2bc                      # float 9.99999984E+16
.LCPI0_6:
	.long	0xdbb1a2bc                      # float -9.99999984E+16
.LCPI0_7:
	.long	0x7fffffff                      # float NaN
.LCPI0_8:
	.long	0x233877aa                      # float 9.99999984E-18
.LCPI0_9:
	.long	0x38d1b717                      # float 9.99999974E-5
.LCPI0_10:
	.long	0x3f19999a                      # float 0.600000024
.LCPI0_11:
	.long	0xbf19999a                      # float -0.600000024
.LCPI0_13:
	.long	0xbc800000                      # float -0.015625
.LCPI0_14:
	.long	0x3e800000                      # float 0.25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_12:
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
	subq	$328, %rsp                      # imm = 0x148
	.cfi_def_cfa_offset 384
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	movl	%esi, %ebx
	movl	%edi, 8(%rsp)                   # 4-byte Spill
	movb	_ZGVZL12ao_scanlinesiiiiPfE5plane(%rip), %al
	testb	%al, %al
	je	.LBB0_1
.LBB0_3:
	movb	_ZGVZL12ao_scanlinesiiiiPfE7spheres(%rip), %al
	testb	%al, %al
	je	.LBB0_4
.LBB0_6:
	xorl	%edi, %edi
	callq	srand48
	testl	%ebx, %ebx
	jle	.LBB0_16
# %bb.7:
	movl	8(%rsp), %eax                   # 4-byte Reload
	vcvtsi2ss	%eax, %xmm0, %xmm0
	vmovss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vmovss	%xmm0, 76(%rsp)                 # 4-byte Spill
	vmulss	%xmm1, %xmm0, %xmm2
	vcvtsi2ss	%ebx, %xmm3, %xmm0
	vmulss	%xmm1, %xmm0, %xmm1
	vmovss	%xmm1, 64(%rsp)                 # 4-byte Spill
	vmovss	%xmm2, 68(%rsp)                 # 4-byte Spill
	vmulss	%xmm0, %xmm2, %xmm1
	cltq
	movl	%ebx, %ecx
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	movq	%rax, 200(%rsp)                 # 8-byte Spill
	movl	%eax, %eax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	vmovss	.LCPI0_1(%rip), %xmm11          # xmm11 = mem[0],zero,zero,zero
	vdivss	%xmm1, %xmm11, %xmm1
	vmovss	%xmm1, 72(%rsp)                 # 4-byte Spill
	vdivss	%xmm0, %xmm11, %xmm0
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	vaddss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 88(%rsp)                 # 4-byte Spill
	vmovss	.LCPI0_3(%rip), %xmm12          # xmm12 = mem[0],zero,zero,zero
	vmovss	.LCPI0_4(%rip), %xmm13          # xmm13 = mem[0],zero,zero,zero
	vxorps	%xmm14, %xmm14, %xmm14
	leaq	148(%rsp), %rbp
	leaq	144(%rsp), %rbx
	movl	$1, %r14d
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	incq	%rcx
	movq	%rcx, %rax
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	cmpq	208(%rsp), %rcx                 # 8-byte Folded Reload
	je	.LBB0_16
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_12 Depth 4
                                        #           Child Loop BB0_27 Depth 5
                                        #             Child Loop BB0_28 Depth 6
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	jle	.LBB0_15
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rax, %rcx
	imulq	200(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	vxorps	%xmm9, %xmm9, %xmm9
	vcvtsi2ss	%eax, %xmm9, %xmm0
	vmovss	64(%rsp), %xmm1                 # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vsubss	%xmm0, %xmm1, %xmm0
	vmovss	%xmm0, 92(%rsp)                 # 4-byte Spill
	xorl	%ecx, %ecx
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_10 Depth=2
	vmovss	.LCPI0_14(%rip), %xmm3          # xmm3 = mem[0],zero,zero,zero
	vmulss	%xmm3, %xmm0, %xmm0
	movq	152(%rsp), %rax                 # 8-byte Reload
	vmovss	%xmm0, (%rax,%r13,4)
	vmulss	%xmm3, %xmm1, %xmm0
	vmovss	%xmm0, 4(%rax,%r13,4)
	vmulss	%xmm3, %xmm2, %xmm0
	vmovss	%xmm0, 8(%rax,%r13,4)
	movq	232(%rsp), %rcx                 # 8-byte Reload
	incq	%rcx
	cmpq	216(%rsp), %rcx                 # 8-byte Folded Reload
	je	.LBB0_15
.LBB0_10:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_12 Depth 4
                                        #           Child Loop BB0_27 Depth 5
                                        #             Child Loop BB0_28 Depth 6
	movq	224(%rsp), %rax                 # 8-byte Reload
	addq	%rcx, %rax
	leaq	(%rax,%rax,2), %r13
	movq	%rcx, 232(%rsp)                 # 8-byte Spill
	vxorps	%xmm9, %xmm9, %xmm9
	vcvtsi2ss	%ecx, %xmm9, %xmm0
	vsubss	68(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmovss	%xmm0, 80(%rsp)                 # 4-byte Spill
	vxorps	%xmm3, %xmm3, %xmm3
	movb	$1, %al
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_54:                               #   in Loop: Header=BB0_11 Depth=3
	vmovss	.LCPI0_0(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	testb	$1, 84(%rsp)                    # 1-byte Folded Reload
	movl	$0, %eax
	je	.LBB0_14
.LBB0_11:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_12 Depth 4
                                        #           Child Loop BB0_27 Depth 5
                                        #             Child Loop BB0_28 Depth 6
	movl	%eax, 84(%rsp)                  # 4-byte Spill
	vaddss	80(%rsp), %xmm3, %xmm0          # 4-byte Folded Reload
	vmulss	76(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmulss	72(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmovaps	%xmm0, 240(%rsp)                # 16-byte Spill
	vfmadd213ss	%xmm11, %xmm0, %xmm0    # xmm0 = (xmm0 * xmm0) + xmm11
	vmovss	%xmm0, 96(%rsp)                 # 4-byte Spill
	movb	$1, %cl
	vmovss	.LCPI0_2(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_52:                               #   in Loop: Header=BB0_12 Depth=4
	vmovss	.LCPI0_1(%rip), %xmm11          # xmm11 = mem[0],zero,zero,zero
	vfmadd132ss	.LCPI0_13(%rip), %xmm11, %xmm2 # xmm2 = (xmm2 * mem) + xmm11
	vmovss	.LCPI0_3(%rip), %xmm12          # xmm12 = mem[0],zero,zero,zero
	vmovss	.LCPI0_4(%rip), %xmm13          # xmm13 = mem[0],zero,zero,zero
	movl	100(%rsp), %ecx                 # 4-byte Reload
.LBB0_53:                               #   in Loop: Header=BB0_12 Depth=4
	movq	152(%rsp), %rax                 # 8-byte Reload
	vaddss	(%rax,%r13,4), %xmm2, %xmm0
	vmovss	%xmm0, (%rax,%r13,4)
	vaddss	4(%rax,%r13,4), %xmm2, %xmm1
	vmovss	%xmm1, 4(%rax,%r13,4)
	vaddss	8(%rax,%r13,4), %xmm2, %xmm2
	vmovss	%xmm2, 8(%rax,%r13,4)
	vmovaps	%xmm13, %xmm3
	testb	$1, %cl
	movl	$0, %ecx
	je	.LBB0_54
.LBB0_12:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_27 Depth 5
                                        #             Child Loop BB0_28 Depth 6
	vaddss	92(%rsp), %xmm3, %xmm0          # 4-byte Folded Reload
	vmulss	88(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmovaps	240(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$16, %xmm0, %xmm1, %xmm3 # xmm3 = xmm1[0],xmm0[0],xmm1[2,3]
	vfmadd213ss	96(%rsp), %xmm0, %xmm0  # 4-byte Folded Reload
                                        # xmm0 = (xmm0 * xmm0) + mem
	vrsqrtss	%xmm0, %xmm0, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	vfmadd213ss	%xmm12, %xmm1, %xmm0    # xmm0 = (xmm1 * xmm0) + xmm12
	vmulss	%xmm1, %xmm13, %xmm1
	vmulss	%xmm0, %xmm1, %xmm1
	vbroadcastss	%xmm1, %xmm2
	vmulps	%xmm3, %xmm2, %xmm0
	vxorps	%xmm5, %xmm5, %xmm5
	vxorps	%xmm4, %xmm4, %xmm4
	vmovaps	%xmm4, 32(%rsp)                 # 16-byte Spill
	vfnmsub213ps	%xmm5, %xmm2, %xmm3     # xmm3 = -(xmm2 * xmm3) - xmm5
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.0(%rip), %xmm5 # xmm5 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.2(%rip), %xmm6 # xmm6 = mem[0],zero,zero,zero
	vmulss	%xmm5, %xmm0, %xmm2
	vfmsub231ss	%xmm6, %xmm1, %xmm2     # xmm2 = (xmm1 * xmm6) - xmm2
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.1(%rip), %xmm7 # xmm7 = mem[0],zero,zero,zero
	vmulss	%xmm6, %xmm6, %xmm4
	vfmadd231ss	%xmm5, %xmm5, %xmm4     # xmm4 = (xmm5 * xmm5) + xmm4
	vfnmadd231ss	%xmm7, %xmm7, %xmm4     # xmm4 = -(xmm7 * xmm7) + xmm4
	vfmsub231ss	%xmm2, %xmm2, %xmm4     # xmm4 = (xmm2 * xmm2) - xmm4
	xorl	%eax, %eax
	vucomiss	%xmm14, %xmm4
	jbe	.LBB0_13
# %bb.33:                               #   in Loop: Header=BB0_12 Depth=4
	vsqrtss	%xmm4, %xmm4, %xmm4
	vaddss	%xmm2, %xmm4, %xmm7
	vucomiss	%xmm14, %xmm7
	jae	.LBB0_13
# %bb.34:                               #   in Loop: Header=BB0_12 Depth=4
	vucomiss	.LCPI0_6(%rip), %xmm7
	vxorps	%xmm2, %xmm2, %xmm2
	vmovaps	%xmm2, 16(%rsp)                 # 16-byte Spill
	vxorps	%xmm15, %xmm15, %xmm15
	vxorps	%xmm9, %xmm9, %xmm9
	vmovss	.LCPI0_5(%rip), %xmm8           # xmm8 = mem[0],zero,zero,zero
	jbe	.LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_12 Depth=4
	vbroadcastss	.LCPI0_2(%rip), %xmm2   # xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vxorps	%xmm2, %xmm7, %xmm8
	vbroadcastss	%xmm7, %xmm2
	vmulps	%xmm3, %xmm2, %xmm9
	vmovshdup	%xmm9, %xmm4            # xmm4 = xmm9[1,1,3,3]
	vmulss	%xmm1, %xmm7, %xmm15
	vsubss	%xmm5, %xmm9, %xmm5
	vsubss	%xmm6, %xmm15, %xmm6
	vmulss	%xmm5, %xmm5, %xmm7
	vfmadd231ss	%xmm4, %xmm4, %xmm7     # xmm7 = (xmm4 * xmm4) + xmm7
	vfmadd231ss	%xmm6, %xmm6, %xmm7     # xmm7 = (xmm6 * xmm6) + xmm7
	vrsqrtss	%xmm7, %xmm7, %xmm2
	vmulss	%xmm2, %xmm7, %xmm7
	vfmadd213ss	%xmm12, %xmm2, %xmm7    # xmm7 = (xmm2 * xmm7) + xmm12
	vmulss	%xmm2, %xmm13, %xmm2
	vmulss	%xmm7, %xmm2, %xmm2
	vmulss	%xmm5, %xmm2, %xmm5
	vmulss	%xmm4, %xmm2, %xmm4
	vinsertps	$16, %xmm4, %xmm5, %xmm4 # xmm4 = xmm5[0],xmm4[0],xmm5[2,3]
	vmovaps	%xmm4, 16(%rsp)                 # 16-byte Spill
	vmulss	%xmm6, %xmm2, %xmm2
	vmovaps	%xmm2, 32(%rsp)                 # 16-byte Spill
	movl	$1, %eax
	jmp	.LBB0_36
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_12 Depth=4
	vxorps	%xmm2, %xmm2, %xmm2
	vmovaps	%xmm2, 16(%rsp)                 # 16-byte Spill
	vxorps	%xmm15, %xmm15, %xmm15
	vxorps	%xmm9, %xmm9, %xmm9
	vmovss	.LCPI0_5(%rip), %xmm8           # xmm8 = mem[0],zero,zero,zero
.LBB0_36:                               #   in Loop: Header=BB0_12 Depth=4
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.0(%rip), %xmm6 # xmm6 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.2(%rip), %xmm7 # xmm7 = mem[0],zero,zero,zero
	vmulss	%xmm6, %xmm0, %xmm4
	vfmsub231ss	%xmm1, %xmm7, %xmm4     # xmm4 = (xmm7 * xmm1) - xmm4
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.1(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	vmulss	%xmm7, %xmm7, %xmm5
	vfnmsub231ss	%xmm6, %xmm6, %xmm5     # xmm5 = -(xmm6 * xmm6) - xmm5
	vfmadd231ss	%xmm2, %xmm2, %xmm5     # xmm5 = (xmm2 * xmm2) + xmm5
	vfmadd231ss	%xmm4, %xmm4, %xmm5     # xmm5 = (xmm4 * xmm4) + xmm5
	vucomiss	%xmm14, %xmm5
	jbe	.LBB0_40
# %bb.37:                               #   in Loop: Header=BB0_12 Depth=4
	vsqrtss	%xmm5, %xmm5, %xmm2
	vaddss	%xmm4, %xmm2, %xmm4
	vucomiss	%xmm14, %xmm4
	jae	.LBB0_40
# %bb.38:                               #   in Loop: Header=BB0_12 Depth=4
	vbroadcastss	.LCPI0_2(%rip), %xmm2   # xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vxorps	%xmm2, %xmm4, %xmm10
	vucomiss	%xmm10, %xmm8
	jbe	.LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_12 Depth=4
	vbroadcastss	%xmm4, %xmm2
	vmulps	%xmm3, %xmm2, %xmm9
	vmovshdup	%xmm9, %xmm2            # xmm2 = xmm9[1,1,3,3]
	vmulss	%xmm1, %xmm4, %xmm15
	vsubss	%xmm6, %xmm9, %xmm4
	vsubss	%xmm7, %xmm15, %xmm6
	vmulss	%xmm4, %xmm4, %xmm7
	vfmadd231ss	%xmm2, %xmm2, %xmm7     # xmm7 = (xmm2 * xmm2) + xmm7
	vfmadd231ss	%xmm6, %xmm6, %xmm7     # xmm7 = (xmm6 * xmm6) + xmm7
	vrsqrtss	%xmm7, %xmm7, %xmm5
	vmulss	%xmm5, %xmm7, %xmm7
	vfmadd213ss	%xmm12, %xmm5, %xmm7    # xmm7 = (xmm5 * xmm7) + xmm12
	vmulss	%xmm5, %xmm13, %xmm5
	vmulss	%xmm7, %xmm5, %xmm5
	vmulss	%xmm4, %xmm5, %xmm4
	vmulss	%xmm2, %xmm5, %xmm2
	vinsertps	$16, %xmm2, %xmm4, %xmm2 # xmm2 = xmm4[0],xmm2[0],xmm4[2,3]
	vmovaps	%xmm2, 16(%rsp)                 # 16-byte Spill
	vmulss	%xmm6, %xmm5, %xmm2
	vmovaps	%xmm2, 32(%rsp)                 # 16-byte Spill
	movl	$1, %eax
	vmovaps	%xmm10, %xmm8
.LBB0_40:                               #   in Loop: Header=BB0_12 Depth=4
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.0(%rip), %xmm6 # xmm6 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.2(%rip), %xmm7 # xmm7 = mem[0],zero,zero,zero
	vmulss	%xmm6, %xmm0, %xmm4
	vfmsub231ss	%xmm1, %xmm7, %xmm4     # xmm4 = (xmm7 * xmm1) - xmm4
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.1(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	vmulss	%xmm7, %xmm7, %xmm5
	vfnmsub231ss	%xmm6, %xmm6, %xmm5     # xmm5 = -(xmm6 * xmm6) - xmm5
	vfmadd231ss	%xmm2, %xmm2, %xmm5     # xmm5 = (xmm2 * xmm2) + xmm5
	vfmadd231ss	%xmm4, %xmm4, %xmm5     # xmm5 = (xmm4 * xmm4) + xmm5
	vucomiss	%xmm14, %xmm5
	jbe	.LBB0_44
# %bb.41:                               #   in Loop: Header=BB0_12 Depth=4
	vsqrtss	%xmm5, %xmm5, %xmm2
	vaddss	%xmm4, %xmm2, %xmm4
	vucomiss	%xmm14, %xmm4
	jae	.LBB0_44
# %bb.42:                               #   in Loop: Header=BB0_12 Depth=4
	vbroadcastss	.LCPI0_2(%rip), %xmm2   # xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vxorps	%xmm2, %xmm4, %xmm5
	vucomiss	%xmm5, %xmm8
	jbe	.LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_12 Depth=4
	vbroadcastss	%xmm4, %xmm2
	vmulps	%xmm3, %xmm2, %xmm9
	vmovshdup	%xmm9, %xmm2            # xmm2 = xmm9[1,1,3,3]
	vmulss	%xmm1, %xmm4, %xmm15
	vsubss	%xmm6, %xmm9, %xmm3
	vsubss	%xmm7, %xmm15, %xmm4
	vmulss	%xmm3, %xmm3, %xmm6
	vfmadd231ss	%xmm2, %xmm2, %xmm6     # xmm6 = (xmm2 * xmm2) + xmm6
	vfmadd231ss	%xmm4, %xmm4, %xmm6     # xmm6 = (xmm4 * xmm4) + xmm6
	vrsqrtss	%xmm6, %xmm6, %xmm7
	vmulss	%xmm7, %xmm6, %xmm6
	vfmadd213ss	%xmm12, %xmm7, %xmm6    # xmm6 = (xmm7 * xmm6) + xmm12
	vmulss	%xmm7, %xmm13, %xmm7
	vmulss	%xmm6, %xmm7, %xmm6
	vmulss	%xmm3, %xmm6, %xmm3
	vmulss	%xmm2, %xmm6, %xmm2
	vinsertps	$16, %xmm2, %xmm3, %xmm2 # xmm2 = xmm3[0],xmm2[0],xmm3[2,3]
	vmovaps	%xmm2, 16(%rsp)                 # 16-byte Spill
	vmulss	%xmm4, %xmm6, %xmm2
	vmovaps	%xmm2, 32(%rsp)                 # 16-byte Spill
	movl	$1, %eax
	vmovaps	%xmm5, %xmm8
.LBB0_44:                               #   in Loop: Header=BB0_12 Depth=4
	vbroadcastss	.LCPI0_2(%rip), %xmm2   # xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vmovaps	%xmm2, 176(%rsp)                # 16-byte Spill
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+16(%rip), %xmm5 # xmm5 = mem[0],zero,zero,zero
	vmovsd	_ZZL12ao_scanlinesiiiiPfE5plane+20(%rip), %xmm6 # xmm6 = mem[0],zero
	vmovshdup	%xmm6, %xmm2            # xmm2 = xmm6[1,1,3,3]
	vmulss	%xmm0, %xmm5, %xmm4
	vmovshdup	%xmm0, %xmm3            # xmm3 = xmm0[1,1,3,3]
	vfmadd231ss	%xmm3, %xmm6, %xmm4     # xmm4 = (xmm6 * xmm3) + xmm4
	vfnmadd231ss	%xmm2, %xmm1, %xmm4     # xmm4 = -(xmm1 * xmm2) + xmm4
	vbroadcastss	.LCPI0_7(%rip), %xmm2   # xmm2 = [NaN,NaN,NaN,NaN]
	vmovaps	%xmm2, 304(%rsp)                # 16-byte Spill
	vandps	%xmm2, %xmm4, %xmm2
	vucomiss	.LCPI0_8(%rip), %xmm2
	jae	.LBB0_17
.LBB0_31:                               #   in Loop: Header=BB0_12 Depth=4
	testl	%eax, %eax
	jne	.LBB0_20
# %bb.32:                               #   in Loop: Header=BB0_12 Depth=4
	vxorps	%xmm2, %xmm2, %xmm2
	jmp	.LBB0_53
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_12 Depth=4
	vmovsd	_ZZL12ao_scanlinesiiiiPfE5plane+4(%rip), %xmm7 # xmm7 = mem[0],zero
	vmulps	%xmm6, %xmm7, %xmm6
	vfmadd132ss	_ZZL12ao_scanlinesiiiiPfE5plane(%rip), %xmm6, %xmm5 # xmm5 = (xmm5 * mem) + xmm6
	vmovshdup	%xmm6, %xmm6            # xmm6 = xmm6[1,1,3,3]
	vaddss	%xmm6, %xmm5, %xmm5
	vdivss	%xmm4, %xmm5, %xmm4
	vucomiss	%xmm14, %xmm4
	jbe	.LBB0_31
# %bb.18:                               #   in Loop: Header=BB0_12 Depth=4
	vucomiss	%xmm8, %xmm4
	jae	.LBB0_31
# %bb.19:                               #   in Loop: Header=BB0_12 Depth=4
	vxorps	176(%rsp), %xmm1, %xmm1         # 16-byte Folded Reload
	vmulss	%xmm0, %xmm4, %xmm0
	vmulss	%xmm3, %xmm4, %xmm2
	vinsertps	$16, %xmm2, %xmm0, %xmm9 # xmm9 = xmm0[0],xmm2[0],xmm0[2,3]
	vmulss	%xmm1, %xmm4, %xmm15
	vmovsd	_ZZL12ao_scanlinesiiiiPfE5plane+16(%rip), %xmm0 # xmm0 = mem[0],zero
	vmovaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	vmovsd	_ZZL12ao_scanlinesiiiiPfE5plane+24(%rip), %xmm0 # xmm0 = mem[0],zero
	vmovaps	%xmm0, 32(%rsp)                 # 16-byte Spill
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=4
	movl	%ecx, 100(%rsp)                 # 4-byte Spill
	vbroadcastss	.LCPI0_9(%rip), %xmm8   # xmm8 = [9.99999974E-5,9.99999974E-5,9.99999974E-5,9.99999974E-5]
	vmovaps	16(%rsp), %xmm1                 # 16-byte Reload
	vfmadd213ps	%xmm9, %xmm1, %xmm8     # xmm8 = (xmm1 * xmm8) + xmm9
	vmovaps	32(%rsp), %xmm0                 # 16-byte Reload
	vfmadd231ss	.LCPI0_9(%rip), %xmm0, %xmm15 # xmm15 = (xmm0 * mem) + xmm15
	vucomiss	.LCPI0_10(%rip), %xmm1
	vmovshdup	%xmm1, %xmm0            # xmm0 = xmm1[1,1,3,3]
	vmovaps	%xmm0, 160(%rsp)                # 16-byte Spill
	jae	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_12 Depth=4
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	16(%rsp), %xmm1                 # 16-byte Reload
	vucomiss	.LCPI0_11(%rip), %xmm1
	vxorps	%xmm1, %xmm1, %xmm1
	vmovaps	%xmm11, %xmm2
	ja	.LBB0_26
.LBB0_22:                               #   in Loop: Header=BB0_12 Depth=4
	vmovaps	160(%rsp), %xmm0                # 16-byte Reload
	vucomiss	.LCPI0_10(%rip), %xmm0
	jae	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_12 Depth=4
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	160(%rsp), %xmm1                # 16-byte Reload
	vucomiss	.LCPI0_11(%rip), %xmm1
	vmovaps	%xmm11, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	ja	.LBB0_26
.LBB0_24:                               #   in Loop: Header=BB0_12 Depth=4
	vmovaps	32(%rsp), %xmm0                 # 16-byte Reload
	vucomiss	.LCPI0_10(%rip), %xmm0
	setb	%al
	vucomiss	.LCPI0_11(%rip), %xmm0
	seta	%cl
	vxorps	%xmm1, %xmm1, %xmm1
	vmovaps	%xmm11, %xmm0
	vxorps	%xmm2, %xmm2, %xmm2
	testb	%cl, %al
	jne	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_12 Depth=4
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm11, %xmm2
	.p2align	4, 0x90
.LBB0_26:                               #   in Loop: Header=BB0_12 Depth=4
	vmovaps	%xmm15, 288(%rsp)               # 16-byte Spill
	vmovaps	160(%rsp), %xmm7                # 16-byte Reload
	vmulss	%xmm7, %xmm0, %xmm3
	vmovaps	32(%rsp), %xmm5                 # 16-byte Reload
	vfmsub231ss	%xmm5, %xmm1, %xmm3     # xmm3 = (xmm1 * xmm5) - xmm3
	vmulss	%xmm5, %xmm2, %xmm4
	vmovaps	16(%rsp), %xmm6                 # 16-byte Reload
	vfmsub231ss	%xmm0, %xmm6, %xmm4     # xmm4 = (xmm6 * xmm0) - xmm4
	vmulss	%xmm6, %xmm1, %xmm0
	vfmsub231ss	%xmm2, %xmm7, %xmm0     # xmm0 = (xmm7 * xmm2) - xmm0
	vmulss	%xmm3, %xmm3, %xmm1
	vfmadd231ss	%xmm0, %xmm0, %xmm1     # xmm1 = (xmm0 * xmm0) + xmm1
	vfmadd231ss	%xmm4, %xmm4, %xmm1     # xmm1 = (xmm4 * xmm4) + xmm1
	vrsqrtss	%xmm1, %xmm1, %xmm2
	vmulss	%xmm2, %xmm1, %xmm1
	vfmadd213ss	%xmm12, %xmm2, %xmm1    # xmm1 = (xmm2 * xmm1) + xmm12
	vmulss	%xmm2, %xmm13, %xmm2
	vmulss	%xmm1, %xmm2, %xmm1
	vmulss	%xmm3, %xmm1, %xmm2
	vmulss	%xmm4, %xmm1, %xmm3
	vmulss	%xmm0, %xmm1, %xmm0
	vmulss	%xmm5, %xmm3, %xmm1
	vfmsub231ss	%xmm7, %xmm0, %xmm1     # xmm1 = (xmm0 * xmm7) - xmm1
	vmovss	%xmm0, 124(%rsp)                # 4-byte Spill
	vmulss	%xmm6, %xmm0, %xmm4
	vfmsub231ss	%xmm5, %xmm2, %xmm4     # xmm4 = (xmm2 * xmm5) - xmm4
	vmovss	%xmm2, 132(%rsp)                # 4-byte Spill
	vmulss	%xmm7, %xmm2, %xmm2
	vmovss	%xmm3, 128(%rsp)                # 4-byte Spill
	vfmsub231ss	%xmm6, %xmm3, %xmm2     # xmm2 = (xmm3 * xmm6) - xmm2
	vmovss	%xmm1, 120(%rsp)                # 4-byte Spill
	vmulss	%xmm1, %xmm1, %xmm0
	vmovss	%xmm4, 116(%rsp)                # 4-byte Spill
	vfmadd231ss	%xmm4, %xmm4, %xmm0     # xmm0 = (xmm4 * xmm4) + xmm0
	vmovss	%xmm2, 112(%rsp)                # 4-byte Spill
	vfmadd231ss	%xmm2, %xmm2, %xmm0     # xmm0 = (xmm2 * xmm2) + xmm0
	vrsqrtss	%xmm0, %xmm0, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	vfmadd213ss	%xmm12, %xmm1, %xmm0    # xmm0 = (xmm1 * xmm0) + xmm12
	vmulss	%xmm1, %xmm13, %xmm1
	vmulss	%xmm0, %xmm1, %xmm0
	vmovss	%xmm0, 108(%rsp)                # 4-byte Spill
	vmovaps	%xmm8, 272(%rsp)                # 16-byte Spill
	vmovshdup	%xmm8, %xmm0            # xmm0 = xmm8[1,1,3,3]
	vmovaps	%xmm0, 256(%rsp)                # 16-byte Spill
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 104(%rsp)                # 4-byte Spill
	xorl	%r12d, %r12d
	vxorps	%xmm2, %xmm2, %xmm2
	jmp	.LBB0_27
	.p2align	4, 0x90
.LBB0_51:                               #   in Loop: Header=BB0_27 Depth=5
	incl	%r12d
	cmpl	$8, %r12d
	je	.LBB0_52
.LBB0_27:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        #         Parent Loop BB0_12 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_28 Depth 6
	movl	$8, %r15d
	jmp	.LBB0_28
	.p2align	4, 0x90
.LBB0_47:                               #   in Loop: Header=BB0_28 Depth=6
	vmovss	12(%rsp), %xmm2                 # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	vaddss	%xmm2, %xmm8, %xmm2
.LBB0_50:                               #   in Loop: Header=BB0_28 Depth=6
	decl	%r15d
	je	.LBB0_51
.LBB0_28:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        #         Parent Loop BB0_12 Depth=4
                                        #           Parent Loop BB0_27 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	vmovss	%xmm2, 12(%rsp)                 # 4-byte Spill
	callq	drand48
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 140(%rsp)                # 4-byte Spill
	vsqrtss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 136(%rsp)                # 4-byte Spill
	callq	drand48
	vmulsd	.LCPI0_12(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	sincosf@PLT
	vxorps	%xmm14, %xmm14, %xmm14
	vmovss	136(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmulss	144(%rsp), %xmm0, %xmm3
	vmulss	148(%rsp), %xmm0, %xmm0
	vmulss	108(%rsp), %xmm0, %xmm4         # 4-byte Folded Reload
	vmovss	.LCPI0_1(%rip), %xmm8           # xmm8 = mem[0],zero,zero,zero
	vsubss	140(%rsp), %xmm8, %xmm0         # 4-byte Folded Reload
	vsqrtss	%xmm0, %xmm0, %xmm0
	vmulss	16(%rsp), %xmm0, %xmm1          # 16-byte Folded Reload
	vfmadd231ss	132(%rsp), %xmm3, %xmm1 # 4-byte Folded Reload
                                        # xmm1 = (xmm3 * mem) + xmm1
	vfmadd231ss	120(%rsp), %xmm4, %xmm1 # 4-byte Folded Reload
                                        # xmm1 = (xmm4 * mem) + xmm1
	vmulss	160(%rsp), %xmm0, %xmm2         # 16-byte Folded Reload
	vfmadd231ss	128(%rsp), %xmm3, %xmm2 # 4-byte Folded Reload
                                        # xmm2 = (xmm3 * mem) + xmm2
	vfmadd231ss	116(%rsp), %xmm4, %xmm2 # 4-byte Folded Reload
                                        # xmm2 = (xmm4 * mem) + xmm2
	vmulss	32(%rsp), %xmm0, %xmm0          # 16-byte Folded Reload
	vfmadd231ss	124(%rsp), %xmm3, %xmm0 # 4-byte Folded Reload
                                        # xmm0 = (xmm3 * mem) + xmm0
	vfmadd231ss	112(%rsp), %xmm4, %xmm0 # 4-byte Folded Reload
                                        # xmm0 = (xmm4 * mem) + xmm0
	vmovaps	272(%rsp), %xmm10               # 16-byte Reload
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.0(%rip), %xmm10, %xmm4
	vmovaps	288(%rsp), %xmm9                # 16-byte Reload
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.2(%rip), %xmm9, %xmm3
	vmulss	%xmm4, %xmm1, %xmm5
	vmovaps	256(%rsp), %xmm11               # 16-byte Reload
	vfmadd231ss	%xmm11, %xmm2, %xmm5    # xmm5 = (xmm2 * xmm11) + xmm5
	vfmadd231ss	%xmm3, %xmm0, %xmm5     # xmm5 = (xmm0 * xmm3) + xmm5
	vmovss	104(%rsp), %xmm12               # 4-byte Reload
                                        # xmm12 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm12, %xmm4, %xmm4    # xmm4 = (xmm4 * xmm4) + xmm12
	vfmadd231ss	%xmm3, %xmm3, %xmm4     # xmm4 = (xmm3 * xmm3) + xmm4
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.1(%rip), %xmm3 # xmm3 = mem[0],zero,zero,zero
	vfnmadd231ss	%xmm3, %xmm3, %xmm4     # xmm4 = -(xmm3 * xmm3) + xmm4
	vfmsub231ss	%xmm5, %xmm5, %xmm4     # xmm4 = (xmm5 * xmm5) - xmm4
	xorl	%eax, %eax
	vucomiss	%xmm14, %xmm4
	vmovss	.LCPI0_5(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	jbe	.LBB0_57
# %bb.29:                               #   in Loop: Header=BB0_28 Depth=6
	vsqrtss	%xmm4, %xmm4, %xmm3
	vaddss	%xmm5, %xmm3, %xmm3
	vucomiss	%xmm14, %xmm3
	setb	%cl
	vucomiss	.LCPI0_6(%rip), %xmm3
	seta	%al
	andb	%cl, %al
	jne	.LBB0_30
# %bb.55:                               #   in Loop: Header=BB0_28 Depth=6
	vmovss	.LCPI0_5(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	jmp	.LBB0_56
	.p2align	4, 0x90
.LBB0_30:                               #   in Loop: Header=BB0_28 Depth=6
	vxorps	176(%rsp), %xmm3, %xmm3         # 16-byte Folded Reload
.LBB0_56:                               #   in Loop: Header=BB0_28 Depth=6
	movzbl	%al, %eax
.LBB0_57:                               #   in Loop: Header=BB0_28 Depth=6
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.0(%rip), %xmm10, %xmm4
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.2(%rip), %xmm9, %xmm6
	vmulss	%xmm1, %xmm4, %xmm5
	vfmadd231ss	%xmm2, %xmm11, %xmm5    # xmm5 = (xmm11 * xmm2) + xmm5
	vfmadd231ss	%xmm0, %xmm6, %xmm5     # xmm5 = (xmm6 * xmm0) + xmm5
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.1(%rip), %xmm7 # xmm7 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm12, %xmm4, %xmm4    # xmm4 = (xmm4 * xmm4) + xmm12
	vfnmsub231ss	%xmm6, %xmm6, %xmm4     # xmm4 = -(xmm6 * xmm6) - xmm4
	vfmadd231ss	%xmm7, %xmm7, %xmm4     # xmm4 = (xmm7 * xmm7) + xmm4
	vfmadd231ss	%xmm5, %xmm5, %xmm4     # xmm4 = (xmm5 * xmm5) + xmm4
	vucomiss	%xmm14, %xmm4
	jbe	.LBB0_61
# %bb.58:                               #   in Loop: Header=BB0_28 Depth=6
	vsqrtss	%xmm4, %xmm4, %xmm4
	vaddss	%xmm5, %xmm4, %xmm5
	vxorps	176(%rsp), %xmm5, %xmm4         # 16-byte Folded Reload
	vucomiss	%xmm14, %xmm5
	setb	%cl
	vucomiss	%xmm4, %xmm3
	seta	%dl
	testb	%dl, %cl
	cmovnel	%r14d, %eax
	jne	.LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_28 Depth=6
	vmovaps	%xmm3, %xmm4
.LBB0_60:                               #   in Loop: Header=BB0_28 Depth=6
	vmovaps	%xmm4, %xmm3
.LBB0_61:                               #   in Loop: Header=BB0_28 Depth=6
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.0(%rip), %xmm10, %xmm4
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.2(%rip), %xmm9, %xmm6
	vmulss	%xmm1, %xmm4, %xmm5
	vfmadd231ss	%xmm2, %xmm11, %xmm5    # xmm5 = (xmm11 * xmm2) + xmm5
	vfmadd231ss	%xmm0, %xmm6, %xmm5     # xmm5 = (xmm6 * xmm0) + xmm5
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.1(%rip), %xmm7 # xmm7 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm12, %xmm4, %xmm4    # xmm4 = (xmm4 * xmm4) + xmm12
	vfnmsub231ss	%xmm6, %xmm6, %xmm4     # xmm4 = -(xmm6 * xmm6) - xmm4
	vfmadd231ss	%xmm7, %xmm7, %xmm4     # xmm4 = (xmm7 * xmm7) + xmm4
	vfmadd231ss	%xmm5, %xmm5, %xmm4     # xmm4 = (xmm5 * xmm5) + xmm4
	vucomiss	%xmm14, %xmm4
	jbe	.LBB0_65
# %bb.62:                               #   in Loop: Header=BB0_28 Depth=6
	vsqrtss	%xmm4, %xmm4, %xmm4
	vaddss	%xmm5, %xmm4, %xmm5
	vxorps	176(%rsp), %xmm5, %xmm4         # 16-byte Folded Reload
	vucomiss	%xmm14, %xmm5
	setb	%cl
	vucomiss	%xmm4, %xmm3
	seta	%dl
	testb	%dl, %cl
	cmovnel	%r14d, %eax
	jne	.LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_28 Depth=6
	vmovaps	%xmm3, %xmm4
.LBB0_64:                               #   in Loop: Header=BB0_28 Depth=6
	vmovaps	%xmm4, %xmm3
.LBB0_65:                               #   in Loop: Header=BB0_28 Depth=6
	vmovsd	_ZZL12ao_scanlinesiiiiPfE5plane+16(%rip), %xmm5 # xmm5 = mem[0],zero
	vmovshdup	%xmm5, %xmm6            # xmm6 = xmm5[1,1,3,3]
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+24(%rip), %xmm4 # xmm4 = mem[0],zero,zero,zero
	vmulss	%xmm1, %xmm5, %xmm1
	vfmadd213ss	%xmm1, %xmm6, %xmm2     # xmm2 = (xmm6 * xmm2) + xmm1
	vfmadd213ss	%xmm2, %xmm4, %xmm0     # xmm0 = (xmm4 * xmm0) + xmm2
	vandps	304(%rsp), %xmm0, %xmm1         # 16-byte Folded Reload
	vucomiss	.LCPI0_8(%rip), %xmm1
	jae	.LBB0_45
.LBB0_48:                               #   in Loop: Header=BB0_28 Depth=6
	vmovss	12(%rsp), %xmm2                 # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	vaddss	%xmm2, %xmm8, %xmm0
	testl	%eax, %eax
	je	.LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_28 Depth=6
	vmovaps	%xmm0, %xmm2
	jmp	.LBB0_50
	.p2align	4, 0x90
.LBB0_45:                               #   in Loop: Header=BB0_28 Depth=6
	vmovsd	_ZZL12ao_scanlinesiiiiPfE5plane(%rip), %xmm1 # xmm1 = mem[0],zero
	vmulps	%xmm5, %xmm1, %xmm1
	vmulps	%xmm5, %xmm10, %xmm2
	vmovshdup	%xmm2, %xmm5            # xmm5 = xmm2[1,1,3,3]
	vaddss	%xmm2, %xmm5, %xmm2
	vfnmsub231ss	%xmm9, %xmm4, %xmm2     # xmm2 = -(xmm4 * xmm9) - xmm2
	vmovshdup	%xmm1, %xmm5            # xmm5 = xmm1[1,1,3,3]
	vaddss	%xmm1, %xmm5, %xmm1
	vaddss	%xmm1, %xmm2, %xmm1
	vfmadd231ss	_ZZL12ao_scanlinesiiiiPfE5plane+8(%rip), %xmm4, %xmm1 # xmm1 = (xmm4 * mem) + xmm1
	vdivss	%xmm0, %xmm1, %xmm0
	vucomiss	%xmm14, %xmm0
	jbe	.LBB0_48
# %bb.46:                               #   in Loop: Header=BB0_28 Depth=6
	vucomiss	%xmm3, %xmm0
	jb	.LBB0_47
	jmp	.LBB0_48
.LBB0_16:
	addq	$328, %rsp                      # imm = 0x148
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
.LBB0_1:
	.cfi_def_cfa_offset 384
	movl	$_ZGVZL12ao_scanlinesiiiiPfE5plane, %edi
	callq	__cxa_guard_acquire
	testl	%eax, %eax
	je	.LBB0_3
# %bb.2:
	movabsq	$-4683743612465315840, %rax     # imm = 0xBF00000000000000
	movq	%rax, _ZZL12ao_scanlinesiiiiPfE5plane(%rip)
	movl	$0, _ZZL12ao_scanlinesiiiiPfE5plane+8(%rip)
	movabsq	$4575657221408423936, %rax      # imm = 0x3F80000000000000
	movq	%rax, _ZZL12ao_scanlinesiiiiPfE5plane+16(%rip)
	movl	$0, _ZZL12ao_scanlinesiiiiPfE5plane+24(%rip)
	movl	$_ZGVZL12ao_scanlinesiiiiPfE5plane, %edi
	callq	__cxa_guard_release
	jmp	.LBB0_3
.LBB0_4:
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
	jmp	.LBB0_6
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

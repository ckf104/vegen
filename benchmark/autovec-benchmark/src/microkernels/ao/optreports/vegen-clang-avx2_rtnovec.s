	.text
	.file	"ao_serial.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _Z9ao_serialiiPf
.LCPI0_0:
	.long	0x3f000000                      # float 0.5
.LCPI0_1:
	.long	0x3f800000                      # float 1
.LCPI0_2:
	.long	0xc0400000                      # float -3
.LCPI0_3:
	.long	0xbf000000                      # float -0.5
.LCPI0_4:
	.long	0x5bb1a2bc                      # float 9.99999984E+16
.LCPI0_5:
	.long	0xdbb1a2bc                      # float -9.99999984E+16
.LCPI0_6:
	.long	0x80000000                      # float -0
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
	subq	$360, %rsp                      # imm = 0x168
	.cfi_def_cfa_offset 416
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movl	%esi, %ebx
	movl	%edi, 12(%rsp)                  # 4-byte Spill
	movl	$8, NAO_SAMPLES(%rip)
	movl	$2, nsubsamples(%rip)
	movb	_ZGVZL12ao_scanlinesiiiiPfE5plane(%rip), %al
	testb	%al, %al
	je	.LBB0_74
.LBB0_1:
	movb	_ZGVZL12ao_scanlinesiiiiPfE7spheres(%rip), %al
	testb	%al, %al
	je	.LBB0_76
.LBB0_2:
	xorl	%edi, %edi
	callq	srand48
	testl	%ebx, %ebx
	jle	.LBB0_73
# %bb.3:
	movl	12(%rsp), %eax                  # 4-byte Reload
	vcvtsi2ss	%eax, %xmm0, %xmm2
	vmovss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vcvtsi2ss	%ebx, %xmm1, %xmm1
	vmovss	%xmm2, 68(%rsp)                 # 4-byte Spill
	vmulss	%xmm0, %xmm2, %xmm2
	vmulss	%xmm0, %xmm1, %xmm0
	vmovss	%xmm0, 64(%rsp)                 # 4-byte Spill
	vmovss	%xmm2, 48(%rsp)                 # 4-byte Spill
	vmulss	%xmm1, %xmm2, %xmm0
	cltq
	movl	%ebx, %ecx
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	movl	%eax, %eax
	movq	%rax, 200(%rsp)                 # 8-byte Spill
	vmovss	.LCPI0_1(%rip), %xmm6           # xmm6 = mem[0],zero,zero,zero
	vdivss	%xmm1, %xmm6, %xmm1
	vdivss	%xmm0, %xmm6, %xmm0
	vmovss	%xmm0, 60(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	vaddss	%xmm1, %xmm1, %xmm0
	vmovss	%xmm0, 56(%rsp)                 # 4-byte Spill
	vmovss	.LCPI0_2(%rip), %xmm15          # xmm15 = mem[0],zero,zero,zero
	vmovss	.LCPI0_3(%rip), %xmm11          # xmm11 = mem[0],zero,zero,zero
	vxorps	%xmm9, %xmm9, %xmm9
	leaq	124(%rsp), %rbp
	leaq	120(%rsp), %rbx
	movl	$1, %r14d
	movq	%r15, 240(%rsp)                 # 8-byte Spill
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	incq	%rcx
	movq	%rcx, %rax
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	cmpq	192(%rsp), %rcx                 # 8-byte Folded Reload
	je	.LBB0_73
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_12 Depth 3
                                        #         Child Loop BB0_16 Depth 4
                                        #           Child Loop BB0_45 Depth 5
                                        #             Child Loop BB0_49 Depth 6
	cmpl	$0, 12(%rsp)                    # 4-byte Folded Reload
	jle	.LBB0_4
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, %rcx
	imulq	184(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	vxorps	%xmm13, %xmm13, %xmm13
	vcvtsi2ss	%eax, %xmm13, %xmm0
	vmovss	%xmm0, 72(%rsp)                 # 4-byte Spill
	movl	nsubsamples(%rip), %eax
	xorl	%edx, %edx
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_9 Depth=2
	movq	232(%rsp), %rdx                 # 8-byte Reload
	movq	224(%rsp), %r8                  # 8-byte Reload
	movq	216(%rsp), %rdi                 # 8-byte Reload
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=2
	movl	%eax, %ecx
	imull	%eax, %ecx
	vxorps	%xmm13, %xmm13, %xmm13
	vcvtsi2ss	%ecx, %xmm13, %xmm0
	vdivss	%xmm0, %xmm6, %xmm0
	vmulss	(%r15,%rsi,4), %xmm0, %xmm1
	vmovss	%xmm1, (%r15,%rsi,4)
	vmulss	(%r15,%rdi,4), %xmm0, %xmm1
	vmovss	%xmm1, (%r15,%rdi,4)
	vmulss	(%r15,%r8,4), %xmm0, %xmm0
	vmovss	%xmm0, (%r15,%r8,4)
	incq	%rdx
	cmpq	200(%rsp), %rdx                 # 8-byte Folded Reload
	je	.LBB0_4
.LBB0_9:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_12 Depth 3
                                        #         Child Loop BB0_16 Depth 4
                                        #           Child Loop BB0_45 Depth 5
                                        #             Child Loop BB0_49 Depth 6
	movq	208(%rsp), %rcx                 # 8-byte Reload
	addq	%rdx, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	testl	%eax, %eax
	jle	.LBB0_72
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movq	%rdx, 232(%rsp)                 # 8-byte Spill
	vxorps	%xmm13, %xmm13, %xmm13
	vcvtsi2ss	%edx, %xmm13, %xmm0
	vsubss	48(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmovss	%xmm0, 76(%rsp)                 # 4-byte Spill
	leaq	1(%rsi), %rcx
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	leaq	2(%rsi), %rcx
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rsi, 248(%rsp)                 # 8-byte Spill
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=3
	movl	52(%rsp), %ecx                  # 4-byte Reload
	incl	%ecx
	cmpl	%eax, %ecx
	jge	.LBB0_7
.LBB0_12:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_16 Depth 4
                                        #           Child Loop BB0_45 Depth 5
                                        #             Child Loop BB0_49 Depth 6
	testl	%eax, %eax
	movl	%ecx, 52(%rsp)                  # 4-byte Spill
	jle	.LBB0_11
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=3
	vxorps	%xmm13, %xmm13, %xmm13
	vcvtsi2ss	%ecx, %xmm13, %xmm0
	vmovss	%xmm0, 80(%rsp)                 # 4-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_16 Depth=4
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm9, %xmm9, %xmm9
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=4
	vaddss	(%r15,%rsi,4), %xmm0, %xmm1
	vmovss	%xmm1, (%r15,%rsi,4)
	vaddss	4(%r15,%rsi,4), %xmm0, %xmm1
	vmovss	%xmm1, 4(%r15,%rsi,4)
	vaddss	8(%r15,%rsi,4), %xmm0, %xmm0
	vmovss	%xmm0, 8(%r15,%rsi,4)
	incl	%r12d
	cmpl	%eax, %r12d
	jge	.LBB0_11
.LBB0_16:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_12 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_45 Depth 5
                                        #             Child Loop BB0_49 Depth 6
	vxorps	%xmm13, %xmm13, %xmm13
	vcvtsi2ss	%eax, %xmm13, %xmm0
	vdivss	%xmm0, %xmm6, %xmm0
	vxorps	%xmm13, %xmm13, %xmm13
	vcvtsi2ss	%r12d, %xmm13, %xmm1
	vfnmsub213ss	72(%rsp), %xmm0, %xmm1  # 4-byte Folded Reload
                                        # xmm1 = -(xmm0 * xmm1) - mem
	vmovss	80(%rsp), %xmm2                 # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	vfmadd213ss	76(%rsp), %xmm2, %xmm0  # 4-byte Folded Reload
                                        # xmm0 = (xmm2 * xmm0) + mem
	vaddss	64(%rsp), %xmm1, %xmm1          # 4-byte Folded Reload
	vmulss	56(%rsp), %xmm1, %xmm14         # 4-byte Folded Reload
	vmulss	68(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmulss	60(%rsp), %xmm0, %xmm4          # 4-byte Folded Reload
	vmovaps	%xmm4, %xmm0
	vfmadd213ss	%xmm6, %xmm4, %xmm0     # xmm0 = (xmm4 * xmm0) + xmm6
	vfmadd231ss	%xmm14, %xmm14, %xmm0   # xmm0 = (xmm14 * xmm14) + xmm0
	vrsqrtss	%xmm0, %xmm0, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	vfmadd213ss	%xmm15, %xmm1, %xmm0    # xmm0 = (xmm1 * xmm0) + xmm15
	vmulss	%xmm1, %xmm11, %xmm1
	vmulss	%xmm0, %xmm1, %xmm3
	vmulss	%xmm4, %xmm3, %xmm13
	vfnmsub213ss	%xmm9, %xmm3, %xmm4     # xmm4 = -(xmm3 * xmm4) - xmm9
	vmovaps	%xmm14, %xmm12
	vfnmsub213ss	%xmm9, %xmm3, %xmm12    # xmm12 = -(xmm3 * xmm12) - xmm9
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.0(%rip), %xmm7 # xmm7 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.2(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	vmulss	%xmm7, %xmm13, %xmm1
	vfmsub231ss	%xmm0, %xmm3, %xmm1     # xmm1 = (xmm3 * xmm0) - xmm1
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.1(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	vmulss	%xmm0, %xmm0, %xmm5
	vfmadd231ss	%xmm7, %xmm7, %xmm5     # xmm5 = (xmm7 * xmm7) + xmm5
	vfnmadd231ss	%xmm2, %xmm2, %xmm5     # xmm5 = -(xmm2 * xmm2) + xmm5
	vfmsub231ss	%xmm1, %xmm1, %xmm5     # xmm5 = (xmm1 * xmm1) - xmm5
	vxorps	%xmm8, %xmm8, %xmm8
	vucomiss	%xmm9, %xmm5
	jbe	.LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=4
	vsqrtss	%xmm5, %xmm5, %xmm2
	vaddss	%xmm1, %xmm2, %xmm1
	vucomiss	%xmm9, %xmm1
	jae	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=4
	vucomiss	.LCPI0_5(%rip), %xmm1
	movl	$0, %ecx
	vxorps	%xmm9, %xmm9, %xmm9
	vxorps	%xmm6, %xmm6, %xmm6
	vxorps	%xmm2, %xmm2, %xmm2
	vmovaps	%xmm2, 16(%rsp)                 # 16-byte Spill
	vmovss	.LCPI0_4(%rip), %xmm10          # xmm10 = mem[0],zero,zero,zero
	jbe	.LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_16 Depth=4
	vbroadcastss	.LCPI0_6(%rip), %xmm2   # xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vxorps	%xmm2, %xmm1, %xmm10
	vmulss	%xmm4, %xmm1, %xmm2
	vmulss	%xmm1, %xmm12, %xmm5
	vmulss	%xmm3, %xmm1, %xmm6
	vinsertps	$16, %xmm5, %xmm2, %xmm1 # xmm1 = xmm2[0],xmm5[0],xmm2[2,3]
	vmovaps	%xmm1, 16(%rsp)                 # 16-byte Spill
	vsubss	%xmm7, %xmm2, %xmm1
	vsubss	%xmm0, %xmm6, %xmm0
	vmulss	%xmm1, %xmm1, %xmm2
	vfmadd231ss	%xmm5, %xmm5, %xmm2     # xmm2 = (xmm5 * xmm5) + xmm2
	vfmadd231ss	%xmm0, %xmm0, %xmm2     # xmm2 = (xmm0 * xmm0) + xmm2
	vrsqrtss	%xmm2, %xmm2, %xmm7
	vmulss	%xmm7, %xmm2, %xmm2
	vfmadd213ss	%xmm15, %xmm7, %xmm2    # xmm2 = (xmm7 * xmm2) + xmm15
	vmulss	%xmm7, %xmm11, %xmm7
	vmulss	%xmm2, %xmm7, %xmm2
	vmulss	%xmm1, %xmm2, %xmm1
	vmulss	%xmm5, %xmm2, %xmm5
	vinsertps	$16, %xmm5, %xmm1, %xmm9 # xmm9 = xmm1[0],xmm5[0],xmm1[2,3]
	vmulss	%xmm0, %xmm2, %xmm8
	movl	$1, %ecx
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=4
	xorl	%ecx, %ecx
	vxorps	%xmm9, %xmm9, %xmm9
	vxorps	%xmm6, %xmm6, %xmm6
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	vmovss	.LCPI0_4(%rip), %xmm10          # xmm10 = mem[0],zero,zero,zero
.LBB0_21:                               #   in Loop: Header=BB0_16 Depth=4
	vmovaps	%xmm6, 128(%rsp)                # 16-byte Spill
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.0(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.2(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	vmulss	%xmm0, %xmm13, %xmm7
	vfmsub231ss	%xmm3, %xmm1, %xmm7     # xmm7 = (xmm1 * xmm3) - xmm7
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.1(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	vmulss	%xmm1, %xmm1, %xmm5
	vfnmsub231ss	%xmm0, %xmm0, %xmm5     # xmm5 = -(xmm0 * xmm0) - xmm5
	vfmadd231ss	%xmm2, %xmm2, %xmm5     # xmm5 = (xmm2 * xmm2) + xmm5
	vfmadd231ss	%xmm7, %xmm7, %xmm5     # xmm5 = (xmm7 * xmm7) + xmm5
	vxorps	%xmm6, %xmm6, %xmm6
	vucomiss	%xmm6, %xmm5
	jbe	.LBB0_25
# %bb.22:                               #   in Loop: Header=BB0_16 Depth=4
	vsqrtss	%xmm5, %xmm5, %xmm2
	vaddss	%xmm7, %xmm2, %xmm7
	vucomiss	%xmm6, %xmm7
	jae	.LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_16 Depth=4
	vbroadcastss	.LCPI0_6(%rip), %xmm2   # xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vxorps	%xmm2, %xmm7, %xmm11
	vucomiss	%xmm11, %xmm10
	jbe	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_16 Depth=4
	vmulss	%xmm4, %xmm7, %xmm2
	vmulss	%xmm7, %xmm12, %xmm5
	vmulss	%xmm3, %xmm7, %xmm6
	vinsertps	$16, %xmm5, %xmm2, %xmm7 # xmm7 = xmm2[0],xmm5[0],xmm2[2,3]
	vmovaps	%xmm7, 16(%rsp)                 # 16-byte Spill
	vsubss	%xmm0, %xmm2, %xmm0
	vmovaps	%xmm6, 128(%rsp)                # 16-byte Spill
	vsubss	%xmm1, %xmm6, %xmm1
	vmulss	%xmm0, %xmm0, %xmm2
	vfmadd231ss	%xmm5, %xmm5, %xmm2     # xmm2 = (xmm5 * xmm5) + xmm2
	vfmadd231ss	%xmm1, %xmm1, %xmm2     # xmm2 = (xmm1 * xmm1) + xmm2
	vrsqrtss	%xmm2, %xmm2, %xmm7
	vmulss	%xmm7, %xmm2, %xmm2
	vfmadd213ss	%xmm15, %xmm7, %xmm2    # xmm2 = (xmm7 * xmm2) + xmm15
	vmulss	.LCPI0_3(%rip), %xmm7, %xmm7
	vmulss	%xmm2, %xmm7, %xmm2
	vmulss	%xmm0, %xmm2, %xmm0
	vmulss	%xmm5, %xmm2, %xmm5
	vinsertps	$16, %xmm5, %xmm0, %xmm9 # xmm9 = xmm0[0],xmm5[0],xmm0[2,3]
	vmulss	%xmm1, %xmm2, %xmm8
	movl	$1, %ecx
	vmovaps	%xmm11, %xmm10
.LBB0_25:                               #   in Loop: Header=BB0_16 Depth=4
	vmovaps	%xmm9, 144(%rsp)                # 16-byte Spill
	vmulss	%xmm3, %xmm14, %xmm9
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.0(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.2(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	vmulss	%xmm0, %xmm13, %xmm7
	vfmsub231ss	%xmm3, %xmm1, %xmm7     # xmm7 = (xmm1 * xmm3) - xmm7
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.1(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	vmulss	%xmm1, %xmm1, %xmm5
	vfnmsub231ss	%xmm0, %xmm0, %xmm5     # xmm5 = -(xmm0 * xmm0) - xmm5
	vfmadd231ss	%xmm2, %xmm2, %xmm5     # xmm5 = (xmm2 * xmm2) + xmm5
	vfmadd231ss	%xmm7, %xmm7, %xmm5     # xmm5 = (xmm7 * xmm7) + xmm5
	vxorps	%xmm6, %xmm6, %xmm6
	vucomiss	%xmm6, %xmm5
	jbe	.LBB0_29
# %bb.26:                               #   in Loop: Header=BB0_16 Depth=4
	vsqrtss	%xmm5, %xmm5, %xmm2
	vaddss	%xmm7, %xmm2, %xmm7
	vxorps	%xmm14, %xmm14, %xmm14
	vucomiss	%xmm6, %xmm7
	jae	.LBB0_30
# %bb.27:                               #   in Loop: Header=BB0_16 Depth=4
	vbroadcastss	.LCPI0_6(%rip), %xmm2   # xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vxorps	%xmm2, %xmm7, %xmm11
	vucomiss	%xmm11, %xmm10
	vmovss	.LCPI0_1(%rip), %xmm6           # xmm6 = mem[0],zero,zero,zero
	jbe	.LBB0_31
# %bb.28:                               #   in Loop: Header=BB0_16 Depth=4
	vmulss	%xmm4, %xmm7, %xmm2
	vmulss	%xmm7, %xmm12, %xmm4
	vmulss	%xmm3, %xmm7, %xmm5
	vinsertps	$16, %xmm4, %xmm2, %xmm7 # xmm7 = xmm2[0],xmm4[0],xmm2[2,3]
	vmovaps	%xmm7, 16(%rsp)                 # 16-byte Spill
	vsubss	%xmm0, %xmm2, %xmm0
	vmovaps	%xmm5, 128(%rsp)                # 16-byte Spill
	vsubss	%xmm1, %xmm5, %xmm1
	vmulss	%xmm0, %xmm0, %xmm2
	vfmadd231ss	%xmm4, %xmm4, %xmm2     # xmm2 = (xmm4 * xmm4) + xmm2
	vfmadd231ss	%xmm1, %xmm1, %xmm2     # xmm2 = (xmm1 * xmm1) + xmm2
	vrsqrtss	%xmm2, %xmm2, %xmm5
	vmulss	%xmm5, %xmm2, %xmm2
	vfmadd213ss	%xmm15, %xmm5, %xmm2    # xmm2 = (xmm5 * xmm2) + xmm15
	vmulss	.LCPI0_3(%rip), %xmm5, %xmm5
	vmulss	%xmm2, %xmm5, %xmm2
	vmulss	%xmm0, %xmm2, %xmm0
	vmulss	%xmm4, %xmm2, %xmm4
	vinsertps	$16, %xmm4, %xmm0, %xmm0 # xmm0 = xmm0[0],xmm4[0],xmm0[2,3]
	vmovaps	%xmm0, 144(%rsp)                # 16-byte Spill
	vmulss	%xmm1, %xmm2, %xmm8
	movl	$1, %ecx
	vmovaps	%xmm11, %xmm10
	jmp	.LBB0_31
	.p2align	4, 0x90
.LBB0_29:                               #   in Loop: Header=BB0_16 Depth=4
	vxorps	%xmm14, %xmm14, %xmm14
.LBB0_30:                               #   in Loop: Header=BB0_16 Depth=4
	vmovss	.LCPI0_1(%rip), %xmm6           # xmm6 = mem[0],zero,zero,zero
.LBB0_31:                               #   in Loop: Header=BB0_16 Depth=4
	vbroadcastss	.LCPI0_6(%rip), %xmm0   # xmm0 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vmovaps	%xmm0, 160(%rsp)                # 16-byte Spill
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+16(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+20(%rip), %xmm5 # xmm5 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+24(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	vmulss	%xmm0, %xmm13, %xmm4
	vfmadd231ss	%xmm9, %xmm5, %xmm4     # xmm4 = (xmm5 * xmm9) + xmm4
	vfnmadd231ss	%xmm3, %xmm1, %xmm4     # xmm4 = -(xmm1 * xmm3) + xmm4
	vbroadcastss	.LCPI0_7(%rip), %xmm2   # xmm2 = [NaN,NaN,NaN,NaN]
	vmovaps	%xmm2, 336(%rsp)                # 16-byte Spill
	vandps	%xmm2, %xmm4, %xmm2
	vucomiss	.LCPI0_8(%rip), %xmm2
	jae	.LBB0_34
.LBB0_32:                               #   in Loop: Header=BB0_16 Depth=4
	testl	%ecx, %ecx
	vmovss	.LCPI0_3(%rip), %xmm11          # xmm11 = mem[0],zero,zero,zero
	vmovaps	144(%rsp), %xmm10               # 16-byte Reload
	je	.LBB0_14
# %bb.33:                               #   in Loop: Header=BB0_16 Depth=4
	vmovshdup	%xmm10, %xmm7           # xmm7 = xmm10[1,1,3,3]
	vucomiss	.LCPI0_10(%rip), %xmm10
	jb	.LBB0_37
	jmp	.LBB0_38
	.p2align	4, 0x90
.LBB0_34:                               #   in Loop: Header=BB0_16 Depth=4
	vmulss	_ZZL12ao_scanlinesiiiiPfE5plane+4(%rip), %xmm5, %xmm2
	vfmadd132ss	_ZZL12ao_scanlinesiiiiPfE5plane(%rip), %xmm2, %xmm0 # xmm0 = (xmm0 * mem) + xmm2
	vfmadd132ss	_ZZL12ao_scanlinesiiiiPfE5plane+8(%rip), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vdivss	%xmm4, %xmm1, %xmm0
	vucomiss	%xmm14, %xmm0
	jbe	.LBB0_32
# %bb.35:                               #   in Loop: Header=BB0_16 Depth=4
	vucomiss	%xmm10, %xmm0
	jae	.LBB0_32
# %bb.36:                               #   in Loop: Header=BB0_16 Depth=4
	vxorps	160(%rsp), %xmm3, %xmm1         # 16-byte Folded Reload
	vmulss	%xmm0, %xmm13, %xmm2
	vmulss	%xmm0, %xmm9, %xmm3
	vinsertps	$16, %xmm3, %xmm2, %xmm2 # xmm2 = xmm2[0],xmm3[0],xmm2[2,3]
	vmovaps	%xmm2, 16(%rsp)                 # 16-byte Spill
	vmulss	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, 128(%rsp)                # 16-byte Spill
	vmovsd	_ZZL12ao_scanlinesiiiiPfE5plane+16(%rip), %xmm10 # xmm10 = mem[0],zero
	vmovsd	_ZZL12ao_scanlinesiiiiPfE5plane+24(%rip), %xmm8 # xmm8 = mem[0],zero
	vmovss	.LCPI0_3(%rip), %xmm11          # xmm11 = mem[0],zero,zero,zero
	vmovshdup	%xmm10, %xmm7           # xmm7 = xmm10[1,1,3,3]
	vucomiss	.LCPI0_10(%rip), %xmm10
	jae	.LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_16 Depth=4
	vxorps	%xmm0, %xmm0, %xmm0
	vucomiss	.LCPI0_11(%rip), %xmm10
	vxorps	%xmm2, %xmm2, %xmm2
	vmovaps	%xmm6, %xmm4
	ja	.LBB0_42
.LBB0_38:                               #   in Loop: Header=BB0_16 Depth=4
	vucomiss	.LCPI0_10(%rip), %xmm7
	jae	.LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_16 Depth=4
	vxorps	%xmm0, %xmm0, %xmm0
	vucomiss	.LCPI0_11(%rip), %xmm7
	vmovaps	%xmm6, %xmm2
	vxorps	%xmm4, %xmm4, %xmm4
	ja	.LBB0_42
.LBB0_40:                               #   in Loop: Header=BB0_16 Depth=4
	vucomiss	.LCPI0_10(%rip), %xmm8
	setb	%cl
	vucomiss	.LCPI0_11(%rip), %xmm8
	seta	%dl
	vxorps	%xmm2, %xmm2, %xmm2
	vmovaps	%xmm6, %xmm0
	vxorps	%xmm4, %xmm4, %xmm4
	testb	%dl, %cl
	jne	.LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_16 Depth=4
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm6, %xmm4
	.p2align	4, 0x90
.LBB0_42:                               #   in Loop: Header=BB0_16 Depth=4
	vmulss	%xmm7, %xmm0, %xmm1
	vfmsub231ss	%xmm8, %xmm2, %xmm1     # xmm1 = (xmm2 * xmm8) - xmm1
	vmulss	%xmm4, %xmm8, %xmm3
	vfmsub231ss	%xmm0, %xmm10, %xmm3    # xmm3 = (xmm10 * xmm0) - xmm3
	vmulss	%xmm2, %xmm10, %xmm0
	vfmsub231ss	%xmm4, %xmm7, %xmm0     # xmm0 = (xmm7 * xmm4) - xmm0
	vmulss	%xmm1, %xmm1, %xmm2
	vfmadd231ss	%xmm0, %xmm0, %xmm2     # xmm2 = (xmm0 * xmm0) + xmm2
	vfmadd231ss	%xmm3, %xmm3, %xmm2     # xmm2 = (xmm3 * xmm3) + xmm2
	vrsqrtss	%xmm2, %xmm2, %xmm4
	vmulss	%xmm4, %xmm2, %xmm2
	vfmadd213ss	%xmm15, %xmm4, %xmm2    # xmm2 = (xmm4 * xmm2) + xmm15
	vmulss	%xmm4, %xmm11, %xmm12
	movl	NAO_SAMPLES(%rip), %ecx
	testl	%ecx, %ecx
	jle	.LBB0_69
# %bb.43:                               #   in Loop: Header=BB0_16 Depth=4
	vmovaps	16(%rsp), %xmm5                 # 16-byte Reload
	vmovshdup	%xmm5, %xmm9            # xmm9 = xmm5[1,1,3,3]
	vmovaps	%xmm10, %xmm4
	vmovss	.LCPI0_9(%rip), %xmm6           # xmm6 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm5, %xmm6, %xmm4     # xmm4 = (xmm6 * xmm4) + xmm5
	vmovaps	%xmm4, 288(%rsp)                # 16-byte Spill
	vmovaps	%xmm7, %xmm4
	vfmadd213ss	%xmm9, %xmm6, %xmm4     # xmm4 = (xmm6 * xmm4) + xmm9
	vmovaps	%xmm8, %xmm5
	vfmadd213ss	128(%rsp), %xmm6, %xmm5 # 16-byte Folded Reload
                                        # xmm5 = (xmm6 * xmm5) + mem
	vmovaps	%xmm5, 256(%rsp)                # 16-byte Spill
	vmulss	%xmm2, %xmm12, %xmm2
	vmulss	%xmm1, %xmm2, %xmm1
	vmulss	%xmm3, %xmm2, %xmm3
	vmulss	%xmm0, %xmm2, %xmm0
	vmulss	%xmm3, %xmm8, %xmm2
	vfmsub231ss	%xmm7, %xmm0, %xmm2     # xmm2 = (xmm0 * xmm7) - xmm2
	vmovss	%xmm0, 104(%rsp)                # 4-byte Spill
	vmulss	%xmm0, %xmm10, %xmm5
	vmovaps	%xmm8, 320(%rsp)                # 16-byte Spill
	vfmsub231ss	%xmm8, %xmm1, %xmm5     # xmm5 = (xmm1 * xmm8) - xmm5
	vmovaps	%xmm7, 304(%rsp)                # 16-byte Spill
	vmovss	%xmm1, 112(%rsp)                # 4-byte Spill
	vmulss	%xmm7, %xmm1, %xmm1
	vmovaps	%xmm10, 144(%rsp)               # 16-byte Spill
	vmovss	%xmm3, 108(%rsp)                # 4-byte Spill
	vfmsub231ss	%xmm10, %xmm3, %xmm1    # xmm1 = (xmm3 * xmm10) - xmm1
	vmovss	%xmm2, 100(%rsp)                # 4-byte Spill
	vmulss	%xmm2, %xmm2, %xmm0
	vmovss	%xmm5, 96(%rsp)                 # 4-byte Spill
	vfmadd231ss	%xmm5, %xmm5, %xmm0     # xmm0 = (xmm5 * xmm5) + xmm0
	vmovss	%xmm1, 92(%rsp)                 # 4-byte Spill
	vfmadd231ss	%xmm1, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm1) + xmm0
	vrsqrtss	%xmm0, %xmm0, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	vfmadd213ss	%xmm15, %xmm1, %xmm0    # xmm0 = (xmm1 * xmm0) + xmm15
	vmulss	%xmm1, %xmm11, %xmm1
	vmulss	%xmm0, %xmm1, %xmm0
	vmovss	%xmm0, 88(%rsp)                 # 4-byte Spill
	vmovaps	%xmm4, 272(%rsp)                # 16-byte Spill
	vmulss	%xmm4, %xmm4, %xmm0
	vmovss	%xmm0, 84(%rsp)                 # 4-byte Spill
	xorl	%r15d, %r15d
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm9, %xmm9, %xmm9
	jmp	.LBB0_45
	.p2align	4, 0x90
.LBB0_44:                               #   in Loop: Header=BB0_45 Depth=5
	incl	%r15d
	cmpl	%ecx, %r15d
	jge	.LBB0_68
.LBB0_45:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_12 Depth=3
                                        #         Parent Loop BB0_16 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_49 Depth 6
	testl	%ecx, %ecx
	jle	.LBB0_44
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=5
	xorl	%r13d, %r13d
	jmp	.LBB0_49
	.p2align	4, 0x90
.LBB0_47:                               #   in Loop: Header=BB0_49 Depth=6
	vmovss	16(%rsp), %xmm1                 # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vaddss	%xmm1, %xmm8, %xmm1
.LBB0_48:                               #   in Loop: Header=BB0_49 Depth=6
	incl	%r13d
	movl	NAO_SAMPLES(%rip), %ecx
	cmpl	%ecx, %r13d
	jge	.LBB0_44
.LBB0_49:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_12 Depth=3
                                        #         Parent Loop BB0_16 Depth=4
                                        #           Parent Loop BB0_45 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	vmovss	%xmm1, 16(%rsp)                 # 4-byte Spill
	callq	drand48
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 128(%rsp)                # 4-byte Spill
	vsqrtss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 116(%rsp)                # 4-byte Spill
	callq	drand48
	vmulsd	.LCPI0_12(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	sincosf@PLT
	vxorps	%xmm9, %xmm9, %xmm9
	vmovss	116(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmulss	120(%rsp), %xmm0, %xmm3
	vmulss	124(%rsp), %xmm0, %xmm0
	vmulss	88(%rsp), %xmm0, %xmm4          # 4-byte Folded Reload
	vmovss	.LCPI0_1(%rip), %xmm8           # xmm8 = mem[0],zero,zero,zero
	vsubss	128(%rsp), %xmm8, %xmm0         # 4-byte Folded Reload
	vsqrtss	%xmm0, %xmm0, %xmm0
	vmulss	144(%rsp), %xmm0, %xmm1         # 16-byte Folded Reload
	vfmadd231ss	112(%rsp), %xmm3, %xmm1 # 4-byte Folded Reload
                                        # xmm1 = (xmm3 * mem) + xmm1
	vfmadd231ss	100(%rsp), %xmm4, %xmm1 # 4-byte Folded Reload
                                        # xmm1 = (xmm4 * mem) + xmm1
	vmulss	304(%rsp), %xmm0, %xmm2         # 16-byte Folded Reload
	vfmadd231ss	108(%rsp), %xmm3, %xmm2 # 4-byte Folded Reload
                                        # xmm2 = (xmm3 * mem) + xmm2
	vfmadd231ss	96(%rsp), %xmm4, %xmm2  # 4-byte Folded Reload
                                        # xmm2 = (xmm4 * mem) + xmm2
	vmulss	320(%rsp), %xmm0, %xmm0         # 16-byte Folded Reload
	vfmadd231ss	104(%rsp), %xmm3, %xmm0 # 4-byte Folded Reload
                                        # xmm0 = (xmm3 * mem) + xmm0
	vfmadd231ss	92(%rsp), %xmm4, %xmm0  # 4-byte Folded Reload
                                        # xmm0 = (xmm4 * mem) + xmm0
	vmovaps	288(%rsp), %xmm10               # 16-byte Reload
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.0(%rip), %xmm10, %xmm4
	vmovaps	256(%rsp), %xmm13               # 16-byte Reload
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.2(%rip), %xmm13, %xmm3
	vmulss	%xmm4, %xmm1, %xmm5
	vmovaps	272(%rsp), %xmm12               # 16-byte Reload
	vfmadd231ss	%xmm12, %xmm2, %xmm5    # xmm5 = (xmm2 * xmm12) + xmm5
	vfmadd231ss	%xmm3, %xmm0, %xmm5     # xmm5 = (xmm0 * xmm3) + xmm5
	vmovss	84(%rsp), %xmm14                # 4-byte Reload
                                        # xmm14 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm14, %xmm4, %xmm4    # xmm4 = (xmm4 * xmm4) + xmm14
	vfmadd231ss	%xmm3, %xmm3, %xmm4     # xmm4 = (xmm3 * xmm3) + xmm4
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.1(%rip), %xmm3 # xmm3 = mem[0],zero,zero,zero
	vfnmadd231ss	%xmm3, %xmm3, %xmm4     # xmm4 = -(xmm3 * xmm3) + xmm4
	vfmsub231ss	%xmm5, %xmm5, %xmm4     # xmm4 = (xmm5 * xmm5) - xmm4
	vucomiss	%xmm9, %xmm4
	movl	$0, %eax
	vmovss	.LCPI0_4(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	jbe	.LBB0_54
# %bb.50:                               #   in Loop: Header=BB0_49 Depth=6
	vsqrtss	%xmm4, %xmm4, %xmm3
	vaddss	%xmm5, %xmm3, %xmm3
	vucomiss	%xmm9, %xmm3
	setb	%cl
	vucomiss	.LCPI0_5(%rip), %xmm3
	seta	%al
	andb	%cl, %al
	jne	.LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_49 Depth=6
	vmovss	.LCPI0_4(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	jmp	.LBB0_53
	.p2align	4, 0x90
.LBB0_52:                               #   in Loop: Header=BB0_49 Depth=6
	vxorps	160(%rsp), %xmm3, %xmm3         # 16-byte Folded Reload
.LBB0_53:                               #   in Loop: Header=BB0_49 Depth=6
	movzbl	%al, %eax
.LBB0_54:                               #   in Loop: Header=BB0_49 Depth=6
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.0(%rip), %xmm10, %xmm4
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.2(%rip), %xmm13, %xmm6
	vmulss	%xmm1, %xmm4, %xmm5
	vfmadd231ss	%xmm2, %xmm12, %xmm5    # xmm5 = (xmm12 * xmm2) + xmm5
	vfmadd231ss	%xmm0, %xmm6, %xmm5     # xmm5 = (xmm6 * xmm0) + xmm5
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.1(%rip), %xmm7 # xmm7 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm14, %xmm4, %xmm4    # xmm4 = (xmm4 * xmm4) + xmm14
	vfnmsub231ss	%xmm6, %xmm6, %xmm4     # xmm4 = -(xmm6 * xmm6) - xmm4
	vfmadd231ss	%xmm7, %xmm7, %xmm4     # xmm4 = (xmm7 * xmm7) + xmm4
	vfmadd231ss	%xmm5, %xmm5, %xmm4     # xmm4 = (xmm5 * xmm5) + xmm4
	vucomiss	%xmm9, %xmm4
	jbe	.LBB0_58
# %bb.55:                               #   in Loop: Header=BB0_49 Depth=6
	vsqrtss	%xmm4, %xmm4, %xmm4
	vaddss	%xmm5, %xmm4, %xmm5
	vxorps	160(%rsp), %xmm5, %xmm4         # 16-byte Folded Reload
	vucomiss	%xmm9, %xmm5
	setb	%cl
	vucomiss	%xmm4, %xmm3
	seta	%dl
	testb	%dl, %cl
	cmovnel	%r14d, %eax
	vmovss	.LCPI0_2(%rip), %xmm15          # xmm15 = mem[0],zero,zero,zero
	vmovss	.LCPI0_3(%rip), %xmm11          # xmm11 = mem[0],zero,zero,zero
	jne	.LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_49 Depth=6
	vmovaps	%xmm3, %xmm4
.LBB0_57:                               #   in Loop: Header=BB0_49 Depth=6
	vmovaps	%xmm4, %xmm3
	jmp	.LBB0_59
	.p2align	4, 0x90
.LBB0_58:                               #   in Loop: Header=BB0_49 Depth=6
	vmovss	.LCPI0_2(%rip), %xmm15          # xmm15 = mem[0],zero,zero,zero
	vmovss	.LCPI0_3(%rip), %xmm11          # xmm11 = mem[0],zero,zero,zero
.LBB0_59:                               #   in Loop: Header=BB0_49 Depth=6
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.0(%rip), %xmm10, %xmm4
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.2(%rip), %xmm13, %xmm6
	vmulss	%xmm1, %xmm4, %xmm5
	vfmadd231ss	%xmm2, %xmm12, %xmm5    # xmm5 = (xmm12 * xmm2) + xmm5
	vfmadd231ss	%xmm0, %xmm6, %xmm5     # xmm5 = (xmm6 * xmm0) + xmm5
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.1(%rip), %xmm7 # xmm7 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm14, %xmm4, %xmm4    # xmm4 = (xmm4 * xmm4) + xmm14
	vfnmsub231ss	%xmm6, %xmm6, %xmm4     # xmm4 = -(xmm6 * xmm6) - xmm4
	vfmadd231ss	%xmm7, %xmm7, %xmm4     # xmm4 = (xmm7 * xmm7) + xmm4
	vfmadd231ss	%xmm5, %xmm5, %xmm4     # xmm4 = (xmm5 * xmm5) + xmm4
	vucomiss	%xmm9, %xmm4
	jbe	.LBB0_63
# %bb.60:                               #   in Loop: Header=BB0_49 Depth=6
	vsqrtss	%xmm4, %xmm4, %xmm4
	vaddss	%xmm5, %xmm4, %xmm5
	vxorps	160(%rsp), %xmm5, %xmm4         # 16-byte Folded Reload
	vucomiss	%xmm9, %xmm5
	setb	%cl
	vucomiss	%xmm4, %xmm3
	seta	%dl
	testb	%dl, %cl
	cmovnel	%r14d, %eax
	jne	.LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_49 Depth=6
	vmovaps	%xmm3, %xmm4
.LBB0_62:                               #   in Loop: Header=BB0_49 Depth=6
	vmovaps	%xmm4, %xmm3
.LBB0_63:                               #   in Loop: Header=BB0_49 Depth=6
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+16(%rip), %xmm4 # xmm4 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+20(%rip), %xmm6 # xmm6 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+24(%rip), %xmm5 # xmm5 = mem[0],zero,zero,zero
	vmulss	%xmm1, %xmm4, %xmm1
	vfmadd213ss	%xmm1, %xmm6, %xmm2     # xmm2 = (xmm6 * xmm2) + xmm1
	vfmadd213ss	%xmm2, %xmm5, %xmm0     # xmm0 = (xmm5 * xmm0) + xmm2
	vandps	336(%rsp), %xmm0, %xmm1         # 16-byte Folded Reload
	vucomiss	.LCPI0_8(%rip), %xmm1
	jae	.LBB0_66
.LBB0_64:                               #   in Loop: Header=BB0_49 Depth=6
	vmovss	16(%rsp), %xmm1                 # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vaddss	%xmm1, %xmm8, %xmm0
	testl	%eax, %eax
	je	.LBB0_48
# %bb.65:                               #   in Loop: Header=BB0_49 Depth=6
	vmovaps	%xmm0, %xmm1
	jmp	.LBB0_48
	.p2align	4, 0x90
.LBB0_66:                               #   in Loop: Header=BB0_49 Depth=6
	vmulss	%xmm4, %xmm10, %xmm1
	vfmadd231ss	%xmm12, %xmm6, %xmm1    # xmm1 = (xmm6 * xmm12) + xmm1
	vfmadd231ss	%xmm13, %xmm5, %xmm1    # xmm1 = (xmm5 * xmm13) + xmm1
	vfnmadd231ss	_ZZL12ao_scanlinesiiiiPfE5plane+4(%rip), %xmm6, %xmm1 # xmm1 = -(xmm6 * mem) + xmm1
	vfnmadd231ss	_ZZL12ao_scanlinesiiiiPfE5plane(%rip), %xmm4, %xmm1 # xmm1 = -(xmm4 * mem) + xmm1
	vfmsub231ss	_ZZL12ao_scanlinesiiiiPfE5plane+8(%rip), %xmm5, %xmm1 # xmm1 = (xmm5 * mem) - xmm1
	vdivss	%xmm0, %xmm1, %xmm0
	vucomiss	%xmm9, %xmm0
	jbe	.LBB0_64
# %bb.67:                               #   in Loop: Header=BB0_49 Depth=6
	vucomiss	%xmm3, %xmm0
	jb	.LBB0_47
	jmp	.LBB0_64
	.p2align	4, 0x90
.LBB0_68:                               #   in Loop: Header=BB0_16 Depth=4
	movl	nsubsamples(%rip), %eax
	movq	240(%rsp), %r15                 # 8-byte Reload
	vmovss	.LCPI0_1(%rip), %xmm6           # xmm6 = mem[0],zero,zero,zero
	movq	248(%rsp), %rsi                 # 8-byte Reload
	jmp	.LBB0_70
	.p2align	4, 0x90
.LBB0_69:                               #   in Loop: Header=BB0_16 Depth=4
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm9, %xmm9, %xmm9
.LBB0_70:                               #   in Loop: Header=BB0_16 Depth=4
	imull	%ecx, %ecx
	vxorps	%xmm13, %xmm13, %xmm13
	vcvtsi2ss	%ecx, %xmm13, %xmm0
	vsubss	%xmm1, %xmm0, %xmm1
	vdivss	%xmm0, %xmm1, %xmm0
	jmp	.LBB0_15
	.p2align	4, 0x90
.LBB0_72:                               #   in Loop: Header=BB0_9 Depth=2
	leaq	1(%rsi), %rdi
	leaq	2(%rsi), %r8
	jmp	.LBB0_8
.LBB0_73:
	addq	$360, %rsp                      # imm = 0x168
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
.LBB0_74:
	.cfi_def_cfa_offset 416
	movl	$_ZGVZL12ao_scanlinesiiiiPfE5plane, %edi
	callq	__cxa_guard_acquire
	testl	%eax, %eax
	je	.LBB0_1
# %bb.75:
	movabsq	$-4683743612465315840, %rax     # imm = 0xBF00000000000000
	movq	%rax, _ZZL12ao_scanlinesiiiiPfE5plane(%rip)
	movl	$0, _ZZL12ao_scanlinesiiiiPfE5plane+8(%rip)
	movabsq	$4575657221408423936, %rax      # imm = 0x3F80000000000000
	movq	%rax, _ZZL12ao_scanlinesiiiiPfE5plane+16(%rip)
	movl	$0, _ZZL12ao_scanlinesiiiiPfE5plane+24(%rip)
	movl	$_ZGVZL12ao_scanlinesiiiiPfE5plane, %edi
	callq	__cxa_guard_release
	jmp	.LBB0_1
.LBB0_76:
	movl	$_ZGVZL12ao_scanlinesiiiiPfE7spheres, %edi
	callq	__cxa_guard_acquire
	testl	%eax, %eax
	je	.LBB0_2
# %bb.77:
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
	jmp	.LBB0_2
.Lfunc_end0:
	.size	_Z9ao_serialiiPf, .Lfunc_end0-_Z9ao_serialiiPf
	.cfi_endproc
                                        # -- End function
	.type	NAO_SAMPLES,@object             # @NAO_SAMPLES
	.bss
	.globl	NAO_SAMPLES
	.p2align	2
NAO_SAMPLES:
	.long	0                               # 0x0
	.size	NAO_SAMPLES, 4

	.type	nsubsamples,@object             # @nsubsamples
	.globl	nsubsamples
	.p2align	2
nsubsamples:
	.long	0                               # 0x0
	.size	nsubsamples, 4

	.type	_ZZL12ao_scanlinesiiiiPfE5plane,@object # @_ZZL12ao_scanlinesiiiiPfE5plane
	.local	_ZZL12ao_scanlinesiiiiPfE5plane
	.comm	_ZZL12ao_scanlinesiiiiPfE5plane,32,4
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

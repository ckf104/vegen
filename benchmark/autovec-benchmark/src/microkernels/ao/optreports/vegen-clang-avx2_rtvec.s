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
	.long	0xc0400000                      # float -3
.LCPI0_5:
	.long	0xbf000000                      # float -0.5
.LCPI0_6:
	.long	0xdbb1a2bc                      # float -9.99999984E+16
.LCPI0_7:
	.long	0x80000000                      # float -0
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
	subq	$744, %rsp                      # imm = 0x2E8
	.cfi_def_cfa_offset 800
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movl	%esi, %ebx
	movl	%edi, %r14d
	movl	$8, NAO_SAMPLES(%rip)
	movl	$2, nsubsamples(%rip)
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
	jle	.LBB0_108
# %bb.7:
	vcvtsi2ss	%r14d, %xmm1, %xmm1
	vmovss	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm1, 116(%rsp)                # 4-byte Spill
	vmulss	%xmm0, %xmm1, %xmm2
	vcvtsi2ss	%ebx, %xmm3, %xmm1
	vmulss	%xmm0, %xmm1, %xmm0
	vmovss	%xmm0, 112(%rsp)                # 4-byte Spill
	vmovss	%xmm2, 88(%rsp)                 # 4-byte Spill
	vmulss	%xmm1, %xmm2, %xmm0
	movslq	%r14d, %rax
	movl	%ebx, %ecx
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	movl	%eax, %eax
	movq	%rax, 344(%rsp)                 # 8-byte Spill
	vmovss	.LCPI0_3(%rip), %xmm10          # xmm10 = mem[0],zero,zero,zero
	vdivss	%xmm1, %xmm10, %xmm1
	vmovss	%xmm1, 108(%rsp)                # 4-byte Spill
	vdivss	%xmm0, %xmm10, %xmm0
	vmovss	%xmm0, 104(%rsp)                # 4-byte Spill
	xorl	%esi, %esi
	vxorps	%xmm11, %xmm11, %xmm11
	leaq	184(%rsp), %rbx
                                        # implicit-def: $bpl
                                        # implicit-def: $al
	movl	%eax, 16(%rsp)                  # 4-byte Spill
                                        # implicit-def: $r8b
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $eax
                                        # kill: killed $eax
                                        # implicit-def: $ecx
                                        # implicit-def: $r13b
                                        # implicit-def: $al
	movl	%eax, 36(%rsp)                  # 4-byte Spill
                                        # implicit-def: $al
	movl	%eax, 32(%rsp)                  # 4-byte Spill
                                        # implicit-def: $r14b
                                        # implicit-def: $r11d
                                        # implicit-def: $eax
                                        # kill: killed $eax
                                        # implicit-def: $r9d
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
                                        # implicit-def: $xmm2
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
                                        # implicit-def: $xmm13
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm4
                                        # implicit-def: $xmm3
	movq	%r15, 360(%rsp)                 # 8-byte Spill
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_107:                              #   in Loop: Header=BB0_8 Depth=1
	movq	336(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rsi
	cmpq	320(%rsp), %rax                 # 8-byte Folded Reload
	je	.LBB0_108
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_17 Depth 3
                                        #         Child Loop BB0_20 Depth 4
                                        #           Child Loop BB0_71 Depth 5
                                        #             Child Loop BB0_73 Depth 6
	movq	%rsi, %rax
	movq	328(%rsp), %rdi                 # 8-byte Reload
	imulq	%rdi, %rax
	leaq	1(%rsi), %rdx
	movq	%rdx, 336(%rsp)                 # 8-byte Spill
	testl	%edi, %edi
	jg	.LBB0_9
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	jg	.LBB0_11
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	jg	.LBB0_13
	jmp	.LBB0_107
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_8 Depth=1
	movl	nsubsamples(%rip), %edi
	movl	%edi, 84(%rsp)                  # 4-byte Spill
	movq	%rax, 352(%rsp)                 # 8-byte Spill
	jle	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	vcvtsi2ss	%esi, %xmm15, %xmm0
	vmovss	%xmm0, 120(%rsp)                # 4-byte Spill
	jle	.LBB0_107
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=1
	xorl	%edi, %edi
	movl	84(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %edx
	movl	%eax, %r10d
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_14 Depth=2
	movl	%esi, %edx
.LBB0_106:                              #   in Loop: Header=BB0_14 Depth=2
	movl	%edx, %eax
	imull	%edx, %eax
	vcvtsi2ss	%eax, %xmm10, %xmm0
	vdivss	%xmm0, %xmm10, %xmm0
	movq	232(%rsp), %rax                 # 8-byte Reload
	vmulss	(%r15,%rax,4), %xmm0, %xmm1
	vmovss	%xmm1, (%r15,%rax,4)
	vmulss	4(%r15,%rax,4), %xmm0, %xmm1
	vmovss	%xmm1, 4(%r15,%rax,4)
	vmulss	8(%r15,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, 8(%r15,%rax,4)
	incq	%rdi
	cmpq	344(%rsp), %rdi                 # 8-byte Folded Reload
	je	.LBB0_107
.LBB0_14:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_17 Depth 3
                                        #         Child Loop BB0_20 Depth 4
                                        #           Child Loop BB0_71 Depth 5
                                        #             Child Loop BB0_73 Depth 6
	movq	352(%rsp), %rax                 # 8-byte Reload
	addq	%rdi, %rax
	leaq	(%rax,%rax,2), %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	testl	%edx, %edx
	movl	%edx, %esi
	jle	.LBB0_15
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	vxorps	%xmm15, %xmm15, %xmm15
	vcvtsi2ss	%edi, %xmm15, %xmm0
	vsubss	88(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmovss	%xmm0, 124(%rsp)                # 4-byte Spill
	movl	$0, 28(%rsp)                    # 4-byte Folded Spill
	movl	%r10d, %edx
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_17 Depth=3
	movl	24(%rsp), %eax                  # 4-byte Reload
	movl	16(%rsp), %r12d                 # 4-byte Reload
.LBB0_105:                              #   in Loop: Header=BB0_17 Depth=3
	movl	%r12d, 16(%rsp)                 # 4-byte Spill
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	movl	28(%rsp), %r12d                 # 4-byte Reload
	incl	%r12d
	movl	%edx, %esi
	movl	%edx, %eax
	movl	%edx, %r10d
	movl	%r12d, 28(%rsp)                 # 4-byte Spill
	cmpl	%edx, %r12d
	jge	.LBB0_106
.LBB0_17:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_20 Depth 4
                                        #           Child Loop BB0_71 Depth 5
                                        #             Child Loop BB0_73 Depth 6
	testl	%esi, %esi
	jle	.LBB0_18
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=3
	vcvtsi2ssl	28(%rsp), %xmm10, %xmm0 # 4-byte Folded Reload
	vmovss	%xmm0, 128(%rsp)                # 4-byte Spill
	xorl	%r10d, %r10d
	movl	24(%rsp), %eax                  # 4-byte Reload
	movl	16(%rsp), %r12d                 # 4-byte Reload
	jmp	.LBB0_20
	.p2align	4, 0x90
.LBB0_104:                              #   in Loop: Header=BB0_20 Depth=4
	movq	232(%rsp), %rax                 # 8-byte Reload
	vmovsd	(%r15,%rax,4), %xmm0            # xmm0 = mem[0],zero
	vbroadcastss	%xmm4, %xmm1
	vaddps	%xmm1, %xmm0, %xmm0
	vmovlps	%xmm0, (%r15,%rax,4)
	vaddss	8(%r15,%rax,4), %xmm4, %xmm0
	vmovss	%xmm0, 8(%r15,%rax,4)
	incl	%esi
	movl	%edx, %eax
	movl	%esi, %r10d
	movl	%r9d, %esi
	movl	%r11d, 40(%rsp)                 # 4-byte Spill
	cmpl	%r9d, %r10d
	jge	.LBB0_105
.LBB0_20:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        #       Parent Loop BB0_17 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_71 Depth 5
                                        #             Child Loop BB0_73 Depth 6
	vmovaps	%xmm3, 256(%rsp)                # 16-byte Spill
	vmovaps	%xmm2, 208(%rsp)                # 16-byte Spill
	movl	%esi, 132(%rsp)                 # 4-byte Spill
	vcvtsi2ss	%esi, %xmm11, %xmm0
	vdivss	%xmm0, %xmm10, %xmm0
	vcvtsi2ss	%r10d, %xmm11, %xmm1
	vfnmsub213ss	120(%rsp), %xmm0, %xmm1 # 4-byte Folded Reload
                                        # xmm1 = -(xmm0 * xmm1) - mem
	vmovss	128(%rsp), %xmm2                # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	vfmadd213ss	124(%rsp), %xmm2, %xmm0 # 4-byte Folded Reload
                                        # xmm0 = (xmm2 * xmm0) + mem
	vaddss	112(%rsp), %xmm1, %xmm1         # 4-byte Folded Reload
	vmovss	108(%rsp), %xmm2                # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	vaddss	%xmm2, %xmm2, %xmm2
	vmulss	%xmm2, %xmm1, %xmm3
	vmulss	116(%rsp), %xmm0, %xmm0         # 4-byte Folded Reload
	vmulss	104(%rsp), %xmm0, %xmm14        # 4-byte Folded Reload
	vmovaps	%xmm14, %xmm0
	vfmadd213ss	%xmm10, %xmm14, %xmm0   # xmm0 = (xmm14 * xmm0) + xmm10
	vfmadd231ss	%xmm3, %xmm3, %xmm0     # xmm0 = (xmm3 * xmm3) + xmm0
	vrsqrtss	%xmm0, %xmm0, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	vmovss	.LCPI0_4(%rip), %xmm8           # xmm8 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm8, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm0) + xmm8
	vmovss	.LCPI0_5(%rip), %xmm9           # xmm9 = mem[0],zero,zero,zero
	vmulss	%xmm1, %xmm9, %xmm1
	vmulss	%xmm0, %xmm1, %xmm2
	vmulss	%xmm2, %xmm14, %xmm6
	vfnmsub213ss	%xmm11, %xmm2, %xmm14   # xmm14 = -(xmm2 * xmm14) - xmm11
	vmovss	%xmm3, 48(%rsp)                 # 4-byte Spill
	vfnmsub213ss	%xmm11, %xmm2, %xmm3    # xmm3 = -(xmm2 * xmm3) - xmm11
	vmovss	%xmm3, 20(%rsp)                 # 4-byte Spill
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.0(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.2(%rip), %xmm3 # xmm3 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.1(%rip), %xmm5 # xmm5 = mem[0],zero,zero,zero
	vmulss	%xmm3, %xmm3, %xmm0
	vfmadd231ss	%xmm1, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm1) + xmm0
	vfnmadd231ss	%xmm5, %xmm5, %xmm0     # xmm0 = -(xmm5 * xmm5) + xmm0
	vmovss	%xmm6, 64(%rsp)                 # 4-byte Spill
	vmulss	%xmm1, %xmm6, %xmm5
	vfmsub231ss	%xmm3, %xmm2, %xmm5     # xmm5 = (xmm2 * xmm3) - xmm5
	vfmsub231ss	%xmm5, %xmm5, %xmm0     # xmm0 = (xmm5 * xmm5) - xmm0
	vucomiss	%xmm11, %xmm0
	movl	%r10d, %esi
	vmovaps	%xmm4, 672(%rsp)                # 16-byte Spill
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	movl	%edx, 136(%rsp)                 # 4-byte Spill
	jbe	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=4
	vsqrtss	%xmm0, %xmm0, %xmm6
	vaddss	%xmm5, %xmm6, %xmm5
	xorl	%ebp, %ebp
	vucomiss	%xmm11, %xmm5
	jae	.LBB0_22
# %bb.23:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	%xmm13, %xmm12
	vucomiss	.LCPI0_6(%rip), %xmm5
	movl	$0, %edx
	movl	%ecx, %r10d
	jbe	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_20 Depth=4
	vbroadcastss	.LCPI0_7(%rip), %xmm6   # xmm6 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vxorps	%xmm6, %xmm5, %xmm4
	vmovaps	%xmm4, 576(%rsp)                # 16-byte Spill
	vmulss	%xmm5, %xmm14, %xmm6
	vmulss	20(%rsp), %xmm5, %xmm7          # 4-byte Folded Reload
	vmulss	%xmm2, %xmm5, %xmm4
	vinsertps	$16, %xmm7, %xmm6, %xmm5 # xmm5 = xmm6[0],xmm7[0],xmm6[2,3]
	vmovaps	%xmm5, 544(%rsp)                # 16-byte Spill
	vsubss	%xmm1, %xmm6, %xmm1
	vmovaps	%xmm4, 592(%rsp)                # 16-byte Spill
	vsubss	%xmm3, %xmm4, %xmm3
	vmulss	%xmm1, %xmm1, %xmm5
	vfmadd231ss	%xmm7, %xmm7, %xmm5     # xmm5 = (xmm7 * xmm7) + xmm5
	vfmadd231ss	%xmm3, %xmm3, %xmm5     # xmm5 = (xmm3 * xmm3) + xmm5
	vrsqrtss	%xmm5, %xmm5, %xmm6
	vmulss	%xmm6, %xmm5, %xmm5
	vfmadd213ss	%xmm8, %xmm6, %xmm5     # xmm5 = (xmm6 * xmm5) + xmm8
	vmulss	%xmm6, %xmm9, %xmm6
	vmulss	%xmm5, %xmm6, %xmm5
	vmulss	%xmm1, %xmm5, %xmm1
	vmulss	%xmm7, %xmm5, %xmm6
	vinsertps	$16, %xmm6, %xmm1, %xmm1 # xmm1 = xmm1[0],xmm6[0],xmm1[2,3]
	vmovaps	%xmm1, 432(%rsp)                # 16-byte Spill
	vmulss	%xmm3, %xmm5, %xmm1
	vmovaps	%xmm1, 448(%rsp)                # 16-byte Spill
	movl	$1, %edx
	movb	$1, %bpl
	jmp	.LBB0_25
	.p2align	4, 0x90
.LBB0_22:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	%xmm13, %xmm12
	xorl	%edx, %edx
	movl	%ecx, %r10d
.LBB0_25:                               #   in Loop: Header=BB0_20 Depth=4
	vucomiss	%xmm11, %xmm0
	seta	%al
	vmovaps	448(%rsp), %xmm8                # 16-byte Reload
	vmovaps	432(%rsp), %xmm15               # 16-byte Reload
	vmovaps	592(%rsp), %xmm13               # 16-byte Reload
	vmovaps	544(%rsp), %xmm10               # 16-byte Reload
	testb	%bpl, %al
	jne	.LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_20 Depth=4
	vxorps	%xmm8, %xmm8, %xmm8
	vxorps	%xmm15, %xmm15, %xmm15
	vxorps	%xmm13, %xmm13, %xmm13
	vxorps	%xmm10, %xmm10, %xmm10
.LBB0_27:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	576(%rsp), %xmm11               # 16-byte Reload
	jne	.LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_20 Depth=4
	vmovss	.LCPI0_8(%rip), %xmm11          # xmm11 = mem[0],zero,zero,zero
.LBB0_29:                               #   in Loop: Header=BB0_20 Depth=4
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.0(%rip), %xmm3 # xmm3 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.2(%rip), %xmm7 # xmm7 = mem[0],zero,zero,zero
	vmulss	64(%rsp), %xmm3, %xmm6          # 4-byte Folded Reload
	vfmsub231ss	%xmm2, %xmm7, %xmm6     # xmm6 = (xmm7 * xmm2) - xmm6
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.1(%rip), %xmm5 # xmm5 = mem[0],zero,zero,zero
	vmulss	%xmm7, %xmm7, %xmm0
	vfnmsub231ss	%xmm3, %xmm3, %xmm0     # xmm0 = -(xmm3 * xmm3) - xmm0
	vfmadd231ss	%xmm5, %xmm5, %xmm0     # xmm0 = (xmm5 * xmm5) + xmm0
	vfmadd231ss	%xmm6, %xmm6, %xmm0     # xmm0 = (xmm6 * xmm6) + xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	vmovaps	%xmm12, 240(%rsp)               # 16-byte Spill
	jbe	.LBB0_30
# %bb.31:                               #   in Loop: Header=BB0_20 Depth=4
	vsqrtss	%xmm0, %xmm0, %xmm5
	vaddss	%xmm6, %xmm5, %xmm6
	vbroadcastss	.LCPI0_7(%rip), %xmm5   # xmm5 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vxorps	%xmm5, %xmm6, %xmm4
	movl	$0, 36(%rsp)                    # 4-byte Folded Spill
	vucomiss	%xmm1, %xmm6
	jae	.LBB0_34
# %bb.32:                               #   in Loop: Header=BB0_20 Depth=4
	vucomiss	%xmm4, %xmm11
	jbe	.LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	%xmm4, %xmm9
	vmulss	%xmm6, %xmm14, %xmm5
	vmulss	20(%rsp), %xmm6, %xmm1          # 4-byte Folded Reload
	vmulss	%xmm2, %xmm6, %xmm6
	vinsertps	$16, %xmm1, %xmm5, %xmm4 # xmm4 = xmm5[0],xmm1[0],xmm5[2,3]
	vmovaps	%xmm4, 624(%rsp)                # 16-byte Spill
	vsubss	%xmm3, %xmm5, %xmm3
	vmovaps	%xmm6, 656(%rsp)                # 16-byte Spill
	vsubss	%xmm7, %xmm6, %xmm5
	vmulss	%xmm3, %xmm3, %xmm6
	vfmadd231ss	%xmm1, %xmm1, %xmm6     # xmm6 = (xmm1 * xmm1) + xmm6
	vfmadd231ss	%xmm5, %xmm5, %xmm6     # xmm6 = (xmm5 * xmm5) + xmm6
	vrsqrtss	%xmm6, %xmm6, %xmm7
	vmulss	%xmm7, %xmm6, %xmm6
	vfmadd213ss	.LCPI0_4(%rip), %xmm7, %xmm6 # xmm6 = (xmm7 * xmm6) + mem
	vmulss	.LCPI0_5(%rip), %xmm7, %xmm7
	vmulss	%xmm6, %xmm7, %xmm6
	vmulss	%xmm3, %xmm6, %xmm3
	vmulss	%xmm1, %xmm6, %xmm1
	vinsertps	$16, %xmm1, %xmm3, %xmm1 # xmm1 = xmm3[0],xmm1[0],xmm3[2,3]
	vmovaps	%xmm1, 400(%rsp)                # 16-byte Spill
	vmulss	%xmm5, %xmm6, %xmm1
	vmovaps	%xmm1, 416(%rsp)                # 16-byte Spill
	vmovaps	%xmm9, %xmm4
	movl	$1, %edx
	movb	$1, %al
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	jmp	.LBB0_34
	.p2align	4, 0x90
.LBB0_30:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	688(%rsp), %xmm4                # 16-byte Reload
.LBB0_34:                               #   in Loop: Header=BB0_20 Depth=4
	vxorps	%xmm12, %xmm12, %xmm12
	vucomiss	%xmm12, %xmm0
	seta	%al
	vmovaps	416(%rsp), %xmm3                # 16-byte Reload
	vmovaps	400(%rsp), %xmm0                # 16-byte Reload
	vmovaps	656(%rsp), %xmm1                # 16-byte Reload
	vmovaps	624(%rsp), %xmm9                # 16-byte Reload
	vmovaps	%xmm4, 688(%rsp)                # 16-byte Spill
	testb	%al, 36(%rsp)                   # 1-byte Folded Reload
	jne	.LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	%xmm8, %xmm3
	vmovaps	%xmm15, %xmm0
	vmovaps	%xmm13, %xmm1
	vmovaps	%xmm10, %xmm9
	vmovaps	%xmm11, %xmm4
.LBB0_36:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	%xmm1, 192(%rsp)                # 16-byte Spill
	vmovaps	%xmm0, %xmm13
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.0(%rip), %xmm5 # xmm5 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.2(%rip), %xmm6 # xmm6 = mem[0],zero,zero,zero
	vmulss	64(%rsp), %xmm5, %xmm7          # 4-byte Folded Reload
	vfmsub231ss	%xmm2, %xmm6, %xmm7     # xmm7 = (xmm6 * xmm2) - xmm7
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.1(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	vmulss	%xmm6, %xmm6, %xmm1
	vfnmsub231ss	%xmm5, %xmm5, %xmm1     # xmm1 = -(xmm5 * xmm5) - xmm1
	vfmadd231ss	%xmm0, %xmm0, %xmm1     # xmm1 = (xmm0 * xmm0) + xmm1
	vfmadd231ss	%xmm7, %xmm7, %xmm1     # xmm1 = (xmm7 * xmm7) + xmm1
	vucomiss	%xmm12, %xmm1
	vxorps	%xmm11, %xmm11, %xmm11
	vmovss	%xmm4, 304(%rsp)                # 4-byte Spill
	jbe	.LBB0_40
# %bb.37:                               #   in Loop: Header=BB0_20 Depth=4
	vsqrtss	%xmm1, %xmm1, %xmm0
	vaddss	%xmm7, %xmm0, %xmm7
	vbroadcastss	.LCPI0_7(%rip), %xmm0   # xmm0 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vxorps	%xmm0, %xmm7, %xmm0
	movl	$0, 32(%rsp)                    # 4-byte Folded Spill
	vucomiss	%xmm11, %xmm7
	vmovaps	%xmm0, 384(%rsp)                # 16-byte Spill
	jae	.LBB0_40
# %bb.38:                               #   in Loop: Header=BB0_20 Depth=4
	vucomiss	%xmm0, %xmm4
	jbe	.LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_20 Depth=4
	vmulss	%xmm7, %xmm14, %xmm0
	vmulss	20(%rsp), %xmm7, %xmm4          # 4-byte Folded Reload
	vmulss	%xmm2, %xmm7, %xmm7
	vmovaps	%xmm3, %xmm8
	vinsertps	$16, %xmm4, %xmm0, %xmm3 # xmm3 = xmm0[0],xmm4[0],xmm0[2,3]
	vmovaps	%xmm3, 608(%rsp)                # 16-byte Spill
	vmovaps	%xmm8, %xmm3
	vsubss	%xmm5, %xmm0, %xmm0
	vmovaps	%xmm7, 640(%rsp)                # 16-byte Spill
	vsubss	%xmm6, %xmm7, %xmm5
	vmulss	%xmm0, %xmm0, %xmm6
	vfmadd231ss	%xmm4, %xmm4, %xmm6     # xmm6 = (xmm4 * xmm4) + xmm6
	vfmadd231ss	%xmm5, %xmm5, %xmm6     # xmm6 = (xmm5 * xmm5) + xmm6
	vrsqrtss	%xmm6, %xmm6, %xmm7
	vmulss	%xmm7, %xmm6, %xmm6
	vfmadd213ss	.LCPI0_4(%rip), %xmm7, %xmm6 # xmm6 = (xmm7 * xmm6) + mem
	vmulss	.LCPI0_5(%rip), %xmm7, %xmm7
	vmulss	%xmm6, %xmm7, %xmm6
	vmulss	%xmm0, %xmm6, %xmm0
	vmulss	%xmm4, %xmm6, %xmm4
	vinsertps	$16, %xmm4, %xmm0, %xmm0 # xmm0 = xmm0[0],xmm4[0],xmm0[2,3]
	vmovaps	%xmm0, 480(%rsp)                # 16-byte Spill
	vmulss	%xmm5, %xmm6, %xmm0
	vmovaps	%xmm0, 464(%rsp)                # 16-byte Spill
	movl	$1, %edx
	movb	$1, %al
	movl	%eax, 32(%rsp)                  # 4-byte Spill
.LBB0_40:                               #   in Loop: Header=BB0_20 Depth=4
	vmovss	.LCPI0_3(%rip), %xmm10          # xmm10 = mem[0],zero,zero,zero
	vmovss	.LCPI0_10(%rip), %xmm15         # xmm15 = mem[0],zero,zero,zero
	vmovss	48(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmulss	%xmm0, %xmm2, %xmm7
	vucomiss	%xmm11, %xmm1
	seta	%al
	vmovaps	464(%rsp), %xmm0                # 16-byte Reload
	vmovaps	480(%rsp), %xmm12               # 16-byte Reload
	vmovaps	640(%rsp), %xmm14               # 16-byte Reload
	vmovaps	608(%rsp), %xmm8                # 16-byte Reload
	andb	32(%rsp), %al                   # 1-byte Folded Reload
	jne	.LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	%xmm3, %xmm0
	vmovaps	%xmm13, %xmm12
	vmovaps	192(%rsp), %xmm14               # 16-byte Reload
	vmovaps	%xmm9, %xmm8
.LBB0_42:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	%xmm0, 48(%rsp)                 # 16-byte Spill
	vbroadcastss	.LCPI0_7(%rip), %xmm0   # xmm0 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vmovaps	%xmm0, 192(%rsp)                # 16-byte Spill
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+16(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+20(%rip), %xmm4 # xmm4 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+24(%rip), %xmm3 # xmm3 = mem[0],zero,zero,zero
	vmulss	64(%rsp), %xmm0, %xmm1          # 4-byte Folded Reload
	vfmadd231ss	%xmm7, %xmm4, %xmm1     # xmm1 = (xmm4 * xmm7) + xmm1
	vfnmadd231ss	%xmm2, %xmm3, %xmm1     # xmm1 = -(xmm3 * xmm2) + xmm1
	vbroadcastss	.LCPI0_9(%rip), %xmm5   # xmm5 = [NaN,NaN,NaN,NaN]
	vmovaps	%xmm5, 720(%rsp)                # 16-byte Spill
	vandps	%xmm5, %xmm1, %xmm6
	vucomiss	%xmm15, %xmm6
	vmovaps	240(%rsp), %xmm13               # 16-byte Reload
	vmovaps	256(%rsp), %xmm9                # 16-byte Reload
	jae	.LBB0_43
.LBB0_48:                               #   in Loop: Header=BB0_20 Depth=4
	testl	%edx, %edx
	sete	%r8b
	jmp	.LBB0_49
	.p2align	4, 0x90
.LBB0_43:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	384(%rsp), %xmm5                # 16-byte Reload
	testb	%al, %al
	jne	.LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_20 Depth=4
	vmovss	304(%rsp), %xmm5                # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
.LBB0_45:                               #   in Loop: Header=BB0_20 Depth=4
	vmulss	_ZZL12ao_scanlinesiiiiPfE5plane+4(%rip), %xmm4, %xmm4
	vfmadd132ss	_ZZL12ao_scanlinesiiiiPfE5plane(%rip), %xmm4, %xmm0 # xmm0 = (xmm0 * mem) + xmm4
	vfmadd132ss	_ZZL12ao_scanlinesiiiiPfE5plane+8(%rip), %xmm0, %xmm3 # xmm3 = (xmm3 * mem) + xmm0
	vdivss	%xmm1, %xmm3, %xmm0
	xorl	%r14d, %r14d
	vucomiss	%xmm11, %xmm0
	jbe	.LBB0_48
# %bb.46:                               #   in Loop: Header=BB0_20 Depth=4
	vucomiss	%xmm5, %xmm0
	jae	.LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_20 Depth=4
	vxorps	192(%rsp), %xmm2, %xmm1         # 16-byte Folded Reload
	vmulss	64(%rsp), %xmm0, %xmm2          # 4-byte Folded Reload
	vmulss	%xmm7, %xmm0, %xmm3
	vinsertps	$16, %xmm3, %xmm2, %xmm2 # xmm2 = xmm2[0],xmm3[0],xmm2[2,3]
	vmovaps	%xmm2, 528(%rsp)                # 16-byte Spill
	vmulss	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, 560(%rsp)                # 16-byte Spill
	vmovsd	_ZZL12ao_scanlinesiiiiPfE5plane+16(%rip), %xmm0 # xmm0 = mem[0],zero
	vmovaps	%xmm0, 512(%rsp)                # 16-byte Spill
	movb	$1, %r14b
	vmovsd	_ZZL12ao_scanlinesiiiiPfE5plane+24(%rip), %xmm0 # xmm0 = mem[0],zero
	vmovaps	%xmm0, 496(%rsp)                # 16-byte Spill
.LBB0_49:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	%xmm6, 704(%rsp)                # 16-byte Spill
	vucomiss	%xmm15, %xmm6
	setae	%dl
	andb	%r14b, %dl
	movl	%edx, %eax
	orb	%r8b, %al
	vmovaps	528(%rsp), %xmm1                # 16-byte Reload
	vmovaps	560(%rsp), %xmm2                # 16-byte Reload
	vmovaps	512(%rsp), %xmm3                # 16-byte Reload
	vmovaps	496(%rsp), %xmm0                # 16-byte Reload
	movb	%dl, 14(%rsp)                   # 1-byte Spill
	testb	%dl, %dl
	jne	.LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	288(%rsp), %xmm1                # 16-byte Reload
	vmovaps	368(%rsp), %xmm2                # 16-byte Reload
	vmovaps	%xmm13, %xmm3
	vmovaps	%xmm9, %xmm0
.LBB0_51:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	%xmm1, 288(%rsp)                # 16-byte Spill
	vmovaps	%xmm3, %xmm13
	vmovaps	%xmm0, %xmm5
	testb	$1, %al
	jne	.LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	%xmm8, 288(%rsp)                # 16-byte Spill
	vmovaps	%xmm14, %xmm2
	vmovaps	%xmm12, %xmm13
	vmovaps	48(%rsp), %xmm5                 # 16-byte Reload
.LBB0_53:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	%xmm2, 368(%rsp)                # 16-byte Spill
	cmpb	$0, 14(%rsp)                    # 1-byte Folded Reload
	vmovaps	208(%rsp), %xmm2                # 16-byte Reload
	jne	.LBB0_56
# %bb.54:                               #   in Loop: Header=BB0_20 Depth=4
	testb	$1, %r8b
	je	.LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	%xmm0, %xmm3
	vmovss	272(%rsp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB0_100
	.p2align	4, 0x90
.LBB0_56:                               #   in Loop: Header=BB0_20 Depth=4
	vmovshdup	%xmm13, %xmm14          # xmm14 = xmm13[1,1,3,3]
	vmovss	.LCPI0_12(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vucomiss	%xmm0, %xmm13
	setb	%cl
	vucomiss	.LCPI0_13(%rip), %xmm13
	seta	%al
	vxorps	%xmm1, %xmm1, %xmm1
	andb	%cl, %al
	je	.LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_20 Depth=4
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm10, %xmm6
	vxorps	%xmm2, %xmm2, %xmm2
	testb	$1, %r12b
	jne	.LBB0_66
	jmp	.LBB0_65
	.p2align	4, 0x90
.LBB0_58:                               #   in Loop: Header=BB0_20 Depth=4
	vucomiss	%xmm0, %xmm14
	jae	.LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_20 Depth=4
	movb	$1, %r12b
	vucomiss	.LCPI0_13(%rip), %xmm14
	vxorps	%xmm0, %xmm0, %xmm0
	jbe	.LBB0_60
# %bb.64:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	%xmm10, %xmm6
	vxorps	%xmm2, %xmm2, %xmm2
	testb	$1, %r12b
	je	.LBB0_65
.LBB0_66:                               #   in Loop: Header=BB0_20 Depth=4
	vxorps	%xmm3, %xmm3, %xmm3
	vmovaps	%xmm10, %xmm4
	testb	%al, %al
	jne	.LBB0_68
.LBB0_67:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	%xmm6, %xmm3
	vmovaps	%xmm2, %xmm4
.LBB0_68:                               #   in Loop: Header=BB0_20 Depth=4
	vmulss	%xmm0, %xmm14, %xmm8
	vfmsub231ss	%xmm5, %xmm3, %xmm8     # xmm8 = (xmm3 * xmm5) - xmm8
	vmulss	%xmm5, %xmm4, %xmm2
	vfmsub231ss	%xmm0, %xmm13, %xmm2    # xmm2 = (xmm13 * xmm0) - xmm2
	vmulss	%xmm3, %xmm13, %xmm0
	vfmsub231ss	%xmm4, %xmm14, %xmm0    # xmm0 = (xmm14 * xmm4) - xmm0
	vmulss	%xmm8, %xmm8, %xmm3
	vfmadd231ss	%xmm0, %xmm0, %xmm3     # xmm3 = (xmm0 * xmm0) + xmm3
	vfmadd231ss	%xmm2, %xmm2, %xmm3     # xmm3 = (xmm2 * xmm2) + xmm3
	vrsqrtss	%xmm3, %xmm3, %xmm4
	vmulss	%xmm4, %xmm3, %xmm3
	vmovss	.LCPI0_4(%rip), %xmm6           # xmm6 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm6, %xmm4, %xmm3     # xmm3 = (xmm4 * xmm3) + xmm6
	vmovss	.LCPI0_5(%rip), %xmm9           # xmm9 = mem[0],zero,zero,zero
	vmulss	%xmm4, %xmm9, %xmm4
	movl	NAO_SAMPLES(%rip), %ecx
	testl	%ecx, %ecx
	vmovaps	%xmm5, 256(%rsp)                # 16-byte Spill
	jle	.LBB0_69
# %bb.70:                               #   in Loop: Header=BB0_20 Depth=4
	movl	%r14d, 92(%rsp)                 # 4-byte Spill
	movl	%r9d, 96(%rsp)                  # 4-byte Spill
	movl	%ebp, 100(%rsp)                 # 4-byte Spill
	movl	%r12d, 16(%rsp)                 # 4-byte Spill
	movb	%r8b, 15(%rsp)                  # 1-byte Spill
	vmovaps	288(%rsp), %xmm7                # 16-byte Reload
	vmovshdup	%xmm7, %xmm12           # xmm12 = xmm7[1,1,3,3]
	vmovss	.LCPI0_11(%rip), %xmm6          # xmm6 = mem[0],zero,zero,zero
	vmovaps	%xmm6, %xmm1
	vfmadd213ss	%xmm7, %xmm13, %xmm1    # xmm1 = (xmm13 * xmm1) + xmm7
	vmovss	%xmm1, 176(%rsp)                # 4-byte Spill
	vmovaps	%xmm14, %xmm7
	vfmadd213ss	%xmm12, %xmm6, %xmm7    # xmm7 = (xmm6 * xmm7) + xmm12
	vfmadd213ss	368(%rsp), %xmm5, %xmm6 # 16-byte Folded Reload
                                        # xmm6 = (xmm5 * xmm6) + mem
	vmovss	%xmm6, 172(%rsp)                # 4-byte Spill
	vmulss	%xmm3, %xmm4, %xmm3
	vmulss	%xmm3, %xmm8, %xmm1
	vmulss	%xmm2, %xmm3, %xmm2
	vmulss	%xmm0, %xmm3, %xmm0
	vmulss	%xmm5, %xmm2, %xmm3
	vfmsub231ss	%xmm14, %xmm0, %xmm3    # xmm3 = (xmm0 * xmm14) - xmm3
	vmovss	%xmm0, 160(%rsp)                # 4-byte Spill
	vmulss	%xmm0, %xmm13, %xmm4
	vfmsub231ss	%xmm5, %xmm1, %xmm4     # xmm4 = (xmm1 * xmm5) - xmm4
	vmovaps	%xmm14, 304(%rsp)               # 16-byte Spill
	vmovss	%xmm1, 168(%rsp)                # 4-byte Spill
	vmulss	%xmm1, %xmm14, %xmm1
	vmovaps	%xmm13, 240(%rsp)               # 16-byte Spill
	vmovss	%xmm2, 164(%rsp)                # 4-byte Spill
	vfmsub231ss	%xmm13, %xmm2, %xmm1    # xmm1 = (xmm2 * xmm13) - xmm1
	vmovss	%xmm3, 156(%rsp)                # 4-byte Spill
	vmulss	%xmm3, %xmm3, %xmm0
	vmovss	%xmm4, 152(%rsp)                # 4-byte Spill
	vfmadd231ss	%xmm4, %xmm4, %xmm0     # xmm0 = (xmm4 * xmm4) + xmm0
	vmovss	%xmm1, 148(%rsp)                # 4-byte Spill
	vfmadd231ss	%xmm1, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm1) + xmm0
	vrsqrtss	%xmm0, %xmm0, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	vfmadd213ss	.LCPI0_4(%rip), %xmm1, %xmm0 # xmm0 = (xmm1 * xmm0) + mem
	vmulss	%xmm1, %xmm9, %xmm1
	vmulss	%xmm0, %xmm1, %xmm0
	vmovss	%xmm0, 144(%rsp)                # 4-byte Spill
	vmovaps	%xmm7, 272(%rsp)                # 16-byte Spill
	vmulss	%xmm7, %xmm7, %xmm0
	vmovss	%xmm0, 140(%rsp)                # 4-byte Spill
	vxorps	%xmm1, %xmm1, %xmm1
	xorl	%ebp, %ebp
	vmovaps	208(%rsp), %xmm2                # 16-byte Reload
	jmp	.LBB0_71
	.p2align	4, 0x90
.LBB0_97:                               #   in Loop: Header=BB0_71 Depth=5
	incl	%ebp
	cmpl	%ecx, %ebp
	jge	.LBB0_98
.LBB0_71:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        #       Parent Loop BB0_17 Depth=3
                                        #         Parent Loop BB0_20 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_73 Depth 6
	testl	%ecx, %ecx
	jle	.LBB0_97
# %bb.72:                               #   in Loop: Header=BB0_71 Depth=5
	xorl	%r14d, %r14d
	jmp	.LBB0_73
	.p2align	4, 0x90
.LBB0_96:                               #   in Loop: Header=BB0_73 Depth=6
	vcmpltss	%xmm15, %xmm1, %xmm1
	vblendvps	%xmm1, %xmm2, %xmm0, %xmm1
	incl	%r14d
	movl	NAO_SAMPLES(%rip), %ecx
	cmpl	%ecx, %r14d
	jge	.LBB0_97
.LBB0_73:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        #       Parent Loop BB0_17 Depth=3
                                        #         Parent Loop BB0_20 Depth=4
                                        #           Parent Loop BB0_71 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	vmovaps	%xmm1, 64(%rsp)                 # 16-byte Spill
	movl	%esi, %r15d
	movq	%rdi, %r12
	vmovaps	%xmm2, 208(%rsp)                # 16-byte Spill
	callq	drand48
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 48(%rsp)                 # 4-byte Spill
	vsqrtss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 20(%rsp)                 # 4-byte Spill
	callq	drand48
	vmulsd	.LCPI0_14(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	leaq	188(%rsp), %rdi
	movq	%rbx, %rsi
	callq	sincosf@PLT
	vxorps	%xmm11, %xmm11, %xmm11
	vmovss	.LCPI0_3(%rip), %xmm10          # xmm10 = mem[0],zero,zero,zero
	vmovss	20(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmulss	184(%rsp), %xmm0, %xmm3
	vmulss	188(%rsp), %xmm0, %xmm0
	vmulss	144(%rsp), %xmm0, %xmm4         # 4-byte Folded Reload
	vsubss	48(%rsp), %xmm10, %xmm0         # 4-byte Folded Reload
	vsqrtss	%xmm0, %xmm0, %xmm0
	vmulss	240(%rsp), %xmm0, %xmm1         # 16-byte Folded Reload
	vfmadd231ss	168(%rsp), %xmm3, %xmm1 # 4-byte Folded Reload
                                        # xmm1 = (xmm3 * mem) + xmm1
	vfmadd231ss	156(%rsp), %xmm4, %xmm1 # 4-byte Folded Reload
                                        # xmm1 = (xmm4 * mem) + xmm1
	vmulss	304(%rsp), %xmm0, %xmm2         # 16-byte Folded Reload
	vfmadd231ss	164(%rsp), %xmm3, %xmm2 # 4-byte Folded Reload
                                        # xmm2 = (xmm3 * mem) + xmm2
	vfmadd231ss	152(%rsp), %xmm4, %xmm2 # 4-byte Folded Reload
                                        # xmm2 = (xmm4 * mem) + xmm2
	vmulss	256(%rsp), %xmm0, %xmm0         # 16-byte Folded Reload
	vfmadd231ss	160(%rsp), %xmm3, %xmm0 # 4-byte Folded Reload
                                        # xmm0 = (xmm3 * mem) + xmm0
	vfmadd231ss	148(%rsp), %xmm4, %xmm0 # 4-byte Folded Reload
                                        # xmm0 = (xmm4 * mem) + xmm0
	vmovss	176(%rsp), %xmm9                # 4-byte Reload
                                        # xmm9 = mem[0],zero,zero,zero
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.0(%rip), %xmm9, %xmm5
	vmovss	172(%rsp), %xmm12               # 4-byte Reload
                                        # xmm12 = mem[0],zero,zero,zero
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.0.2(%rip), %xmm12, %xmm3
	vmulss	272(%rsp), %xmm2, %xmm4         # 16-byte Folded Reload
	vmovaps	%xmm5, %xmm6
	vfmadd213ss	%xmm4, %xmm1, %xmm6     # xmm6 = (xmm1 * xmm6) + xmm4
	vfmadd231ss	%xmm3, %xmm0, %xmm6     # xmm6 = (xmm0 * xmm3) + xmm6
	vmovss	140(%rsp), %xmm13               # 4-byte Reload
                                        # xmm13 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm13, %xmm5, %xmm5    # xmm5 = (xmm5 * xmm5) + xmm13
	vfmadd231ss	%xmm3, %xmm3, %xmm5     # xmm5 = (xmm3 * xmm3) + xmm5
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.0.1(%rip), %xmm3 # xmm3 = mem[0],zero,zero,zero
	vfnmadd231ss	%xmm3, %xmm3, %xmm5     # xmm5 = -(xmm3 * xmm3) + xmm5
	vfmsub231ss	%xmm6, %xmm6, %xmm5     # xmm5 = (xmm6 * xmm6) - xmm5
	vucomiss	%xmm11, %xmm5
	vmovss	.LCPI0_8(%rip), %xmm8           # xmm8 = mem[0],zero,zero,zero
	movl	$0, %eax
	jbe	.LBB0_78
# %bb.74:                               #   in Loop: Header=BB0_73 Depth=6
	vsqrtss	%xmm5, %xmm5, %xmm3
	vaddss	%xmm6, %xmm3, %xmm3
	vucomiss	%xmm11, %xmm3
	setb	%cl
	vucomiss	.LCPI0_6(%rip), %xmm3
	seta	%al
	andb	%cl, %al
	jne	.LBB0_75
# %bb.76:                               #   in Loop: Header=BB0_73 Depth=6
	vmovss	.LCPI0_8(%rip), %xmm8           # xmm8 = mem[0],zero,zero,zero
	jmp	.LBB0_77
	.p2align	4, 0x90
.LBB0_75:                               #   in Loop: Header=BB0_73 Depth=6
	vxorps	192(%rsp), %xmm3, %xmm8         # 16-byte Folded Reload
.LBB0_77:                               #   in Loop: Header=BB0_73 Depth=6
	movzbl	%al, %eax
.LBB0_78:                               #   in Loop: Header=BB0_73 Depth=6
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.0(%rip), %xmm9, %xmm5
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.0.2(%rip), %xmm12, %xmm7
	vmovaps	%xmm1, %xmm6
	vfmadd213ss	%xmm4, %xmm5, %xmm6     # xmm6 = (xmm5 * xmm6) + xmm4
	vfmadd231ss	%xmm0, %xmm7, %xmm6     # xmm6 = (xmm7 * xmm0) + xmm6
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.1.1(%rip), %xmm3 # xmm3 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm13, %xmm5, %xmm5    # xmm5 = (xmm5 * xmm5) + xmm13
	vfnmsub231ss	%xmm7, %xmm7, %xmm5     # xmm5 = -(xmm7 * xmm7) - xmm5
	vfmadd231ss	%xmm3, %xmm3, %xmm5     # xmm5 = (xmm3 * xmm3) + xmm5
	vfmadd231ss	%xmm6, %xmm6, %xmm5     # xmm5 = (xmm6 * xmm6) + xmm5
	vucomiss	%xmm11, %xmm5
	jbe	.LBB0_79
# %bb.80:                               #   in Loop: Header=BB0_73 Depth=6
	vsqrtss	%xmm5, %xmm5, %xmm3
	vaddss	%xmm6, %xmm3, %xmm3
	vxorps	192(%rsp), %xmm3, %xmm5         # 16-byte Folded Reload
	vucomiss	%xmm11, %xmm3
	setb	%cl
	vucomiss	%xmm5, %xmm8
	seta	%dl
	testb	%dl, %cl
	movl	$1, %ecx
	cmovnel	%ecx, %eax
	vmovss	.LCPI0_10(%rip), %xmm15         # xmm15 = mem[0],zero,zero,zero
	movq	%r12, %rdi
	movl	%r15d, %esi
	vmovaps	64(%rsp), %xmm7                 # 16-byte Reload
	jne	.LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_73 Depth=6
	vmovaps	%xmm8, %xmm5
.LBB0_82:                               #   in Loop: Header=BB0_73 Depth=6
	vmovaps	%xmm5, %xmm8
	jmp	.LBB0_83
	.p2align	4, 0x90
.LBB0_79:                               #   in Loop: Header=BB0_73 Depth=6
	vmovss	.LCPI0_10(%rip), %xmm15         # xmm15 = mem[0],zero,zero,zero
	movq	%r12, %rdi
	movl	%r15d, %esi
	vmovaps	64(%rsp), %xmm7                 # 16-byte Reload
.LBB0_83:                               #   in Loop: Header=BB0_73 Depth=6
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.0(%rip), %xmm9, %xmm5
	vsubss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.0.2(%rip), %xmm12, %xmm3
	vfmadd231ss	%xmm1, %xmm5, %xmm4     # xmm4 = (xmm5 * xmm1) + xmm4
	vfmadd231ss	%xmm0, %xmm3, %xmm4     # xmm4 = (xmm3 * xmm0) + xmm4
	vmovss	_ZZL12ao_scanlinesiiiiPfE7spheres.2.1(%rip), %xmm6 # xmm6 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm13, %xmm5, %xmm5    # xmm5 = (xmm5 * xmm5) + xmm13
	vfnmsub231ss	%xmm3, %xmm3, %xmm5     # xmm5 = -(xmm3 * xmm3) - xmm5
	vfmadd231ss	%xmm6, %xmm6, %xmm5     # xmm5 = (xmm6 * xmm6) + xmm5
	vfmadd231ss	%xmm4, %xmm4, %xmm5     # xmm5 = (xmm4 * xmm4) + xmm5
	vucomiss	%xmm11, %xmm5
	jbe	.LBB0_87
# %bb.84:                               #   in Loop: Header=BB0_73 Depth=6
	vsqrtss	%xmm5, %xmm5, %xmm3
	vaddss	%xmm4, %xmm3, %xmm3
	vxorps	192(%rsp), %xmm3, %xmm4         # 16-byte Folded Reload
	vucomiss	%xmm11, %xmm3
	setb	%cl
	vucomiss	%xmm4, %xmm8
	seta	%dl
	testb	%dl, %cl
	movl	$1, %ecx
	cmovnel	%ecx, %eax
	jne	.LBB0_86
# %bb.85:                               #   in Loop: Header=BB0_73 Depth=6
	vmovaps	%xmm8, %xmm4
.LBB0_86:                               #   in Loop: Header=BB0_73 Depth=6
	vmovaps	%xmm4, %xmm8
.LBB0_87:                               #   in Loop: Header=BB0_73 Depth=6
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+16(%rip), %xmm4 # xmm4 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+20(%rip), %xmm6 # xmm6 = mem[0],zero,zero,zero
	vmovss	_ZZL12ao_scanlinesiiiiPfE5plane+24(%rip), %xmm5 # xmm5 = mem[0],zero,zero,zero
	vmulss	%xmm1, %xmm4, %xmm1
	vfmadd213ss	%xmm1, %xmm6, %xmm2     # xmm2 = (xmm6 * xmm2) + xmm1
	vfmadd213ss	%xmm2, %xmm5, %xmm0     # xmm0 = (xmm5 * xmm0) + xmm2
	vandps	720(%rsp), %xmm0, %xmm1         # 16-byte Folded Reload
	vucomiss	%xmm15, %xmm1
	jb	.LBB0_91
# %bb.88:                               #   in Loop: Header=BB0_73 Depth=6
	vmulss	%xmm4, %xmm9, %xmm2
	vfmadd231ss	272(%rsp), %xmm6, %xmm2 # 16-byte Folded Reload
                                        # xmm2 = (xmm6 * mem) + xmm2
	vfmadd231ss	%xmm12, %xmm5, %xmm2    # xmm2 = (xmm5 * xmm12) + xmm2
	vfnmadd231ss	_ZZL12ao_scanlinesiiiiPfE5plane+4(%rip), %xmm6, %xmm2 # xmm2 = -(xmm6 * mem) + xmm2
	vfnmadd231ss	_ZZL12ao_scanlinesiiiiPfE5plane(%rip), %xmm4, %xmm2 # xmm2 = -(xmm4 * mem) + xmm2
	vfmsub231ss	_ZZL12ao_scanlinesiiiiPfE5plane+8(%rip), %xmm5, %xmm2 # xmm2 = (xmm5 * mem) - xmm2
	vdivss	%xmm0, %xmm2, %xmm0
	xorl	%r13d, %r13d
	vucomiss	%xmm11, %xmm0
	jbe	.LBB0_91
# %bb.89:                               #   in Loop: Header=BB0_73 Depth=6
	vucomiss	%xmm8, %xmm0
	jae	.LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_73 Depth=6
	vaddss	%xmm7, %xmm10, %xmm0
	vmovss	%xmm0, 180(%rsp)                # 4-byte Spill
	movb	$1, %r13b
	vmovaps	208(%rsp), %xmm2                # 16-byte Reload
	vmovss	180(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	testb	$1, %r13b
	jne	.LBB0_96
	jmp	.LBB0_95
	.p2align	4, 0x90
.LBB0_91:                               #   in Loop: Header=BB0_73 Depth=6
	vaddss	%xmm7, %xmm10, %xmm0
	testl	%eax, %eax
	je	.LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_73 Depth=6
	vmovaps	%xmm0, %xmm7
.LBB0_93:                               #   in Loop: Header=BB0_73 Depth=6
	vmovaps	%xmm7, %xmm2
	vmovss	180(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	testb	$1, %r13b
	jne	.LBB0_96
.LBB0_95:                               #   in Loop: Header=BB0_73 Depth=6
	vmovaps	%xmm2, %xmm0
	jmp	.LBB0_96
	.p2align	4, 0x90
.LBB0_98:                               #   in Loop: Header=BB0_20 Depth=4
	movl	nsubsamples(%rip), %r10d
	movq	360(%rsp), %r15                 # 8-byte Reload
	movb	15(%rsp), %r8b                  # 1-byte Reload
	movl	16(%rsp), %r12d                 # 4-byte Reload
	movl	100(%rsp), %ebp                 # 4-byte Reload
	movl	96(%rsp), %r9d                  # 4-byte Reload
	movl	92(%rsp), %r14d                 # 4-byte Reload
	vmovaps	240(%rsp), %xmm13               # 16-byte Reload
	jmp	.LBB0_99
.LBB0_69:                               #   in Loop: Header=BB0_20 Depth=4
	movl	40(%rsp), %r10d                 # 4-byte Reload
	vmovaps	208(%rsp), %xmm2                # 16-byte Reload
.LBB0_99:                               #   in Loop: Header=BB0_20 Depth=4
	imull	%ecx, %ecx
	vcvtsi2ss	%ecx, %xmm11, %xmm0
	vsubss	%xmm1, %xmm0, %xmm1
	vdivss	%xmm0, %xmm1, %xmm1
	movl	%r10d, %r11d
	vmovaps	256(%rsp), %xmm3                # 16-byte Reload
.LBB0_100:                              #   in Loop: Header=BB0_20 Depth=4
	vmovaps	704(%rsp), %xmm0                # 16-byte Reload
	vucomiss	%xmm15, %xmm0
	setb	%dl
	movl	%r14d, %eax
	notb	%al
	orb	%dl, %al
	andb	%r8b, %al
	movl	%r8d, %edx
	notb	%dl
	movb	14(%rsp), %cl                   # 1-byte Reload
	orb	%dl, %cl
	vmovaps	%xmm1, %xmm0
	testb	$1, %cl
	movl	24(%rsp), %edx                  # 4-byte Reload
	cmovnel	%r10d, %edx
	cmovnel	%r10d, %r9d
	jne	.LBB0_102
# %bb.101:                              #   in Loop: Header=BB0_20 Depth=4
	vmovaps	672(%rsp), %xmm0                # 16-byte Reload
.LBB0_102:                              #   in Loop: Header=BB0_20 Depth=4
	vmovss	%xmm1, 272(%rsp)                # 4-byte Spill
	movl	%r10d, %ecx
	vxorps	%xmm4, %xmm4, %xmm4
	testb	$1, %al
	cmovnel	40(%rsp), %r11d                 # 4-byte Folded Reload
	movl	136(%rsp), %eax                 # 4-byte Reload
	cmovel	%edx, %eax
	movl	%eax, %edx
	cmovnel	132(%rsp), %r9d                 # 4-byte Folded Reload
	jne	.LBB0_104
# %bb.103:                              #   in Loop: Header=BB0_20 Depth=4
	vmovaps	%xmm0, %xmm4
	jmp	.LBB0_104
.LBB0_60:                               #   in Loop: Header=BB0_20 Depth=4
	vucomiss	.LCPI0_12(%rip), %xmm5
	setb	%cl
	vucomiss	.LCPI0_13(%rip), %xmm5
	seta	%dl
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 44(%rsp)                 # 4-byte Spill
	testb	%dl, %cl
	jne	.LBB0_61
# %bb.62:                               #   in Loop: Header=BB0_20 Depth=4
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm10, 44(%rsp)                # 4-byte Spill
	jmp	.LBB0_63
.LBB0_61:                               #   in Loop: Header=BB0_20 Depth=4
	vmovaps	%xmm10, %xmm0
.LBB0_63:                               #   in Loop: Header=BB0_20 Depth=4
	xorl	%r12d, %r12d
	vmovaps	%xmm10, %xmm6
	vxorps	%xmm2, %xmm2, %xmm2
	testb	$1, %r12b
	jne	.LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_20 Depth=4
	vxorps	%xmm6, %xmm6, %xmm6
	vmovss	44(%rsp), %xmm2                 # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	vxorps	%xmm3, %xmm3, %xmm3
	vmovaps	%xmm10, %xmm4
	testb	%al, %al
	je	.LBB0_67
	jmp	.LBB0_68
.LBB0_108:
	addq	$744, %rsp                      # imm = 0x2E8
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

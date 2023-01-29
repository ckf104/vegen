	.text
	.file	"binomial_serial.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _Z19binomial_put_serialPfS_S_S_S_S_i
.LCPI0_0:
	.long	0x3c800000                      # float 0.015625
.LCPI0_1:
	.long	0x3f800000                      # float 1
.LCPI0_2:
	.long	0x00000000                      # float 0
	.text
	.globl	_Z19binomial_put_serialPfS_S_S_S_S_i
	.p2align	4, 0x90
	.type	_Z19binomial_put_serialPfS_S_S_S_S_i,@function
_Z19binomial_put_serialPfS_S_S_S_S_i:   # @_Z19binomial_put_serialPfS_S_S_S_S_i
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
	subq	$344, %rsp                      # imm = 0x158
	.cfi_def_cfa_offset 400
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 72(%rsp)                   # 8-byte Spill
	movq	%r8, 64(%rsp)                   # 8-byte Spill
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movl	400(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB0_11
# %bb.1:
	movq	%rsi, %r12
	movq	%rdi, %r13
	movl	%eax, %r14d
	xorl	%r15d, %r15d
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=1
	vmovss	80(%rsp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movq	72(%rsp), %rax                  # 8-byte Reload
	vmovss	%xmm0, (%rax,%r15,4)
	incq	%r15
	cmpq	%r14, %r15
	je	.LBB0_11
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_8 Depth 3
	vmovss	(%r13,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 20(%rsp)                 # 4-byte Spill
	vmovss	(%r12,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 16(%rsp)                 # 4-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	vmovss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmulss	(%rax,%r15,4), %xmm0, %xmm0
	vmovss	%xmm0, 32(%rsp)                 # 4-byte Spill
	vsqrtss	%xmm0, %xmm0, %xmm0
	movq	64(%rsp), %rax                  # 8-byte Reload
	vmulss	(%rax,%r15,4), %xmm0, %xmm0
	vzeroupper
	callq	expf@PLT
	vmovaps	%xmm0, %xmm1
	vmovss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm1, 12(%rsp)                 # 4-byte Spill
	vdivss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, 24(%rsp)                 # 4-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	vmovss	32(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmulss	(%rax,%r15,4), %xmm0, %xmm0
	callq	expf@PLT
	vmovss	%xmm0, 28(%rsp)                 # 4-byte Spill
	vsubss	24(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmovaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-64(%rbx), %edi
	vmovss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__powisf2@PLT
	vmovss	16(%rsp), %xmm1                 # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vfnmadd132ss	20(%rsp), %xmm1, %xmm0  # 4-byte Folded Reload
                                        # xmm0 = -(xmm0 * mem) + xmm1
	vxorps	%xmm1, %xmm1, %xmm1
	vmaxss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, 80(%rsp,%rbx,2)
	leal	-62(%rbx), %edi
	vmovss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__powisf2@PLT
	vmovss	16(%rsp), %xmm1                 # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vfnmadd132ss	20(%rsp), %xmm1, %xmm0  # 4-byte Folded Reload
                                        # xmm0 = -(xmm0 * mem) + xmm1
	vmaxss	.LCPI0_2, %xmm0, %xmm0
	vmovss	%xmm0, 84(%rsp,%rbx,2)
	leal	-60(%rbx), %edi
	vmovss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__powisf2@PLT
	vmovss	16(%rsp), %xmm1                 # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vfnmadd132ss	20(%rsp), %xmm1, %xmm0  # 4-byte Folded Reload
                                        # xmm0 = -(xmm0 * mem) + xmm1
	vmaxss	.LCPI0_2, %xmm0, %xmm0
	vmovss	%xmm0, 88(%rsp,%rbx,2)
	leal	-58(%rbx), %edi
	vmovss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__powisf2@PLT
	vmovss	16(%rsp), %xmm1                 # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vfnmadd132ss	20(%rsp), %xmm1, %xmm0  # 4-byte Folded Reload
                                        # xmm0 = -(xmm0 * mem) + xmm1
	vmaxss	.LCPI0_2, %xmm0, %xmm0
	vmovss	%xmm0, 92(%rsp,%rbx,2)
	addq	$8, %rbx
	cmpq	$128, %rbx
	jne	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	vmovss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vsubss	24(%rsp), %xmm0, %xmm1          # 4-byte Folded Reload
	vmovaps	32(%rsp), %xmm0                 # 16-byte Reload
	vbroadcastss	%xmm0, %ymm9
	vmovss	.LCPI0_1(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	vdivss	%xmm1, %xmm3, %xmm1
	vbroadcastss	%xmm1, %ymm2
	vdivss	28(%rsp), %xmm3, %xmm3          # 4-byte Folded Reload
	vbroadcastss	%xmm3, %ymm4
	movl	$63, %eax
	movl	$55, %ecx
	xorl	%edx, %edx
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=2
	incq	%rdx
	decq	%rcx
	subq	$1, %rax
	jb	.LBB0_10
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_8 Depth 3
	testq	%rax, %rax
	je	.LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	movl	$63, %ebp
	subq	%rdx, %rbp
	vmovss	80(%rsp), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	cmpq	$8, %rbp
	jae	.LBB0_12
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=2
	xorl	%esi, %esi
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=2
	movl	$55, %esi
	subq	%rdx, %rsi
	shrq	$3, %rsi
	leaq	1(%rsi), %rdi
	vbroadcastss	%xmm5, %ymm5
	testq	%rsi, %rsi
	je	.LBB0_13
# %bb.14:                               #   in Loop: Header=BB0_5 Depth=2
	movq	%rcx, %rsi
	shrq	$3, %rsi
	incq	%rsi
	andq	$-2, %rsi
	negq	%rsi
	xorl	%ebx, %ebx
	vmovaps	%ymm5, %ymm6
	.p2align	4, 0x90
.LBB0_15:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovups	84(%rsp,%rbx,4), %ymm7
	vmovups	116(%rsp,%rbx,4), %ymm5
	vperm2f128	$33, %ymm7, %ymm6, %ymm6 # ymm6 = ymm6[2,3],ymm7[0,1]
	vshufps	$3, %ymm7, %ymm6, %ymm6         # ymm6 = ymm6[3,0],ymm7[0,0],ymm6[7,4],ymm7[4,4]
	vshufps	$152, %ymm7, %ymm6, %ymm6       # ymm6 = ymm6[0,2],ymm7[1,2],ymm6[4,6],ymm7[5,6]
	vsubps	%ymm6, %ymm7, %ymm8
	vmulps	%ymm9, %ymm8, %ymm8
	vfmadd213ps	%ymm6, %ymm2, %ymm8     # ymm8 = (ymm2 * ymm8) + ymm6
	vmulps	%ymm4, %ymm8, %ymm6
	vmovups	%ymm6, 80(%rsp,%rbx,4)
	vperm2f128	$33, %ymm5, %ymm7, %ymm6 # ymm6 = ymm7[2,3],ymm5[0,1]
	vshufps	$3, %ymm5, %ymm6, %ymm6         # ymm6 = ymm6[3,0],ymm5[0,0],ymm6[7,4],ymm5[4,4]
	vshufps	$152, %ymm5, %ymm6, %ymm6       # ymm6 = ymm6[0,2],ymm5[1,2],ymm6[4,6],ymm5[5,6]
	vsubps	%ymm6, %ymm5, %ymm7
	vmulps	%ymm7, %ymm9, %ymm7
	vfmadd213ps	%ymm6, %ymm2, %ymm7     # ymm7 = (ymm2 * ymm7) + ymm6
	vmulps	%ymm4, %ymm7, %ymm6
	vmovups	%ymm6, 112(%rsp,%rbx,4)
	addq	$16, %rbx
	vmovaps	%ymm5, %ymm6
	addq	$2, %rsi
	jne	.LBB0_15
# %bb.16:                               #   in Loop: Header=BB0_5 Depth=2
	movq	%rbp, %rsi
	andq	$-8, %rsi
	testb	$1, %dil
	je	.LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_5 Depth=2
	leaq	(,%rbx,4), %rdi
	orq	$4, %rdi
	vmovups	80(%rsp,%rdi), %ymm6
	vperm2f128	$33, %ymm6, %ymm5, %ymm5 # ymm5 = ymm5[2,3],ymm6[0,1]
	vshufps	$3, %ymm6, %ymm5, %ymm5         # ymm5 = ymm5[3,0],ymm6[0,0],ymm5[7,4],ymm6[4,4]
	vshufps	$152, %ymm6, %ymm5, %ymm5       # ymm5 = ymm5[0,2],ymm6[1,2],ymm5[4,6],ymm6[5,6]
	vsubps	%ymm5, %ymm6, %ymm7
	vmulps	%ymm7, %ymm9, %ymm7
	vfmadd213ps	%ymm5, %ymm2, %ymm7     # ymm7 = (ymm2 * ymm7) + ymm5
	vmulps	%ymm4, %ymm7, %ymm5
	vmovups	%ymm5, 80(%rsp,%rbx,4)
	vmovaps	%ymm6, %ymm5
.LBB0_18:                               #   in Loop: Header=BB0_5 Depth=2
	cmpq	%rsi, %rbp
	je	.LBB0_9
# %bb.19:                               #   in Loop: Header=BB0_5 Depth=2
	vextractf128	$1, %ymm5, %xmm5
	vpermilps	$255, %xmm5, %xmm5      # xmm5 = xmm5[3,3,3,3]
	.p2align	4, 0x90
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovss	84(%rsp,%rsi,4), %xmm6          # xmm6 = mem[0],zero,zero,zero
	vsubss	%xmm5, %xmm6, %xmm7
	vmulss	%xmm0, %xmm7, %xmm7
	vfmadd213ss	%xmm5, %xmm1, %xmm7     # xmm7 = (xmm1 * xmm7) + xmm5
	vmulss	%xmm3, %xmm7, %xmm5
	vmovss	%xmm5, 80(%rsp,%rsi,4)
	leaq	1(%rsi), %rdi
	vmovaps	%xmm6, %xmm5
	movq	%rdi, %rsi
	cmpq	%rdi, %rax
	jne	.LBB0_8
	jmp	.LBB0_9
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=2
	xorl	%ebx, %ebx
	movq	%rbp, %rsi
	andq	$-8, %rsi
	testb	$1, %dil
	jne	.LBB0_17
	jmp	.LBB0_18
.LBB0_11:
	addq	$344, %rsp                      # imm = 0x158
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
	vzeroupper
	retq
.Lfunc_end0:
	.size	_Z19binomial_put_serialPfS_S_S_S_S_i, .Lfunc_end0-_Z19binomial_put_serialPfS_S_S_S_S_i
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 12.0.0"
	.section	".note.GNU-stack","",@progbits
	.addrsig

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
	subq	$312, %rsp                      # imm = 0x138
	.cfi_def_cfa_offset 368
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 40(%rsp)                   # 8-byte Spill
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movl	368(%rsp), %eax
	movl	$64, BINOMIAL_NUM(%rip)
	testl	%eax, %eax
	jle	.LBB0_12
# %bb.1:
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	%eax, %r14d
	xorl	%r15d, %r15d
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
	vmovss	48(%rsp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movq	40(%rsp), %rax                  # 8-byte Reload
	vmovss	%xmm0, (%rax,%r15,4)
	incq	%r15
	cmpq	%r14, %r15
	je	.LBB0_12
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_14 Depth 3
	vmovss	(%rbp,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 8(%rsp)                  # 4-byte Spill
	vmovss	(%rbx,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 4(%rsp)                  # 4-byte Spill
	vmovss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmulss	(%r13,%r15,4), %xmm0, %xmm0
	vmovss	%xmm0, 12(%rsp)                 # 4-byte Spill
	vsqrtss	%xmm0, %xmm0, %xmm0
	movq	32(%rsp), %rax                  # 8-byte Reload
	vmulss	(%rax,%r15,4), %xmm0, %xmm0
	callq	expf@PLT
	vmovaps	%xmm0, %xmm1
	vmovss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm1, (%rsp)                   # 4-byte Spill
	vdivss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, 16(%rsp)                 # 4-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	vmovss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmulss	(%rax,%r15,4), %xmm0, %xmm0
	callq	expf@PLT
	vmovss	%xmm0, 20(%rsp)                 # 4-byte Spill
	vsubss	16(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmovss	%xmm0, 12(%rsp)                 # 4-byte Spill
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-64(%r12), %edi
	vmovss	(%rsp), %xmm0                   # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__powisf2@PLT
	vmovss	4(%rsp), %xmm1                  # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vfnmadd132ss	8(%rsp), %xmm1, %xmm0   # 4-byte Folded Reload
                                        # xmm0 = -(xmm0 * mem) + xmm1
	vxorps	%xmm1, %xmm1, %xmm1
	vmaxss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, 48(%rsp,%r12,2)
	leal	-62(%r12), %edi
	vmovss	(%rsp), %xmm0                   # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__powisf2@PLT
	vmovss	4(%rsp), %xmm1                  # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vfnmadd132ss	8(%rsp), %xmm1, %xmm0   # 4-byte Folded Reload
                                        # xmm0 = -(xmm0 * mem) + xmm1
	vmaxss	.LCPI0_2, %xmm0, %xmm0
	vmovss	%xmm0, 52(%rsp,%r12,2)
	leal	-60(%r12), %edi
	vmovss	(%rsp), %xmm0                   # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__powisf2@PLT
	vmovss	4(%rsp), %xmm1                  # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vfnmadd132ss	8(%rsp), %xmm1, %xmm0   # 4-byte Folded Reload
                                        # xmm0 = -(xmm0 * mem) + xmm1
	vmaxss	.LCPI0_2, %xmm0, %xmm0
	vmovss	%xmm0, 56(%rsp,%r12,2)
	leal	-58(%r12), %edi
	vmovss	(%rsp), %xmm0                   # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__powisf2@PLT
	vmovss	4(%rsp), %xmm1                  # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vfnmadd132ss	8(%rsp), %xmm1, %xmm0   # 4-byte Folded Reload
                                        # xmm0 = -(xmm0 * mem) + xmm1
	vmaxss	.LCPI0_2, %xmm0, %xmm0
	vmovss	%xmm0, 60(%rsp,%r12,2)
	addq	$8, %r12
	cmpq	$128, %r12
	jne	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	vmovss	(%rsp), %xmm0                   # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vsubss	16(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmovss	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vdivss	%xmm0, %xmm1, %xmm0
	vdivss	20(%rsp), %xmm1, %xmm1          # 4-byte Folded Reload
	movl	$63, %eax
	xorl	%ecx, %ecx
	vmovss	12(%rsp), %xmm6                 # 4-byte Reload
                                        # xmm6 = mem[0],zero,zero,zero
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=2
	incq	%rcx
	subq	$1, %rax
	jb	.LBB0_11
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_14 Depth 3
	testq	%rax, %rax
	je	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	movl	$63, %edx
	subq	%rcx, %rdx
	vmovss	48(%rsp), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	cmpq	$62, %rcx
	jne	.LBB0_13
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=2
	xorl	%esi, %esi
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=2
	movq	%rax, %rdi
	andq	$-2, %rdi
	vmovaps	%xmm2, %xmm3
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_14:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovss	52(%rsp,%rsi,4), %xmm4          # xmm4 = mem[0],zero,zero,zero
	vmovss	56(%rsp,%rsi,4), %xmm2          # xmm2 = mem[0],zero,zero,zero
	vsubss	%xmm3, %xmm4, %xmm5
	vmulss	%xmm6, %xmm5, %xmm5
	vfmadd213ss	%xmm3, %xmm0, %xmm5     # xmm5 = (xmm0 * xmm5) + xmm3
	vmulss	%xmm1, %xmm5, %xmm3
	vmovss	%xmm3, 48(%rsp,%rsi,4)
	vsubss	%xmm4, %xmm2, %xmm3
	vmulss	%xmm6, %xmm3, %xmm3
	vfmadd213ss	%xmm4, %xmm0, %xmm3     # xmm3 = (xmm0 * xmm3) + xmm4
	vmulss	%xmm1, %xmm3, %xmm3
	vmovss	%xmm3, 52(%rsp,%rsi,4)
	addq	$2, %rsi
	vmovaps	%xmm2, %xmm3
	cmpq	%rsi, %rdi
	jne	.LBB0_14
.LBB0_5:                                #   in Loop: Header=BB0_8 Depth=2
	testb	$1, %dl
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_8 Depth=2
	vmovss	52(%rsp,%rsi,4), %xmm3          # xmm3 = mem[0],zero,zero,zero
	vsubss	%xmm2, %xmm3, %xmm3
	vmulss	%xmm6, %xmm3, %xmm3
	vfmadd213ss	%xmm2, %xmm0, %xmm3     # xmm3 = (xmm0 * xmm3) + xmm2
	vmulss	%xmm1, %xmm3, %xmm2
	vmovss	%xmm2, 48(%rsp,%rsi,4)
	jmp	.LBB0_7
.LBB0_12:
	addq	$312, %rsp                      # imm = 0x138
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
	.size	_Z19binomial_put_serialPfS_S_S_S_S_i, .Lfunc_end0-_Z19binomial_put_serialPfS_S_S_S_S_i
	.cfi_endproc
                                        # -- End function
	.type	BINOMIAL_NUM,@object            # @BINOMIAL_NUM
	.bss
	.globl	BINOMIAL_NUM
	.p2align	2
BINOMIAL_NUM:
	.long	0                               # 0x0
	.size	BINOMIAL_NUM, 4

	.ident	"clang version 12.0.0"
	.section	".note.GNU-stack","",@progbits
	.addrsig

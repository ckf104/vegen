	.text
	.file	"stencil_serial.cpp"
	.globl	_Z19loop_stencil_serialiiiiiiiiiiiPKfS0_PfS1_ # -- Begin function _Z19loop_stencil_serialiiiiiiiiiiiPKfS0_PfS1_
	.p2align	4, 0x90
	.type	_Z19loop_stencil_serialiiiiiiiiiiiPKfS0_PfS1_,@function
_Z19loop_stencil_serialiiiiiiiiiiiPKfS0_PfS1_: # @_Z19loop_stencil_serialiiiiiiiiiiiPKfS0_PfS1_
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpl	%esi, %edi
	jge	.LBB0_6
# %bb.1:
	movl	%r9d, %r14d
	movl	%r8d, %r15d
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movl	%esi, %ebx
	movl	%edi, %ebp
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	pushq	120(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	136(%rsp)
	.cfi_adjust_cfa_offset 8
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	pushq	128(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	128(%rsp)
	.cfi_adjust_cfa_offset 8
	movl	120(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movl	120(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	_ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	incl	%ebp
	cmpl	%ebp, %ebx
	je	.LBB0_6
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	%r13d, %edi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	movl	64(%rsp), %r8d
	movl	72(%rsp), %r9d
	testb	$1, %bpl
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	pushq	128(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	128(%rsp)
	.cfi_adjust_cfa_offset 8
	jmp	.LBB0_5
.LBB0_6:
	.cfi_def_cfa_offset 64
	addq	$8, %rsp
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
	.size	_Z19loop_stencil_serialiiiiiiiiiiiPKfS0_PfS1_, .Lfunc_end0-_Z19loop_stencil_serialiiiiiiiiiiiPKfS0_PfS1_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf
.LCPI1_0:
	.long	0x40000000                      # float 2
	.text
	.p2align	4, 0x90
	.type	_ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf,@function
_ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf:  # @_ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf
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
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $r8d killed $r8d def $r8
	movl	%ecx, -120(%rsp)                # 4-byte Spill
	movl	%edx, -124(%rsp)                # 4-byte Spill
	movl	%esi, -116(%rsp)                # 4-byte Spill
	movl	%edi, -128(%rsp)                # 4-byte Spill
	cmpl	%r9d, %r8d
	jge	.LBB1_8
# %bb.1:
	movl	%r9d, %r15d
	movl	248(%rsp), %edi
	movl	240(%rsp), %r10d
	movl	%edi, %r12d
	imull	%r10d, %r12d
	movslq	-128(%rsp), %rdx                # 4-byte Folded Reload
	movslq	%r10d, %rsi
	movslq	%r12d, %r9
	movl	-124(%rsp), %eax                # 4-byte Reload
	movslq	%eax, %rcx
	movslq	%r8d, %rbx
	leal	-1(%r8), %r14d
	imull	%edi, %r14d
	addl	%eax, %r14d
	imull	%esi, %r14d
	movl	%esi, %eax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	imull	%r8d, %edi
	leal	(%rcx,%rdi), %eax
	decl	%eax
	imull	%esi, %eax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	leaq	(,%rsi,4), %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	leaq	1(%rcx), %rdi
	imulq	%rsi, %rdi
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	imulq	%rcx, %rsi
	movq	%rbx, %rbp
	movq	%r9, %rax
	imulq	%r9, %rbp
	movq	%rbx, -64(%rsp)                 # 8-byte Spill
	leaq	1(%rbx), %r9
	imulq	%rax, %r9
	movq	%rax, %r8
	addq	%rsi, %r9
	leaq	(%rsi,%rbp), %r11
	addq	%rbp, %rdi
	movslq	-116(%rsp), %rax                # 4-byte Folded Reload
	addq	%rdx, %r11
	addq	%rdx, %r9
	addq	%rdx, %rdi
	subq	%rdx, %rax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	leal	(%r10,%r10), %edx
	movslq	%edx, %r13
	negl	%edx
	movq	%r12, %rcx
	leal	(%r12,%r12), %eax
	movslq	%eax, %r12
	negl	%eax
	leal	(%r10,%r10,2), %ebp
	movslq	%edx, %r10
	movslq	%eax, %rbx
	movslq	%ebp, %rsi
	negl	%ebp
	movslq	%ebp, %rbp
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	leal	(%rcx,%rcx,2), %edx
	movslq	%edx, %rax
	negl	%edx
	movslq	%edx, %rdx
	movslq	%r15d, %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movl	-128(%rsp), %ecx                # 4-byte Reload
	addl	%ecx, %r14d
	movq	%r14, -88(%rsp)                 # 8-byte Spill
	movq	-96(%rsp), %r15                 # 8-byte Reload
	addl	%ecx, %r15d
	addq	%r11, %rdx
	movq	272(%rsp), %rcx
	leaq	(%rcx,%rdx,4), %rdx
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	leaq	(,%r8,4), %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	addq	%r11, %rax
	leaq	(%rcx,%rax,4), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	addq	%r11, %rbp
	leaq	(%rcx,%rbp,4), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	addq	%r11, %rsi
	leaq	(%rcx,%rsi,4), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	addq	%r11, %rbx
	leaq	(%rcx,%rbx,4), %r8
	addq	%r11, %r12
	leaq	(%rcx,%r12,4), %r14
	addq	%r11, %r10
	leaq	(%rcx,%r10,4), %r10
	addq	%r11, %r13
	leaq	(%rcx,%r13,4), %rbx
	leaq	(%rcx,%r9,4), %rbp
	movq	%r15, %rsi
	leaq	(%rcx,%rdi,4), %r15
	movq	280(%rsp), %rax
	leaq	(%rax,%r11,4), %rdi
	movq	264(%rsp), %rax
	leaq	(%rax,%r11,4), %rdx
	movq	-104(%rsp), %r9                 # 8-byte Reload
	movq	-112(%rsp), %r13                # 8-byte Reload
	leaq	(%rcx,%r11,4), %r11
	movq	%rdi, %rax
	movq	%r15, %rcx
	vmovss	.LCPI1_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movslq	-120(%rsp), %rdi                # 4-byte Folded Reload
	movq	%rdi, 144(%rsp)                 # 8-byte Spill
	movq	-88(%rsp), %rdi                 # 8-byte Reload
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_2 Depth=1
	movq	-64(%rsp), %r11                 # 8-byte Reload
	incq	%r11
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	-88(%rsp), %rdi                 # 8-byte Reload
	addq	%rax, %rdi
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	addq	%rax, %rsi
	movq	-104(%rsp), %r15                # 8-byte Reload
	movq	40(%rsp), %r9                   # 8-byte Reload
	addq	%r9, %r15
	movq	-112(%rsp), %r13                # 8-byte Reload
	addq	%r9, %r13
	addq	%r9, -72(%rsp)                  # 8-byte Folded Spill
	addq	%r9, -80(%rsp)                  # 8-byte Folded Spill
	movq	136(%rsp), %r8                  # 8-byte Reload
	addq	%r9, %r8
	movq	128(%rsp), %r14                 # 8-byte Reload
	addq	%r9, %r14
	movq	120(%rsp), %r10                 # 8-byte Reload
	addq	%r9, %r10
	movq	112(%rsp), %rbx                 # 8-byte Reload
	addq	%r9, %rbx
	movq	104(%rsp), %rbp                 # 8-byte Reload
	addq	%r9, %rbp
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addq	%r9, %rcx
	movq	72(%rsp), %r12                  # 8-byte Reload
	addq	%r9, %r12
	movq	88(%rsp), %rax                  # 8-byte Reload
	addq	%r9, %rax
	movq	80(%rsp), %rdx                  # 8-byte Reload
	addq	%r9, %rdx
	movq	%r15, %r9
	movq	%r11, -64(%rsp)                 # 8-byte Spill
	cmpq	48(%rsp), %r11                  # 8-byte Folded Reload
	movq	%r12, %r11
	je	.LBB1_8
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #       Child Loop BB1_5 Depth 3
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movq	%rdx, %r12
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	%rax, %rdx
	movq	%r11, 72(%rsp)                  # 8-byte Spill
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	%rcx, %r15
	movq	%rbp, 104(%rsp)                 # 8-byte Spill
	movq	%rbp, %rcx
	movq	%rbx, 112(%rsp)                 # 8-byte Spill
	movq	%rbx, -56(%rsp)                 # 8-byte Spill
	movq	%r10, 120(%rsp)                 # 8-byte Spill
	movq	%r14, 128(%rsp)                 # 8-byte Spill
	movq	%r14, -48(%rsp)                 # 8-byte Spill
	movq	%r8, 136(%rsp)                  # 8-byte Spill
	movq	%r8, -8(%rsp)                   # 8-byte Spill
	movq	%rsi, %rbx
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	-72(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	%r13, -112(%rsp)                # 8-byte Spill
	movq	%r13, -24(%rsp)                 # 8-byte Spill
	movq	%r9, -104(%rsp)                 # 8-byte Spill
	movq	%r9, %r14
	movq	%rbx, -96(%rsp)                 # 8-byte Spill
	movq	%rbx, -32(%rsp)                 # 8-byte Spill
	movq	%rdi, -88(%rsp)                 # 8-byte Spill
	movq	%rdi, %r9
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	-124(%rsp), %ebp                # 4-byte Reload
	cmpl	-120(%rsp), %ebp                # 4-byte Folded Reload
	jl	.LBB1_3
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=2
	movq	176(%rsp), %rdi                 # 8-byte Reload
	incq	%rdi
	movq	168(%rsp), %rbp                 # 8-byte Reload
	addq	%rbp, %r9
	movq	%r9, -40(%rsp)                  # 8-byte Spill
	addq	%rbp, %r15
	movq	%r15, -32(%rsp)                 # 8-byte Spill
	movq	160(%rsp), %rbp                 # 8-byte Reload
	movq	%rsi, %r14
	addq	%rbp, %r14
	addq	%rbp, %r13
	movq	%r13, -24(%rsp)                 # 8-byte Spill
	addq	%rbp, %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %r8                    # 8-byte Reload
	addq	%rbp, %r8
	addq	%rbp, %rbx
	movq	%rbx, -8(%rsp)                  # 8-byte Spill
	addq	%rbp, %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	16(%rsp), %rbx                  # 8-byte Reload
	addq	%rbp, %rbx
	addq	%rbp, %r12
	movq	%r12, -56(%rsp)                 # 8-byte Spill
	movq	24(%rsp), %rcx                  # 8-byte Reload
	addq	%rbp, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	%rbp, %rax
	addq	%rbp, %r11
	addq	%rbp, %rdx
	movq	(%rsp), %r12                    # 8-byte Reload
	addq	%rbp, %r12
	cmpq	144(%rsp), %rdi                 # 8-byte Folded Reload
	movq	%rax, %r15
	movq	%rbx, %r10
	movq	%r8, %rsi
	je	.LBB1_7
.LBB1_3:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_5 Depth 3
	movq	%r12, (%rsp)                    # 8-byte Spill
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movq	%r10, 16(%rsp)                  # 8-byte Spill
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%r15, 32(%rsp)                  # 8-byte Spill
	movq	%rdi, 176(%rsp)                 # 8-byte Spill
	movl	-128(%rsp), %ebp                # 4-byte Reload
	cmpl	-116(%rsp), %ebp                # 4-byte Folded Reload
	movq	152(%rsp), %r8                  # 8-byte Reload
	movq	272(%rsp), %rdi
	movq	256(%rsp), %r10
	movq	-56(%rsp), %r12                 # 8-byte Reload
	movq	-48(%rsp), %rax                 # 8-byte Reload
	movq	-8(%rsp), %rbx                  # 8-byte Reload
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	movq	-24(%rsp), %r13                 # 8-byte Reload
	movq	%r14, %rsi
	movq	-32(%rsp), %r15                 # 8-byte Reload
	movq	-40(%rsp), %r9                  # 8-byte Reload
	jge	.LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=2
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB1_5:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovss	-4(%r11,%r14,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	vaddss	4(%r11,%r14,4), %xmm1, %xmm1
	movq	32(%rsp), %rbp                  # 8-byte Reload
	vaddss	(%rbp,%r14,4), %xmm1, %xmm1
	leal	(%r15,%r14), %ebp
	movslq	%ebp, %rbp
	vaddss	(%rdi,%rbp,4), %xmm1, %xmm1
	movq	24(%rsp), %rbp                  # 8-byte Reload
	vaddss	(%rbp,%r14,4), %xmm1, %xmm1
	leal	(%r9,%r14), %ebp
	movslq	%ebp, %rbp
	vaddss	(%rdi,%rbp,4), %xmm1, %xmm1
	vmovss	(%r11,%r14,4), %xmm2            # xmm2 = mem[0],zero,zero,zero
	vmulss	(%r10), %xmm2, %xmm3
	vfmadd132ss	4(%r10), %xmm3, %xmm1   # xmm1 = (xmm1 * mem) + xmm3
	vmovss	-12(%r11,%r14,4), %xmm3         # xmm3 = mem[0],zero,zero,zero
	vmovss	-8(%r11,%r14,4), %xmm4          # xmm4 = mem[0],zero,zero,zero
	vaddss	8(%r11,%r14,4), %xmm4, %xmm4
	vaddss	(%r12,%r14,4), %xmm4, %xmm4
	movq	16(%rsp), %rbp                  # 8-byte Reload
	vaddss	(%rbp,%r14,4), %xmm4, %xmm4
	vaddss	(%rax,%r14,4), %xmm4, %xmm4
	vaddss	(%rbx,%r14,4), %xmm4, %xmm4
	vfmadd132ss	8(%r10), %xmm1, %xmm4   # xmm4 = (xmm4 * mem) + xmm1
	vaddss	12(%r11,%r14,4), %xmm3, %xmm1
	movq	8(%rsp), %rbp                   # 8-byte Reload
	vaddss	(%rbp,%r14,4), %xmm1, %xmm1
	vaddss	(%rcx,%r14,4), %xmm1, %xmm1
	vaddss	(%r13,%r14,4), %xmm1, %xmm1
	vaddss	(%rsi,%r14,4), %xmm1, %xmm1
	vfmadd132ss	12(%r10), %xmm4, %xmm1  # xmm1 = (xmm1 * mem) + xmm4
	vfnmadd213ss	(%rdx,%r14,4), %xmm0, %xmm2 # xmm2 = -(xmm0 * xmm2) + mem
	movq	(%rsp), %rbp                    # 8-byte Reload
	vfmsub231ss	(%rbp,%r14,4), %xmm1, %xmm2 # xmm2 = (xmm1 * mem) - xmm2
	vmovss	%xmm2, (%rdx,%r14,4)
	incq	%r14
	cmpq	%r14, %r8
	jne	.LBB1_5
	jmp	.LBB1_6
.LBB1_8:
	addq	$184, %rsp
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
.Lfunc_end1:
	.size	_ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf, .Lfunc_end1-_ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 12.0.0"
	.section	".note.GNU-stack","",@progbits
	.addrsig

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
	subq	$616, %rsp                      # imm = 0x268
	.cfi_def_cfa_offset 672
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $r8d killed $r8d def $r8
	movl	%ecx, -108(%rsp)                # 4-byte Spill
	movl	%edx, -124(%rsp)                # 4-byte Spill
	movl	%esi, -104(%rsp)                # 4-byte Spill
                                        # kill: def $edi killed $edi def $rdi
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	cmpl	%r9d, %r8d
	jge	.LBB1_17
# %bb.1:
	movq	%r8, %r13
	movl	680(%rsp), %ecx
	movl	672(%rsp), %r8d
	movslq	%r13d, %rsi
	movl	%ecx, %eax
	imull	%r13d, %eax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	decl	%r13d
	imull	%ecx, %r13d
	movl	%ecx, %edi
	imull	%r8d, %edi
	leal	(%r8,%r8), %ecx
	movslq	%ecx, %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	negl	%ecx
	movslq	%r8d, %rax
	movslq	%edi, %rbp
	movslq	-124(%rsp), %rbx                # 4-byte Folded Reload
	movq	%rax, %rdx
	movq	%rax, %r10
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	imulq	%rbx, %rdx
	movq	%rbx, %r11
	movq	%rbx, -8(%rsp)                  # 8-byte Spill
	movq	%rsi, %rax
	imulq	%rbp, %rax
	movq	%rbp, %r14
	movq	%rbp, (%rsp)                    # 8-byte Spill
	leaq	(%rdx,%rax), %rbp
	leaq	1(%rsi), %rbx
	imulq	%r14, %rbx
	addq	%rdx, %rbx
	movq	%rbx, -72(%rsp)                 # 8-byte Spill
	leaq	1(%r11), %r14
	imulq	%r10, %r14
	addq	%rax, %r14
	addq	%rdx, %rax
	addq	$3, %rax
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	leal	(%rdi,%rdi), %edx
	movslq	%edx, %r15
	negl	%edx
	movslq	%ecx, %r12
	movslq	%edx, %rbx
	leal	(%r8,%r8,2), %ecx
	movslq	%ecx, %r11
	negl	%ecx
	movslq	%ecx, %r10
	movq	%rdi, 208(%rsp)                 # 8-byte Spill
	leal	(%rdi,%rdi,2), %ecx
	movl	%r9d, %eax
	movslq	%ecx, %r9
	negl	%ecx
	movslq	%ecx, %r8
	cltq
	movq	%rax, 480(%rsp)                 # 8-byte Spill
	movslq	-40(%rsp), %rdi                 # 4-byte Folded Reload
	movslq	-104(%rsp), %rax                # 4-byte Folded Reload
	movq	%rax, %rcx
	subq	%rdi, %rcx
	movq	%rdi, %rdx
	notq	%rdx
	movq	%rax, 520(%rsp)                 # 8-byte Spill
	addq	%rax, %rdx
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	addl	%eax, %edx
	decl	%edx
	movq	-48(%rsp), %rax                 # 8-byte Reload
	imull	%eax, %edx
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	addl	-124(%rsp), %r13d               # 4-byte Folded Reload
	imull	%eax, %r13d
	movq	%r13, -80(%rsp)                 # 8-byte Spill
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	movq	%rcx, %r13
	andq	$-8, %r13
	movq	704(%rsp), %rdx
	leaq	(%rdi,%rbp), %rax
	leaq	(%rax,%r8), %rcx
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	leaq	(%rax,%r9), %rcx
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	leaq	(%rax,%r10), %rcx
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	leaq	(%rax,%r11), %rcx
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	leaq	(%rax,%rbx), %rcx
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	leaq	(%rax,%r15), %rcx
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	leaq	(%rax,%r12), %rcx
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	696(%rsp), %rcx
	leaq	(%rcx,%rax,4), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	712(%rsp), %rcx
	leaq	(%rcx,%rax,4), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	leaq	(%rdx,%rax,4), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	-96(%rsp), %rcx                 # 8-byte Reload
	addq	%rcx, %rax
	leaq	(%rdx,%rax,4), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	-72(%rsp), %rax                 # 8-byte Reload
	addq	%rdi, %rax
	leaq	(%rdx,%rax,4), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%r14, 192(%rsp)                 # 8-byte Spill
	leaq	(%r14,%rdi), %rax
	leaq	(%rdx,%rax,4), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	addq	%rbp, %r8
	movq	%r8, 128(%rsp)                  # 8-byte Spill
	addq	%rbp, %r9
	movq	%r9, 136(%rsp)                  # 8-byte Spill
	addq	%rbp, %r10
	movq	%r10, 144(%rsp)                 # 8-byte Spill
	addq	%rbp, %r11
	movq	%r11, 152(%rsp)                 # 8-byte Spill
	addq	%rbp, %rbx
	movq	%rbx, 160(%rsp)                 # 8-byte Spill
	addq	%rbp, %r15
	movq	%r15, 176(%rsp)                 # 8-byte Spill
	addq	%rbp, %r12
	movq	%r12, 168(%rsp)                 # 8-byte Spill
	movq	%rbp, 200(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	addq	%rbp, %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	vmovss	.LCPI1_0(%rip), %xmm15          # xmm15 = mem[0],zero,zero,zero
	vbroadcastss	.LCPI1_0(%rip), %ymm0   # ymm0 = [2.0E+0,2.0E+0,2.0E+0,2.0E+0,2.0E+0,2.0E+0,2.0E+0,2.0E+0]
	vmovups	%ymm0, 576(%rsp)                # 32-byte Spill
	movslq	-108(%rsp), %rax                # 4-byte Folded Reload
	movq	%rax, 544(%rsp)                 # 8-byte Spill
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	movq	-88(%rsp), %rax                 # 8-byte Reload
	addl	%ecx, %eax
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	leal	(%rdx,%rcx), %ecx
	movq	%rdi, -120(%rsp)                # 8-byte Spill
	movq	%r13, 416(%rsp)                 # 8-byte Spill
	leaq	(%r13,%rdi), %rdx
	movq	%rdx, 496(%rsp)                 # 8-byte Spill
	movq	(%rsp), %rdx                    # 8-byte Reload
	leaq	(,%rdx,4), %rdx
	movq	%rdx, 472(%rsp)                 # 8-byte Spill
	movq	-48(%rsp), %rdi                 # 8-byte Reload
	leaq	(,%rdi,4), %rdx
	movq	%rdx, 536(%rsp)                 # 8-byte Spill
	movl	%edi, %edx
	movq	%rdx, 528(%rsp)                 # 8-byte Spill
	xorl	%edx, %edx
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, 464(%rsp)                 # 8-byte Spill
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rcx, 456(%rsp)                 # 8-byte Spill
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_16:                               #   in Loop: Header=BB1_2 Depth=1
	movq	488(%rsp), %rsi                 # 8-byte Reload
	incq	%rsi
	movq	-64(%rsp), %rax                 # 8-byte Reload
	incl	%eax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	472(%rsp), %rax                 # 8-byte Reload
	addq	%rax, 64(%rsp)                  # 8-byte Folded Spill
	addq	%rax, 56(%rsp)                  # 8-byte Folded Spill
	addq	%rax, 120(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 112(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 104(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 96(%rsp)                  # 8-byte Folded Spill
	addq	%rax, 48(%rsp)                  # 8-byte Folded Spill
	addq	%rax, 88(%rsp)                  # 8-byte Folded Spill
	addq	%rax, 80(%rsp)                  # 8-byte Folded Spill
	addq	%rax, 72(%rsp)                  # 8-byte Folded Spill
	addq	%rax, 40(%rsp)                  # 8-byte Folded Spill
	addq	%rax, 32(%rsp)                  # 8-byte Folded Spill
	movq	208(%rsp), %rcx                 # 8-byte Reload
	addq	%rcx, 8(%rsp)                   # 8-byte Folded Spill
	addq	%rcx, 16(%rsp)                  # 8-byte Folded Spill
	addq	%rax, 24(%rsp)                  # 8-byte Folded Spill
	movq	-80(%rsp), %rax                 # 8-byte Reload
	addl	%ecx, %eax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	-88(%rsp), %rax                 # 8-byte Reload
	addl	%ecx, %eax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	(%rsp), %rax                    # 8-byte Reload
	addq	%rax, 128(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 136(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 144(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 152(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 160(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 176(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 168(%rsp)                 # 8-byte Folded Spill
	addq	%rax, -96(%rsp)                 # 8-byte Folded Spill
	addq	%rax, -72(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 192(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 200(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 184(%rsp)                 # 8-byte Folded Spill
	cmpq	480(%rsp), %rsi                 # 8-byte Folded Reload
	je	.LBB1_17
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #       Child Loop BB1_11 Depth 3
                                        #       Child Loop BB1_14 Depth 3
	movq	%rsi, 488(%rsp)                 # 8-byte Spill
	movl	-124(%rsp), %eax                # 4-byte Reload
	cmpl	-108(%rsp), %eax                # 4-byte Folded Reload
	jge	.LBB1_16
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movq	208(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %ecx
	imull	-64(%rsp), %ecx                 # 4-byte Folded Reload
	movq	464(%rsp), %rax                 # 8-byte Reload
	addl	%ecx, %eax
	movq	%rax, 512(%rsp)                 # 8-byte Spill
	addl	456(%rsp), %ecx                 # 4-byte Folded Reload
	movq	%rcx, 504(%rsp)                 # 8-byte Spill
	movl	$0, -100(%rsp)                  # 4-byte Folded Spill
	movq	184(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	movq	200(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 320(%rsp)                 # 8-byte Spill
	movq	192(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 312(%rsp)                 # 8-byte Spill
	movq	-72(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 304(%rsp)                 # 8-byte Spill
	movq	-96(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 296(%rsp)                 # 8-byte Spill
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	movq	176(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 272(%rsp)                 # 8-byte Spill
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 256(%rsp)                 # 8-byte Spill
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	movq	-88(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	-80(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	32(%rsp), %rbp                  # 8-byte Reload
	movq	40(%rsp), %rbx                  # 8-byte Reload
	movq	72(%rsp), %r8                   # 8-byte Reload
	movq	80(%rsp), %r9                   # 8-byte Reload
	movq	88(%rsp), %r10                  # 8-byte Reload
	movq	48(%rsp), %r11                  # 8-byte Reload
	movq	96(%rsp), %r14                  # 8-byte Reload
	movq	104(%rsp), %r15                 # 8-byte Reload
	movq	112(%rsp), %r12                 # 8-byte Reload
	movq	120(%rsp), %r13                 # 8-byte Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 336(%rsp)                 # 8-byte Spill
	jmp	.LBB1_4
	.p2align	4, 0x90
.LBB1_15:                               #   in Loop: Header=BB1_4 Depth=2
	incq	336(%rsp)                       # 8-byte Folded Spill
	incl	-100(%rsp)                      # 4-byte Folded Spill
	movq	536(%rsp), %rax                 # 8-byte Reload
	addq	%rax, 224(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 232(%rsp)                 # 8-byte Folded Spill
	movq	344(%rsp), %r13                 # 8-byte Reload
	addq	%rax, %r13
	movq	352(%rsp), %r12                 # 8-byte Reload
	addq	%rax, %r12
	movq	360(%rsp), %r15                 # 8-byte Reload
	addq	%rax, %r15
	movq	368(%rsp), %r14                 # 8-byte Reload
	addq	%rax, %r14
	movq	376(%rsp), %r11                 # 8-byte Reload
	addq	%rax, %r11
	movq	384(%rsp), %r10                 # 8-byte Reload
	addq	%rax, %r10
	movq	392(%rsp), %r9                  # 8-byte Reload
	addq	%rax, %r9
	movq	400(%rsp), %r8                  # 8-byte Reload
	addq	%rax, %r8
	movq	408(%rsp), %rbx                 # 8-byte Reload
	addq	%rax, %rbx
	movq	424(%rsp), %rbp                 # 8-byte Reload
	addq	%rax, %rbp
	movq	528(%rsp), %rcx                 # 8-byte Reload
	movq	432(%rsp), %rdi                 # 8-byte Reload
	addq	%rcx, %rdi
	movq	440(%rsp), %rsi                 # 8-byte Reload
	addq	%rcx, %rsi
	movq	448(%rsp), %rdx                 # 8-byte Reload
	addq	%rax, %rdx
	movl	672(%rsp), %eax
	movq	-32(%rsp), %rcx                 # 8-byte Reload
	addl	%eax, %ecx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	addl	%eax, %ecx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	-48(%rsp), %rax                 # 8-byte Reload
	addq	%rax, 240(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 248(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 256(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 264(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 272(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 280(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 288(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 296(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 304(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 312(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 320(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 328(%rsp)                 # 8-byte Folded Spill
	movq	336(%rsp), %rax                 # 8-byte Reload
	cmpq	544(%rsp), %rax                 # 8-byte Folded Reload
	je	.LBB1_16
.LBB1_4:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_11 Depth 3
                                        #       Child Loop BB1_14 Depth 3
	movq	%r13, 344(%rsp)                 # 8-byte Spill
	movq	%r12, 352(%rsp)                 # 8-byte Spill
	movq	%r15, 360(%rsp)                 # 8-byte Spill
	movq	%r14, 368(%rsp)                 # 8-byte Spill
	movq	%r11, 376(%rsp)                 # 8-byte Spill
	movq	%r10, 384(%rsp)                 # 8-byte Spill
	movq	%r9, 392(%rsp)                  # 8-byte Spill
	movq	%r8, 400(%rsp)                  # 8-byte Spill
	movq	%rbx, 408(%rsp)                 # 8-byte Spill
	movq	%rbp, 424(%rsp)                 # 8-byte Spill
	movq	%rdi, 432(%rsp)                 # 8-byte Spill
	movq	%rsi, 440(%rsp)                 # 8-byte Spill
	movq	%rdx, 448(%rsp)                 # 8-byte Spill
	movq	-40(%rsp), %rax                 # 8-byte Reload
	cmpl	-104(%rsp), %eax                # 4-byte Folded Reload
	movq	704(%rsp), %rbp
	jge	.LBB1_15
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=2
	movq	688(%rsp), %rax
	vmovss	(%rax), %xmm2                   # xmm2 = mem[0],zero,zero,zero
	vmovss	4(%rax), %xmm3                  # xmm3 = mem[0],zero,zero,zero
	vmovss	8(%rax), %xmm4                  # xmm4 = mem[0],zero,zero,zero
	vmovss	12(%rax), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	movq	-120(%rsp), %rdi                # 8-byte Reload
	cmpq	$8, 216(%rsp)                   # 8-byte Folded Reload
	jb	.LBB1_13
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=2
	movl	-100(%rsp), %eax                # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	movl	672(%rsp), %ecx
	imull	%ecx, %eax
	movq	512(%rsp), %rcx                 # 8-byte Reload
	addl	%eax, %ecx
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	addl	%ecx, %edx
	movq	-120(%rsp), %rdi                # 8-byte Reload
	cmpl	%ecx, %edx
	jl	.LBB1_13
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=2
	movq	-56(%rsp), %rcx                 # 8-byte Reload
	shrq	$32, %rcx
	movq	-120(%rsp), %rdi                # 8-byte Reload
	jne	.LBB1_13
# %bb.8:                                #   in Loop: Header=BB1_4 Depth=2
	addl	504(%rsp), %eax                 # 4-byte Folded Reload
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	addl	%eax, %edx
	movq	-120(%rsp), %rdi                # 8-byte Reload
	cmpl	%eax, %edx
	jl	.LBB1_13
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=2
	movq	-120(%rsp), %rdi                # 8-byte Reload
	testq	%rcx, %rcx
	jne	.LBB1_13
# %bb.10:                               #   in Loop: Header=BB1_4 Depth=2
	vbroadcastss	%xmm2, %ymm6
	vbroadcastss	%xmm3, %ymm7
	vbroadcastss	%xmm4, %ymm8
	vbroadcastss	%xmm5, %ymm9
	xorl	%eax, %eax
	vmovups	576(%rsp), %ymm0                # 32-byte Reload
	movq	408(%rsp), %r15                 # 8-byte Reload
	movq	400(%rsp), %r12                 # 8-byte Reload
	movq	392(%rsp), %r14                 # 8-byte Reload
	movq	384(%rsp), %rbp                 # 8-byte Reload
	movq	376(%rsp), %rbx                 # 8-byte Reload
	movq	368(%rsp), %rdx                 # 8-byte Reload
	movq	360(%rsp), %rsi                 # 8-byte Reload
	movq	352(%rsp), %r8                  # 8-byte Reload
	movq	344(%rsp), %r9                  # 8-byte Reload
	movq	232(%rsp), %r13                 # 8-byte Reload
	movq	224(%rsp), %r10                 # 8-byte Reload
	.p2align	4, 0x90
.LBB1_11:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovups	-4(%rbx,%rax,4), %ymm10
	vaddps	4(%rbx,%rax,4), %ymm10, %ymm10
	movq	448(%rsp), %rcx                 # 8-byte Reload
	vaddps	(%rcx,%rax,4), %ymm10, %ymm10
	movq	440(%rsp), %rcx                 # 8-byte Reload
	addl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	704(%rsp), %r11
	vaddps	(%r11,%rcx,4), %ymm10, %ymm10
	movq	424(%rsp), %rcx                 # 8-byte Reload
	vaddps	(%rcx,%rax,4), %ymm10, %ymm10
	movq	432(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%rax), %ecx
	movslq	%ecx, %rcx
	vaddps	(%r11,%rcx,4), %ymm10, %ymm10
	vmovups	-12(%rbx,%rax,4), %ymm11
	vmovups	-8(%rbx,%rax,4), %ymm12
	vmovups	(%rbx,%rax,4), %ymm13
	vmulps	%ymm6, %ymm13, %ymm14
	vfmadd213ps	%ymm14, %ymm7, %ymm10   # ymm10 = (ymm7 * ymm10) + ymm14
	vaddps	8(%rbx,%rax,4), %ymm12, %ymm12
	vaddps	(%r15,%rax,4), %ymm12, %ymm12
	vaddps	(%r12,%rax,4), %ymm12, %ymm12
	vaddps	(%r14,%rax,4), %ymm12, %ymm12
	vaddps	(%rbp,%rax,4), %ymm12, %ymm12
	vaddps	12(%rbx,%rax,4), %ymm11, %ymm11
	vaddps	(%rdx,%rax,4), %ymm11, %ymm11
	vaddps	(%rsi,%rax,4), %ymm11, %ymm11
	vaddps	(%r8,%rax,4), %ymm11, %ymm11
	vfmadd213ps	%ymm10, %ymm8, %ymm12   # ymm12 = (ymm8 * ymm12) + ymm10
	vaddps	(%r9,%rax,4), %ymm11, %ymm10
	vfmadd213ps	%ymm12, %ymm9, %ymm10   # ymm10 = (ymm9 * ymm10) + ymm12
	vfnmadd213ps	(%r13,%rax,4), %ymm0, %ymm13 # ymm13 = -(ymm0 * ymm13) + mem
	vfmsub231ps	(%r10,%rax,4), %ymm10, %ymm13 # ymm13 = (ymm10 * mem) - ymm13
	vmovups	%ymm13, (%r13,%rax,4)
	addq	$8, %rax
	cmpq	%rax, 416(%rsp)                 # 8-byte Folded Reload
	jne	.LBB1_11
# %bb.12:                               #   in Loop: Header=BB1_4 Depth=2
	movq	496(%rsp), %rdi                 # 8-byte Reload
	movq	416(%rsp), %rax                 # 8-byte Reload
	cmpq	%rax, 216(%rsp)                 # 8-byte Folded Reload
	movq	704(%rsp), %rbp
	je	.LBB1_15
	.p2align	4, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_4 Depth=2
	movq	-32(%rsp), %rax                 # 8-byte Reload
	addl	%edi, %eax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	240(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdi,%rax), %rax
	leaq	(%rbp,%rax,4), %rax
	movq	%rax, 568(%rsp)                 # 8-byte Spill
	movq	248(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdi,%rax), %rax
	leaq	(%rbp,%rax,4), %rax
	movq	%rax, 560(%rsp)                 # 8-byte Spill
	movq	256(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdi,%rax), %rcx
	leaq	(%rbp,%rcx,4), %rax
	movq	%rax, 552(%rsp)                 # 8-byte Spill
	movq	264(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdi,%rax), %rcx
	leaq	(%rbp,%rcx,4), %r8
	movq	272(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdi,%rax), %rcx
	leaq	(%rbp,%rcx,4), %r13
	movq	280(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdi,%rax), %rcx
	leaq	(%rbp,%rcx,4), %rdx
	movq	288(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdi,%rax), %rcx
	leaq	(%rbp,%rcx,4), %r9
	movq	296(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdi,%rax), %rcx
	leaq	(%rbp,%rcx,4), %r15
	movq	304(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdi,%rax), %rcx
	leaq	(%rbp,%rcx,4), %r11
	movq	312(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdi,%rax), %rcx
	leaq	(,%rcx,4), %rbx
	addq	%rbp, %rbx
	movq	520(%rsp), %rcx                 # 8-byte Reload
	subq	%rdi, %rcx
	movq	320(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdi,%rax), %rsi
	movq	712(%rsp), %rax
	leaq	(%rax,%rsi,4), %r14
	movq	696(%rsp), %rax
	leaq	(%rax,%rsi,4), %r10
	movq	-24(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r12d
	addq	328(%rsp), %rdi                 # 8-byte Folded Reload
	leaq	(,%rdi,4), %rsi
	addq	%rbp, %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_14:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovss	-16(%rsi,%rdi,4), %xmm6         # xmm6 = mem[0],zero,zero,zero
	vaddss	-8(%rsi,%rdi,4), %xmm6, %xmm6
	vaddss	(%rbx,%rdi,4), %xmm6, %xmm6
	leal	(%r12,%rdi), %eax
	cltq
	vaddss	(%rbp,%rax,4), %xmm6, %xmm6
	vaddss	(%r11,%rdi,4), %xmm6, %xmm6
	movq	-16(%rsp), %rax                 # 8-byte Reload
	addl	%edi, %eax
	cltq
	vaddss	(%rbp,%rax,4), %xmm6, %xmm6
	vmovss	-12(%rsi,%rdi,4), %xmm7         # xmm7 = mem[0],zero,zero,zero
	vmulss	%xmm2, %xmm7, %xmm1
	vfmadd213ss	%xmm1, %xmm3, %xmm6     # xmm6 = (xmm3 * xmm6) + xmm1
	vmovss	-24(%rsi,%rdi,4), %xmm1         # xmm1 = mem[0],zero,zero,zero
	vmovss	-20(%rsi,%rdi,4), %xmm0         # xmm0 = mem[0],zero,zero,zero
	vaddss	-4(%rsi,%rdi,4), %xmm0, %xmm0
	vaddss	(%r15,%rdi,4), %xmm0, %xmm0
	vaddss	(%r9,%rdi,4), %xmm0, %xmm0
	vaddss	(%rdx,%rdi,4), %xmm0, %xmm0
	vaddss	(%r13,%rdi,4), %xmm0, %xmm0
	vaddss	(%rsi,%rdi,4), %xmm1, %xmm1
	vaddss	(%r8,%rdi,4), %xmm1, %xmm1
	movq	552(%rsp), %rax                 # 8-byte Reload
	vaddss	(%rax,%rdi,4), %xmm1, %xmm1
	movq	560(%rsp), %rax                 # 8-byte Reload
	vaddss	(%rax,%rdi,4), %xmm1, %xmm1
	vfmadd213ss	%xmm6, %xmm4, %xmm0     # xmm0 = (xmm4 * xmm0) + xmm6
	movq	568(%rsp), %rax                 # 8-byte Reload
	vaddss	(%rax,%rdi,4), %xmm1, %xmm1
	vfmadd213ss	%xmm0, %xmm5, %xmm1     # xmm1 = (xmm5 * xmm1) + xmm0
	vfnmadd213ss	(%r14,%rdi,4), %xmm15, %xmm7 # xmm7 = -(xmm15 * xmm7) + mem
	vfmsub231ss	(%r10,%rdi,4), %xmm1, %xmm7 # xmm7 = (xmm1 * mem) - xmm7
	vmovss	%xmm7, (%r14,%rdi,4)
	incq	%rdi
	cmpq	%rdi, %rcx
	jne	.LBB1_14
	jmp	.LBB1_15
.LBB1_17:
	addq	$616, %rsp                      # imm = 0x268
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
.Lfunc_end1:
	.size	_ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf, .Lfunc_end1-_ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 12.0.0"
	.section	".note.GNU-stack","",@progbits
	.addrsig

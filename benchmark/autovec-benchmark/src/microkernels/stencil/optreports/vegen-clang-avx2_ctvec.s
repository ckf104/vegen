	.text
	.file	"stencil_serial.cpp"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5                               # -- Begin function _Z19loop_stencil_serialiiiiiiiiiiiPKfS0_PfS1_
.LCPI0_0:
	.zero	4
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	2                               # 0x2
	.text
	.globl	_Z19loop_stencil_serialiiiiiiiiiiiPKfS0_PfS1_
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, 8(%rsp)                   # 4-byte Spill
	movl	%esi, 12(%rsp)                  # 4-byte Spill
	movl	%esi, %ebp
	subl	%edi, %ebp
	jle	.LBB0_33
# %bb.1:
	movl	%r8d, %r15d
	movl	%ecx, %r13d
	movl	%edx, %r14d
	movl	%edi, %ebx
	movl	%edi, %r12d
	notl	%r12d
	addl	12(%rsp), %r12d                 # 4-byte Folded Reload
	andl	$7, %ebp
	jne	.LBB0_2
.LBB0_6:
	cmpl	$7, %r12d
	jae	.LBB0_7
.LBB0_33:
	addq	$40, %rsp
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
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	.cfi_def_cfa_offset 96
	movl	8(%rsp), %ecx                   # 4-byte Reload
	movl	96(%rsp), %r8d
	movl	104(%rsp), %r9d
	pushq	152(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	168(%rsp)
	.cfi_adjust_cfa_offset 8
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	_ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	incl	%ebx
	decl	%ebp
	je	.LBB0_6
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	%r14d, %edi
	movl	%r13d, %esi
	movl	%r15d, %edx
	testb	$1, %bl
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	8(%rsp), %ecx                   # 4-byte Reload
	movl	96(%rsp), %r8d
	movl	104(%rsp), %r9d
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	jmp	.LBB0_5
.LBB0_7:
	.cfi_def_cfa_offset 96
	vpbroadcastd	.LCPI0_1(%rip), %xmm0   # xmm0 = [2,2,2,2]
	vmovdqa	%xmm0, 16(%rsp)                 # 16-byte Spill
	movl	%ebx, %r12d
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_31:                               #   in Loop: Header=BB0_8 Depth=1
	pushq	152(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	168(%rsp)
	.cfi_adjust_cfa_offset 8
.LBB0_32:                               #   in Loop: Header=BB0_8 Depth=1
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	_ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	vmovd	%r12d, %xmm0
	vpblendd	$14, .LCPI0_0(%rip), %xmm0, %xmm0 # xmm0 = xmm0[0],mem[1,2,3]
	vpaddd	.LCPI0_0+16(%rip), %xmm0, %xmm0
	vpaddd	16(%rsp), %xmm0, %xmm0          # 16-byte Folded Reload
	vpshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %r12d
	incl	%r12d
	cmpl	12(%rsp), %r12d                 # 4-byte Folded Reload
	je	.LBB0_33
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	%r14d, %edi
	movl	%r13d, %esi
	movl	%r15d, %edx
	testb	$1, %bl
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movl	8(%rsp), %ebp                   # 4-byte Reload
	movl	%ebp, %ecx
	movl	96(%rsp), %r8d
	movl	104(%rsp), %r9d
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.cfi_def_cfa_offset 96
	movl	8(%rsp), %ebp                   # 4-byte Reload
	movl	%ebp, %ecx
	movl	96(%rsp), %r8d
	movl	104(%rsp), %r9d
	pushq	152(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	168(%rsp)
	.cfi_adjust_cfa_offset 8
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	_ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	movl	%r14d, %edi
	movl	%r13d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	96(%rsp), %r8d
	movl	104(%rsp), %r9d
	testb	$1, %bl
	jne	.LBB0_12
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	pushq	152(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	168(%rsp)
	.cfi_adjust_cfa_offset 8
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	.cfi_def_cfa_offset 96
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	_ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	movl	%r14d, %edi
	movl	%r13d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	96(%rsp), %r8d
	movl	104(%rsp), %r9d
	testb	$1, %bl
	jne	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_8 Depth=1
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=1
	.cfi_def_cfa_offset 96
	pushq	152(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	168(%rsp)
	.cfi_adjust_cfa_offset 8
.LBB0_17:                               #   in Loop: Header=BB0_8 Depth=1
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	_ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	movl	%r14d, %edi
	movl	%r13d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	96(%rsp), %r8d
	movl	104(%rsp), %r9d
	testb	$1, %bl
	jne	.LBB0_18
# %bb.19:                               #   in Loop: Header=BB0_8 Depth=1
	pushq	152(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	168(%rsp)
	.cfi_adjust_cfa_offset 8
	jmp	.LBB0_20
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_8 Depth=1
	.cfi_def_cfa_offset 96
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=1
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	_ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	movl	%r14d, %edi
	movl	%r13d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	96(%rsp), %r8d
	movl	104(%rsp), %r9d
	testb	$1, %bl
	jne	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	jmp	.LBB0_23
	.p2align	4, 0x90
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=1
	.cfi_def_cfa_offset 96
	pushq	152(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	168(%rsp)
	.cfi_adjust_cfa_offset 8
.LBB0_23:                               #   in Loop: Header=BB0_8 Depth=1
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	_ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	movl	%r14d, %edi
	movl	%r13d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	96(%rsp), %r8d
	movl	104(%rsp), %r9d
	testb	$1, %bl
	jne	.LBB0_24
# %bb.25:                               #   in Loop: Header=BB0_8 Depth=1
	pushq	152(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	168(%rsp)
	.cfi_adjust_cfa_offset 8
	jmp	.LBB0_26
	.p2align	4, 0x90
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=1
	.cfi_def_cfa_offset 96
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
.LBB0_26:                               #   in Loop: Header=BB0_8 Depth=1
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	_ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	movl	%r14d, %edi
	movl	%r13d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	96(%rsp), %r8d
	movl	104(%rsp), %r9d
	testb	$1, %bl
	jne	.LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=1
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	jmp	.LBB0_29
	.p2align	4, 0x90
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	.cfi_def_cfa_offset 96
	pushq	152(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	168(%rsp)
	.cfi_adjust_cfa_offset 8
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movl	152(%rsp), %eax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	_ZL12stencil_stepiiiiiiiiiPKfS0_S0_Pf
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	movl	%r14d, %edi
	movl	%r13d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	96(%rsp), %r8d
	movl	104(%rsp), %r9d
	testb	$1, %bl
	je	.LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_8 Depth=1
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)
	.cfi_adjust_cfa_offset 8
	jmp	.LBB0_32
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
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
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
	movl	232(%rsp), %edi
	movl	224(%rsp), %r10d
	movl	%edi, %r13d
	imull	%r10d, %r13d
	movslq	-128(%rsp), %r14                # 4-byte Folded Reload
	movslq	%r10d, %rsi
	movslq	%r13d, %r12
	movl	-124(%rsp), %eax                # 4-byte Reload
	movslq	%eax, %rcx
	movslq	%r8d, %rbx
	leal	-1(%r8), %r11d
	imull	%edi, %r11d
	addl	%eax, %r11d
	imull	%esi, %r11d
	movl	%esi, %eax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	imull	%r8d, %edi
	leal	(%rcx,%rdi), %r15d
	decl	%r15d
	imull	%esi, %r15d
	leaq	(,%rsi,4), %rax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	leaq	1(%rcx), %rdx
	imulq	%rsi, %rdx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	imulq	%rcx, %rsi
	movq	%rbx, %rbp
	imulq	%r12, %rbp
	movq	%rbx, -80(%rsp)                 # 8-byte Spill
	incq	%rbx
	imulq	%r12, %rbx
	addq	%rsi, %rbx
	leaq	(%rsi,%rbp), %rdi
	addq	%rbp, %rdx
	movslq	-116(%rsp), %rax                # 4-byte Folded Reload
	addq	%r14, %rdi
	addq	%r14, %rbx
	addq	%r14, %rdx
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	subq	%r14, %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	leal	(%r10,%r10), %edx
	movslq	%edx, %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	negl	%edx
	leal	(%r13,%r13), %eax
	movslq	%eax, %r14
	negl	%eax
	leal	(%r10,%r10,2), %ebp
	movslq	%edx, %r10
	movl	%r9d, %ecx
	movslq	%eax, %r9
	movslq	%ebp, %r8
	negl	%ebp
	movslq	%ebp, %rbp
	movq	%r13, 24(%rsp)                  # 8-byte Spill
	leal	(%r13,%r13,2), %edx
	movslq	%edx, %rax
	negl	%edx
	movslq	%edx, %rdx
	movslq	%ecx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	%r11, %rsi
	movl	-128(%rsp), %ecx                # 4-byte Reload
	addl	%ecx, %esi
	addl	%ecx, %r15d
	movq	%r15, -88(%rsp)                 # 8-byte Spill
	addq	%rdi, %rdx
	movq	256(%rsp), %r11
	leaq	(%r11,%rdx,4), %r15
	leaq	(,%r12,4), %rdx
	movq	%rdx, (%rsp)                    # 8-byte Spill
	addq	%rdi, %rax
	leaq	(%r11,%rax,4), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	addq	%rdi, %rbp
	leaq	(%r11,%rbp,4), %r12
	addq	%rdi, %r8
	leaq	(%r11,%r8,4), %rdx
	addq	%rdi, %r9
	leaq	(%r11,%r9,4), %r8
	addq	%rdi, %r14
	leaq	(%r11,%r14,4), %r13
	movq	%rdx, %r14
	addq	%rdi, %r10
	leaq	(%r11,%r10,4), %r10
	movq	-112(%rsp), %rax                # 8-byte Reload
	addq	%rdi, %rax
	leaq	(%r11,%rax,4), %rax
	leaq	(%r11,%rbx,4), %rcx
	movq	-104(%rsp), %rdx                # 8-byte Reload
	leaq	(%r11,%rdx,4), %r9
	movq	%rax, %rbx
	movq	264(%rsp), %rax
	leaq	(%rax,%rdi,4), %rbp
	movq	248(%rsp), %rax
	leaq	(%rax,%rdi,4), %rdx
	leaq	(%r11,%rdi,4), %r11
	movq	%r9, %rax
	vmovss	.LCPI1_0(%rip), %xmm8           # xmm8 = mem[0],zero,zero,zero
	movslq	-120(%rsp), %rdi                # 4-byte Folded Reload
	movq	%rdi, 128(%rsp)                 # 8-byte Spill
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rsp), %r11                 # 8-byte Reload
	incq	%r11
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	addq	%rax, %rsi
	addq	%rax, -88(%rsp)                 # 8-byte Folded Spill
	movq	120(%rsp), %r15                 # 8-byte Reload
	movq	(%rsp), %rdi                    # 8-byte Reload
	addq	%rdi, %r15
	addq	%rdi, -96(%rsp)                 # 8-byte Folded Spill
	movq	112(%rsp), %r12                 # 8-byte Reload
	addq	%rdi, %r12
	movq	104(%rsp), %r14                 # 8-byte Reload
	addq	%rdi, %r14
	movq	96(%rsp), %r8                   # 8-byte Reload
	addq	%rdi, %r8
	movq	88(%rsp), %r13                  # 8-byte Reload
	addq	%rdi, %r13
	movq	80(%rsp), %r10                  # 8-byte Reload
	addq	%rdi, %r10
	movq	72(%rsp), %rbx                  # 8-byte Reload
	addq	%rdi, %rbx
	movq	64(%rsp), %rcx                  # 8-byte Reload
	addq	%rdi, %rcx
	movq	56(%rsp), %rax                  # 8-byte Reload
	addq	%rdi, %rax
	movq	32(%rsp), %r9                   # 8-byte Reload
	addq	%rdi, %r9
	movq	48(%rsp), %rbp                  # 8-byte Reload
	addq	%rdi, %rbp
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addq	%rdi, %rdx
	movq	%r11, -80(%rsp)                 # 8-byte Spill
	cmpq	8(%rsp), %r11                   # 8-byte Folded Reload
	movq	%r9, %r11
	je	.LBB1_8
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #       Child Loop BB1_5 Depth 3
	movq	%rsi, -72(%rsp)                 # 8-byte Spill
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rdx, %r9
	movq	%rbp, 48(%rsp)                  # 8-byte Spill
	movq	%rbp, %rdx
	movq	%r11, 32(%rsp)                  # 8-byte Spill
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rbx, 72(%rsp)                  # 8-byte Spill
	movq	%rbx, %rsi
	movq	%r10, 80(%rsp)                  # 8-byte Spill
	movq	%r15, %rax
	movq	%r10, %r15
	movq	%r13, 88(%rsp)                  # 8-byte Spill
	movq	%r13, -32(%rsp)                 # 8-byte Spill
	movq	%r8, 96(%rsp)                   # 8-byte Spill
	movq	%r14, 104(%rsp)                 # 8-byte Spill
	movq	%r14, %rbx
	movq	%r12, 112(%rsp)                 # 8-byte Spill
	movq	%r12, -40(%rsp)                 # 8-byte Spill
	movq	-96(%rsp), %r12                 # 8-byte Reload
	movq	%r12, -48(%rsp)                 # 8-byte Spill
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	-88(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	-72(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	-124(%rsp), %ebp                # 4-byte Reload
	cmpl	-120(%rsp), %ebp                # 4-byte Folded Reload
	jl	.LBB1_3
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=2
	movq	160(%rsp), %rcx                 # 8-byte Reload
	incq	%rcx
	movq	152(%rsp), %rbp                 # 8-byte Reload
	addq	%rbp, %r10
	movq	%r10, -64(%rsp)                 # 8-byte Spill
	addq	%rbp, %r12
	movq	%r12, -56(%rsp)                 # 8-byte Spill
	movq	144(%rsp), %rbp                 # 8-byte Reload
	addq	%rbp, %r14
	addq	%rbp, %rsi
	movq	%rsi, -48(%rsp)                 # 8-byte Spill
	addq	%rbp, %rbx
	movq	%rbx, -40(%rsp)                 # 8-byte Spill
	movq	%rdi, %r10
	addq	%rbp, %r10
	movq	-112(%rsp), %r8                 # 8-byte Reload
	addq	%rbp, %r8
	addq	%rbp, %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	addq	%rbp, %r15
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	addq	%rbp, %rsi
	movq	-104(%rsp), %rax                # 8-byte Reload
	addq	%rbp, %rax
	addq	%rbp, %r13
	movq	%r13, -24(%rsp)                 # 8-byte Spill
	addq	%rbp, %r11
	addq	%rbp, %rdx
	movq	-16(%rsp), %r9                  # 8-byte Reload
	addq	%rbp, %r9
	cmpq	128(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rax, %rdi
	movq	%r10, %rbx
	je	.LBB1_7
.LBB1_3:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_5 Depth 3
	movq	%r9, -16(%rsp)                  # 8-byte Spill
	movq	%rsi, -8(%rsp)                  # 8-byte Spill
	movq	%r8, -112(%rsp)                 # 8-byte Spill
	movq	%rdi, -104(%rsp)                # 8-byte Spill
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	movl	-128(%rsp), %ebp                # 4-byte Reload
	cmpl	-116(%rsp), %ebp                # 4-byte Folded Reload
	movq	136(%rsp), %r8                  # 8-byte Reload
	movq	256(%rsp), %rcx
	movq	-24(%rsp), %r13                 # 8-byte Reload
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movq	%rbx, %rdi
	movq	-40(%rsp), %rbx                 # 8-byte Reload
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	-56(%rsp), %r12                 # 8-byte Reload
	movq	-64(%rsp), %r10                 # 8-byte Reload
	jge	.LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=2
	movq	240(%rsp), %rbp
	vmovss	(%rbp), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	vmovss	4(%rbp), %xmm2                  # xmm2 = mem[0],zero,zero,zero
	vmovss	8(%rbp), %xmm3                  # xmm3 = mem[0],zero,zero,zero
	vmovss	12(%rbp), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB1_5:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovss	-4(%r11,%r9,4), %xmm5           # xmm5 = mem[0],zero,zero,zero
	vaddss	4(%r11,%r9,4), %xmm5, %xmm5
	vaddss	(%r13,%r9,4), %xmm5, %xmm5
	leal	(%r12,%r9), %ebp
	movslq	%ebp, %rbp
	vaddss	(%rcx,%rbp,4), %xmm5, %xmm5
	movq	-104(%rsp), %rbp                # 8-byte Reload
	vaddss	(%rbp,%r9,4), %xmm5, %xmm5
	leal	(%r10,%r9), %ebp
	movslq	%ebp, %rbp
	vaddss	(%rcx,%rbp,4), %xmm5, %xmm5
	vmovss	(%r11,%r9,4), %xmm6             # xmm6 = mem[0],zero,zero,zero
	vmulss	%xmm1, %xmm6, %xmm7
	vfmadd213ss	%xmm7, %xmm2, %xmm5     # xmm5 = (xmm2 * xmm5) + xmm7
	vmovss	-12(%r11,%r9,4), %xmm7          # xmm7 = mem[0],zero,zero,zero
	vmovss	-8(%r11,%r9,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vaddss	8(%r11,%r9,4), %xmm0, %xmm0
	movq	-8(%rsp), %rbp                  # 8-byte Reload
	vaddss	(%rbp,%r9,4), %xmm0, %xmm0
	vaddss	(%r15,%r9,4), %xmm0, %xmm0
	vaddss	(%rax,%r9,4), %xmm0, %xmm0
	movq	-112(%rsp), %rbp                # 8-byte Reload
	vaddss	(%rbp,%r9,4), %xmm0, %xmm0
	vaddss	12(%r11,%r9,4), %xmm7, %xmm7
	vaddss	(%rdi,%r9,4), %xmm7, %xmm7
	vaddss	(%rbx,%r9,4), %xmm7, %xmm7
	vaddss	(%rsi,%r9,4), %xmm7, %xmm7
	vfmadd213ss	%xmm5, %xmm3, %xmm0     # xmm0 = (xmm3 * xmm0) + xmm5
	vaddss	(%r14,%r9,4), %xmm7, %xmm5
	vfmadd213ss	%xmm0, %xmm4, %xmm5     # xmm5 = (xmm4 * xmm5) + xmm0
	vfnmadd213ss	(%rdx,%r9,4), %xmm8, %xmm6 # xmm6 = -(xmm8 * xmm6) + mem
	movq	-16(%rsp), %rbp                 # 8-byte Reload
	vfmsub231ss	(%rbp,%r9,4), %xmm5, %xmm6 # xmm6 = (xmm5 * mem) - xmm6
	vmovss	%xmm6, (%rdx,%r9,4)
	incq	%r9
	cmpq	%r9, %r8
	jne	.LBB1_5
	jmp	.LBB1_6
.LBB1_8:
	addq	$168, %rsp
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

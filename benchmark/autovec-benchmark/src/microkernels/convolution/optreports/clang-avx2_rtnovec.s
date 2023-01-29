	.text
	.file	"convolution_serial.cpp"
	.globl	_Z11BM_convolvePiS_iiS_         # -- Begin function _Z11BM_convolvePiS_iiS_
	.p2align	4, 0x90
	.type	_Z11BM_convolvePiS_iiS_,@function
_Z11BM_convolvePiS_iiS_:                # @_Z11BM_convolvePiS_iiS_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%edx, n(%rip)
	movl	%ecx, m(%rip)
	movq	%r8, mask(%rip)
	cmpl	%ecx, %edx
	jle	.LBB0_14
# %bb.1:
	xorl	%r9d, %r9d
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	incl	%r9d
	movl	%edx, %eax
	subl	%ecx, %eax
	cmpl	%eax, %r9d
	jge	.LBB0_14
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_7 Depth 3
                                        #         Child Loop BB0_9 Depth 4
	cmpl	%ecx, %edx
	jle	.LBB0_13
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	testl	%ecx, %ecx
	jle	.LBB0_13
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=2
	movl	n(%rip), %edx
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=2
	incl	%r14d
	movl	%edx, %eax
	subl	%ecx, %eax
	cmpl	%eax, %r14d
	jge	.LBB0_13
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_7 Depth 3
                                        #         Child Loop BB0_9 Depth 4
	testl	%ecx, %ecx
	jle	.LBB0_12
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	xorl	%r11d, %r11d
	movl	%r9d, %r10d
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=3
	incl	%r11d
	incl	%r10d
	cmpl	%ecx, %r11d
	jge	.LBB0_11
.LBB0_7:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_9 Depth 4
	testl	%ecx, %ecx
	jle	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=3
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_9:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        #       Parent Loop BB0_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	n(%rip), %eax
	movl	%r10d, %ebp
	imull	%eax, %ebp
	leal	(%r14,%rdx), %ebx
	addl	%ebp, %ebx
	movslq	%ebx, %rbx
	movl	%r11d, %ebp
	imull	%ecx, %ebp
	addl	%edx, %ebp
	movslq	%ebp, %rbp
	movl	(%r8,%rbp,4), %ebp
	imull	(%rdi,%rbx,4), %ebp
	subl	%ecx, %eax
	imull	%r9d, %eax
	addl	%r14d, %eax
	cltq
	addl	%ebp, (%rsi,%rax,4)
	incl	%edx
	movl	m(%rip), %ecx
	cmpl	%ecx, %edx
	jl	.LBB0_9
	jmp	.LBB0_10
.LBB0_14:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_Z11BM_convolvePiS_iiS_, .Lfunc_end0-_Z11BM_convolvePiS_iiS_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_convolution_serial.cpp
	.type	_GLOBAL__sub_I_convolution_serial.cpp,@function
_GLOBAL__sub_I_convolution_serial.cpp:  # @_GLOBAL__sub_I_convolution_serial.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit                    # TAILCALL
.Lfunc_end1:
	.size	_GLOBAL__sub_I_convolution_serial.cpp, .Lfunc_end1-_GLOBAL__sub_I_convolution_serial.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	mask,@object                    # @mask
	.bss
	.globl	mask
	.p2align	3
mask:
	.quad	0
	.size	mask, 8

	.type	m,@object                       # @m
	.globl	m
	.p2align	2
m:
	.long	0                               # 0x0
	.size	m, 4

	.type	n,@object                       # @n
	.globl	n
	.p2align	2
n:
	.long	0                               # 0x0
	.size	n, 4

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_convolution_serial.cpp
	.ident	"clang version 12.0.0"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _GLOBAL__sub_I_convolution_serial.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle

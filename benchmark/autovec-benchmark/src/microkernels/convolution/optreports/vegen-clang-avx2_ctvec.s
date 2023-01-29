	.text
	.file	"convolution_serial.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _Z11BM_convolvePiS_iiS_
.LCPI0_0:
	.long	3                               # 0x3
	.text
	.globl	_Z11BM_convolvePiS_iiS_
	.p2align	4, 0x90
	.type	_Z11BM_convolvePiS_iiS_,@function
_Z11BM_convolvePiS_iiS_:                # @_Z11BM_convolvePiS_iiS_
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	leaq	65560(%rdi), %rax
	addq	$16, %rsi
	xorl	%r9d, %r9d
	vpbroadcastd	.LCPI0_0(%rip), %ymm0   # ymm0 = [3,3,3,3,3,3,3,3]
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	incq	%r8
	movq	$-8184, %rdx                    # imm = 0xE008
	.p2align	4, 0x90
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rcx
	vmovdqu	-32820(%rax,%rdx,4), %ymm1
	vpaddd	%ymm1, %ymm1, %ymm1
	vmovdqu	32712(%rax,%rdx,4), %ymm2
	vmovdqu	32716(%rax,%rdx,4), %ymm3
	vpaddd	%ymm3, %ymm3, %ymm3
	vpaddd	32720(%rax,%rdx,4), %ymm3, %ymm3
	vpaddd	-32816(%rax,%rdx,4), %ymm2, %ymm2
	vpmulld	%ymm0, %ymm2, %ymm2
	vpaddd	-32824(%rax,%rdx,4), %ymm1, %ymm1
	vpaddd	32720(%rsi,%rdx,4), %ymm1, %ymm1
	vpaddd	%ymm1, %ymm3, %ymm1
	vpaddd	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 32720(%rsi,%rdx,4)
	addq	$8, %rdx
	jne	.LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-32788(%rax,%rcx,4), %r10d
	addl	%r10d, %r10d
	movl	32744(%rax,%rcx,4), %r11d
	movl	32748(%rax,%rcx,4), %ebx
	addl	%ebx, %ebx
	addl	32752(%rax,%rcx,4), %ebx
	addl	-32784(%rax,%rcx,4), %r11d
	leal	(%r11,%r11,2), %r11d
	addl	%ebx, %r11d
	addl	-32792(%rax,%rcx,4), %r10d
	addl	32752(%rsi,%rcx,4), %r10d
	addl	%r11d, %r10d
	movl	%r10d, 32752(%rsi,%rcx,4)
	addq	%r9, %rdx
	movl	-32784(%rax,%rcx,4), %ebx
	addl	%ebx, %ebx
	leaq	32740(,%rdx,4), %r10
	orq	$8, %r10
	movl	32752(%rax,%rcx,4), %r11d
	addl	%r11d, %r11d
	leaq	98276(,%rdx,4), %rdx
	orq	$8, %rdx
	addl	(%rdi,%rdx), %r11d
	movl	32748(%rax,%rcx,4), %edx
	addl	(%rdi,%r10), %edx
	leal	(%rdx,%rdx,2), %edx
	addl	-32788(%rax,%rcx,4), %ebx
	addl	%r11d, %edx
	addl	32756(%rsi,%rcx,4), %ebx
	addl	%edx, %ebx
	movl	%ebx, 32756(%rsi,%rcx,4)
	movl	-32780(%rax,%rcx,4), %edx
	addl	%edx, %edx
	movl	32752(%rax,%rcx,4), %r10d
	movl	32756(%rax,%rcx,4), %ebx
	addl	%ebx, %ebx
	addl	32760(%rax,%rcx,4), %ebx
	addl	-32776(%rax,%rcx,4), %r10d
	leal	(%r10,%r10,2), %r10d
	addl	%ebx, %r10d
	addl	-32784(%rax,%rcx,4), %edx
	addl	32760(%rsi,%rcx,4), %edx
	addl	%r10d, %edx
	movl	%edx, 32760(%rsi,%rcx,4)
	movl	-32776(%rax,%rcx,4), %edx
	movl	32756(%rax,%rcx,4), %r10d
	movl	32760(%rax,%rcx,4), %ebx
	addl	%ebx, %ebx
	addl	32764(%rax,%rcx,4), %ebx
	addl	-32772(%rax,%rcx,4), %r10d
	addl	%edx, %edx
	leal	(%r10,%r10,2), %r10d
	addl	-32780(%rax,%rcx,4), %edx
	addl	32764(%rsi,%rcx,4), %edx
	addl	%ebx, %r10d
	addl	%r10d, %edx
	movl	%edx, 32764(%rsi,%rcx,4)
	movl	-32772(%rax,%rcx,4), %edx
	addl	%edx, %edx
	movl	32760(%rax,%rcx,4), %r10d
	movl	32764(%rax,%rcx,4), %ebx
	addl	%ebx, %ebx
	addl	32768(%rax,%rcx,4), %ebx
	addl	-32768(%rax,%rcx,4), %r10d
	leal	(%r10,%r10,2), %r10d
	addl	%ebx, %r10d
	addl	-32776(%rax,%rcx,4), %edx
	addl	32768(%rsi,%rcx,4), %edx
	addl	%r10d, %edx
	movl	%edx, 32768(%rsi,%rcx,4)
	addq	$32768, %rax                    # imm = 0x8000
	addq	$32756, %rsi                    # imm = 0x7FF4
	addq	$8192, %r9                      # imm = 0x2000
	cmpq	$8189, %r8                      # imm = 0x1FFD
	jne	.LBB0_1
# %bb.4:
	popq	%rbx
	.cfi_def_cfa_offset 8
	vzeroupper
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
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_convolution_serial.cpp
	.ident	"clang version 12.0.0"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _GLOBAL__sub_I_convolution_serial.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle

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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	leaq	65544(%rdi), %rax
	xorl	%r8d, %r8d
	vpbroadcastd	.LCPI0_0(%rip), %ymm0   # ymm0 = [3,3,3,3,3,3,3,3]
	movq	%rsi, %rdx
	.p2align	4, 0x90
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	imulq	$8189, %r8, %r9                 # imm = 0x1FFD
	movq	%r8, %r15
	shlq	$13, %r15
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovdqu	(%rdx,%rbx,4), %ymm1
	vpaddd	-65544(%rax,%rbx,4), %ymm1, %ymm1
	vmovdqu	-65540(%rax,%rbx,4), %ymm2
	vpaddd	%ymm2, %ymm2, %ymm2
	vpmulld	-65536(%rax,%rbx,4), %ymm0, %ymm3
	vpmulld	-8(%rax,%rbx,4), %ymm0, %ymm4
	vpaddd	%ymm2, %ymm1, %ymm1
	vpaddd	%ymm3, %ymm1, %ymm1
	vmovdqu	-4(%rax,%rbx,4), %ymm2
	vpaddd	%ymm2, %ymm2, %ymm2
	vpaddd	%ymm2, %ymm4, %ymm2
	vpaddd	%ymm2, %ymm1, %ymm1
	vpaddd	(%rax,%rbx,4), %ymm1, %ymm1
	vmovdqu	%ymm1, (%rdx,%rbx,4)
	addq	$8, %rbx
	cmpq	$8184, %rbx                     # imm = 0x1FF8
	jne	.LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	%r15, %r10
	shlq	$2, %r10
	movq	%r10, %rbx
	orq	$32736, %rbx                    # imm = 0x7FE0
	movl	32736(%rsi,%r9,4), %ecx
	movl	32740(%rsi,%r9,4), %r14d
	addl	(%rdi,%rbx), %ecx
	movq	%r10, %r12
	orq	$32740, %r12                    # imm = 0x7FE4
	movl	(%rdi,%r12), %ebx
	leal	(%rcx,%rbx,2), %ecx
	movq	%r10, %r11
	orq	$32744, %r11                    # imm = 0x7FE8
	movl	(%rdi,%r11), %ebx
	leal	(%rbx,%rbx,2), %ebx
	addl	%ecx, %ebx
	movl	98272(%rdi,%r15,4), %ecx
	movl	98276(%rdi,%r15,4), %r13d
	leal	(%rcx,%rcx,2), %ecx
	addl	%ebx, %ecx
	leal	(%rcx,%r13,2), %ecx
	addl	98280(%rdi,%r15,4), %ecx
	addl	(%rdi,%r12), %r14d
	movl	%ecx, 32736(%rsi,%r9,4)
	movl	4(%rdi,%r12), %ecx
	leal	(%r14,%rcx,2), %ebp
	movq	%r10, %rbx
	orq	$32748, %rbx                    # imm = 0x7FEC
	movl	(%rdi,%rbx), %ecx
	leal	(%rcx,%rcx,2), %ecx
	addl	%ebp, %ecx
	movl	98276(%rdi,%r15,4), %ebp
	movl	98280(%rdi,%r15,4), %r14d
	leal	(%rbp,%rbp,2), %ebp
	addl	%ecx, %ebp
	leal	(%rbp,%r14,2), %ecx
	addl	98284(%rdi,%r15,4), %ecx
	movl	%ecx, 32740(%rsi,%r9,4)
	movl	32744(%rsi,%r9,4), %ecx
	addl	(%rdi,%r11), %ecx
	movl	(%rdi,%rbx), %ebp
	leal	(%rcx,%rbp,2), %ecx
	movl	8(%rdi,%r11), %ebp
	leal	(%rbp,%rbp,2), %ebp
	addl	%ecx, %ebp
	movl	98280(%rdi,%r15,4), %ecx
	movl	98284(%rdi,%r15,4), %r11d
	leal	(%rcx,%rcx,2), %ecx
	addl	%ebp, %ecx
	leal	(%rcx,%r11,2), %ecx
	addl	98288(%rdi,%r15,4), %ecx
	movl	%ecx, 32744(%rsi,%r9,4)
	movl	32748(%rsi,%r9,4), %ecx
	addl	(%rdi,%rbx), %ecx
	movl	4(%rdi,%rbx), %ebp
	movl	8(%rdi,%rbx), %ebx
	leal	(%rcx,%rbp,2), %ecx
	leal	(%rbx,%rbx,2), %ebp
	addl	%ecx, %ebp
	movl	98284(%rdi,%r15,4), %ecx
	movl	98288(%rdi,%r15,4), %ebx
	leal	(%rcx,%rcx,2), %ecx
	addl	%ebp, %ecx
	leal	(%rcx,%rbx,2), %ecx
	addl	98292(%rdi,%r15,4), %ecx
	movl	%ecx, 32748(%rsi,%r9,4)
	movl	32752(%rsi,%r9,4), %ecx
	movq	%r10, %rbp
	orq	$32752, %rbp                    # imm = 0x7FF0
	addl	(%rdi,%rbp), %ecx
	movq	%r10, %rbp
	orq	$32756, %rbp                    # imm = 0x7FF4
	movl	(%rdi,%rbp), %ebp
	leal	(%rcx,%rbp,2), %ecx
	orq	$32760, %r10                    # imm = 0x7FF8
	movl	(%rdi,%r10), %ebp
	leal	(%rbp,%rbp,2), %ebp
	addl	%ecx, %ebp
	movl	98288(%rdi,%r15,4), %ecx
	movl	98292(%rdi,%r15,4), %ebx
	leal	(%rcx,%rcx,2), %ecx
	addl	%ebp, %ecx
	leal	(%rcx,%rbx,2), %ecx
	addl	98296(%rdi,%r15,4), %ecx
	movl	%ecx, 32752(%rsi,%r9,4)
	incq	%r8
	addq	$32756, %rdx                    # imm = 0x7FF4
	addq	$32768, %rax                    # imm = 0x8000
	cmpq	$8189, %r8                      # imm = 0x1FFD
	jne	.LBB0_1
# %bb.4:
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

	.text
	.file	"convolution_serial.cpp"
	.globl	_Z11BM_convolvePiS_iiS_         # -- Begin function _Z11BM_convolvePiS_iiS_
	.p2align	4, 0x90
	.type	_Z11BM_convolvePiS_iiS_,@function
_Z11BM_convolvePiS_iiS_:                # @_Z11BM_convolvePiS_iiS_
	.cfi_startproc
# %bb.0:
	addq	$65544, %rdi                    # imm = 0x10008
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi,%rcx,4), %edx
	addl	-65544(%rdi,%rcx,4), %edx
	movl	-65540(%rdi,%rcx,4), %eax
	movl	-65536(%rdi,%rcx,4), %r9d
	leal	(%rdx,%rax,2), %eax
	leal	(%r9,%r9,2), %edx
	addl	%eax, %edx
	movl	-8(%rdi,%rcx,4), %eax
	leal	(%rax,%rax,2), %eax
	addl	%edx, %eax
	movl	-4(%rdi,%rcx,4), %edx
	leal	(%rax,%rdx,2), %eax
	addl	(%rdi,%rcx,4), %eax
	movl	%eax, (%rsi,%rcx,4)
	incq	%rcx
	cmpq	$8189, %rcx                     # imm = 0x1FFD
	jne	.LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	incq	%r8
	addq	$32768, %rdi                    # imm = 0x8000
	addq	$32756, %rsi                    # imm = 0x7FF4
	cmpq	$8189, %r8                      # imm = 0x1FFD
	jne	.LBB0_1
# %bb.4:
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

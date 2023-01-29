	.text
	.file	"mandelbrot_serial.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _Z17mandelbrot_serialffffiiiPi
.LCPI0_0:
	.long	0x3b800000                      # float 0.00390625
.LCPI0_1:
	.long	0xbf800000                      # float -1
.LCPI0_2:
	.long	0xc0000000                      # float -2
.LCPI0_3:
	.long	0x40800000                      # float 4
	.text
	.globl	_Z17mandelbrot_serialffffiiiPi
	.p2align	4, 0x90
	.type	_Z17mandelbrot_serialffffiiiPi,@function
_Z17mandelbrot_serialffffiiiPi:         # @_Z17mandelbrot_serialffffiiiPi
	.cfi_startproc
# %bb.0:
	xorl	%r8d, %r8d
	vmovss	.LCPI0_0(%rip), %xmm10          # xmm10 = mem[0],zero,zero,zero
	vmovss	.LCPI0_1(%rip), %xmm8           # xmm8 = mem[0],zero,zero,zero
	vmovss	.LCPI0_2(%rip), %xmm9           # xmm9 = mem[0],zero,zero,zero
	vmovss	.LCPI0_3(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	incq	%r8
	cmpq	$512, %r8                       # imm = 0x200
	je	.LBB0_7
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_3 Depth 3
	vcvtsi2ss	%r8d, %xmm11, %xmm4
	vfmadd213ss	%xmm8, %xmm10, %xmm4    # xmm4 = (xmm10 * xmm4) + xmm8
	movq	%r8, %rax
	shlq	$8, %rax
	leaq	(%rax,%rax,2), %rdx
	xorl	%esi, %esi
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=2
	incl	%eax
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=2
	movl	%eax, (%rcx,%rdi,4)
	incq	%rsi
	cmpq	$768, %rsi                      # imm = 0x300
	je	.LBB0_6
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
	vcvtsi2ss	%esi, %xmm11, %xmm5
	vfmadd213ss	%xmm9, %xmm10, %xmm5    # xmm5 = (xmm10 * xmm5) + xmm9
	leaq	(%rsi,%rdx), %rdi
	xorl	%eax, %eax
	vmovaps	%xmm4, %xmm6
	vmovaps	%xmm5, %xmm7
	.p2align	4, 0x90
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmulss	%xmm7, %xmm7, %xmm1
	vmulss	%xmm6, %xmm6, %xmm2
	vaddss	%xmm1, %xmm2, %xmm0
	vucomiss	%xmm3, %xmm0
	ja	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=3
	vaddss	%xmm7, %xmm7, %xmm0
	vaddss	%xmm5, %xmm1, %xmm1
	vsubss	%xmm2, %xmm1, %xmm7
	vfmadd213ss	%xmm4, %xmm0, %xmm6     # xmm6 = (xmm0 * xmm6) + xmm4
	vmulss	%xmm7, %xmm7, %xmm1
	vmulss	%xmm6, %xmm6, %xmm2
	vaddss	%xmm1, %xmm2, %xmm0
	vucomiss	%xmm3, %xmm0
	ja	.LBB0_5
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=3
	vaddss	%xmm7, %xmm7, %xmm0
	vaddss	%xmm5, %xmm1, %xmm1
	vsubss	%xmm2, %xmm1, %xmm7
	vfmadd213ss	%xmm4, %xmm0, %xmm6     # xmm6 = (xmm0 * xmm6) + xmm4
	vmulss	%xmm7, %xmm7, %xmm1
	vmulss	%xmm6, %xmm6, %xmm2
	vaddss	%xmm1, %xmm2, %xmm0
	vucomiss	%xmm3, %xmm0
	ja	.LBB0_9
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=3
	vaddss	%xmm7, %xmm7, %xmm0
	vaddss	%xmm5, %xmm1, %xmm1
	vsubss	%xmm2, %xmm1, %xmm7
	vfmadd213ss	%xmm4, %xmm0, %xmm6     # xmm6 = (xmm0 * xmm6) + xmm4
	vmulss	%xmm7, %xmm7, %xmm1
	vmulss	%xmm6, %xmm6, %xmm2
	vaddss	%xmm1, %xmm2, %xmm0
	vucomiss	%xmm3, %xmm0
	ja	.LBB0_8
# %bb.13:                               #   in Loop: Header=BB0_3 Depth=3
	vaddss	%xmm7, %xmm7, %xmm0
	vaddss	%xmm5, %xmm1, %xmm1
	vsubss	%xmm2, %xmm1, %xmm7
	vfmadd213ss	%xmm4, %xmm0, %xmm6     # xmm6 = (xmm0 * xmm6) + xmm4
	addl	$4, %eax
	cmpl	$256, %eax                      # imm = 0x100
	jne	.LBB0_3
# %bb.14:                               #   in Loop: Header=BB0_2 Depth=2
	movl	$256, %eax                      # imm = 0x100
	jmp	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=2
	addl	$2, %eax
	jmp	.LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=2
	addl	$3, %eax
	jmp	.LBB0_10
.LBB0_7:
	retq
.Lfunc_end0:
	.size	_Z17mandelbrot_serialffffiiiPi, .Lfunc_end0-_Z17mandelbrot_serialffffiiiPi
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_mandelbrot_serial.cpp
	.type	_GLOBAL__sub_I_mandelbrot_serial.cpp,@function
_GLOBAL__sub_I_mandelbrot_serial.cpp:   # @_GLOBAL__sub_I_mandelbrot_serial.cpp
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
	.size	_GLOBAL__sub_I_mandelbrot_serial.cpp, .Lfunc_end1-_GLOBAL__sub_I_mandelbrot_serial.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_mandelbrot_serial.cpp
	.ident	"clang version 12.0.0"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _GLOBAL__sub_I_mandelbrot_serial.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle

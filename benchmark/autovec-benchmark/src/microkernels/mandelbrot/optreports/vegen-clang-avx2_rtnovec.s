	.text
	.file	"mandelbrot_serial.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _Z17mandelbrot_serialffffiiiPi
.LCPI0_0:
	.long	0x3f800000                      # float 1
.LCPI0_1:
	.long	0x40800000                      # float 4
	.text
	.globl	_Z17mandelbrot_serialffffiiiPi
	.p2align	4, 0x90
	.type	_Z17mandelbrot_serialffffiiiPi,@function
_Z17mandelbrot_serialffffiiiPi:         # @_Z17mandelbrot_serialffffiiiPi
	.cfi_startproc
# %bb.0:
	vmovss	%xmm0, x0(%rip)
	vmovss	%xmm1, yy0(%rip)
	vmovss	%xmm2, x1(%rip)
	vmovss	%xmm3, yy1(%rip)
	movl	%edi, width(%rip)
	movl	%esi, height(%rip)
	movl	%edx, maxIterations(%rip)
	testl	%esi, %esi
	jle	.LBB0_13
# %bb.1:
	testl	%edi, %edi
	jle	.LBB0_13
# %bb.2:
	vsubss	%xmm0, %xmm2, %xmm10
	vcvtsi2ss	%edi, %xmm4, %xmm2
	vcvtsi2ss	%esi, %xmm4, %xmm4
	vsubss	%xmm1, %xmm3, %xmm8
	vmovss	.LCPI0_0(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	vdivss	%xmm4, %xmm3, %xmm9
	vdivss	%xmm2, %xmm3, %xmm11
	xorl	%r8d, %r8d
	vmovss	.LCPI0_1(%rip), %xmm12          # xmm12 = mem[0],zero,zero,zero
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	movl	height(%rip), %esi
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	incl	%r8d
	cmpl	%esi, %r8d
	jge	.LBB0_13
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_7 Depth 3
	testl	%edi, %edi
	jle	.LBB0_12
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	vcvtsi2ss	%r8d, %xmm14, %xmm2
	vmulss	%xmm2, %xmm8, %xmm13
	vfmadd213ss	%xmm1, %xmm9, %xmm13    # xmm13 = (xmm9 * xmm13) + xmm1
	xorl	%edx, %edx
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=2
	movslq	%edi, %rax
	movl	%esi, (%rcx,%rax,4)
	incl	%edx
	movl	width(%rip), %edi
	cmpl	%edi, %edx
	jge	.LBB0_11
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_7 Depth 3
	imull	%r8d, %edi
	addl	%edx, %edi
	movl	maxIterations(%rip), %eax
	movl	$0, %esi
	testl	%eax, %eax
	jle	.LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	vcvtsi2ss	%edx, %xmm14, %xmm2
	vmulss	%xmm2, %xmm10, %xmm2
	vfmadd213ss	%xmm0, %xmm11, %xmm2    # xmm2 = (xmm11 * xmm2) + xmm0
	xorl	%esi, %esi
	vmovaps	%xmm13, %xmm7
	vmovaps	%xmm2, %xmm3
	.p2align	4, 0x90
.LBB0_7:                                #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmulss	%xmm3, %xmm3, %xmm5
	vmulss	%xmm7, %xmm7, %xmm6
	vaddss	%xmm5, %xmm6, %xmm4
	vucomiss	%xmm12, %xmm4
	ja	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=3
	vaddss	%xmm3, %xmm3, %xmm4
	vaddss	%xmm2, %xmm5, %xmm3
	vsubss	%xmm6, %xmm3, %xmm3
	vfmadd213ss	%xmm13, %xmm4, %xmm7    # xmm7 = (xmm4 * xmm7) + xmm13
	incl	%esi
	cmpl	%esi, %eax
	jne	.LBB0_7
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=2
	movl	%eax, %esi
	jmp	.LBB0_10
.LBB0_13:
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
	.type	x0,@object                      # @x0
	.bss
	.globl	x0
	.p2align	2
x0:
	.long	0x00000000                      # float 0
	.size	x0, 4

	.type	yy0,@object                     # @yy0
	.globl	yy0
	.p2align	2
yy0:
	.long	0x00000000                      # float 0
	.size	yy0, 4

	.type	x1,@object                      # @x1
	.globl	x1
	.p2align	2
x1:
	.long	0x00000000                      # float 0
	.size	x1, 4

	.type	yy1,@object                     # @yy1
	.globl	yy1
	.p2align	2
yy1:
	.long	0x00000000                      # float 0
	.size	yy1, 4

	.type	width,@object                   # @width
	.globl	width
	.p2align	2
width:
	.long	0                               # 0x0
	.size	width, 4

	.type	height,@object                  # @height
	.globl	height
	.p2align	2
height:
	.long	0                               # 0x0
	.size	height, 4

	.type	maxIterations,@object           # @maxIterations
	.globl	maxIterations
	.p2align	2
maxIterations:
	.long	0                               # 0x0
	.size	maxIterations, 4

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_mandelbrot_serial.cpp
	.ident	"clang version 12.0.0"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _GLOBAL__sub_I_mandelbrot_serial.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle

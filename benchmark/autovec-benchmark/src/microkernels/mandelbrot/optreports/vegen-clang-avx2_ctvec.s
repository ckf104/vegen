	.text
	.file	"mandelbrot_serial.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _Z17mandelbrot_serialffffiiiPi
.LCPI0_0:
	.long	0x3b800000                      # float 0.00390625
.LCPI0_1:
	.long	0xbf800000                      # float -1
.LCPI0_3:
	.long	0xc0000000                      # float -2
.LCPI0_5:
	.long	0x40800000                      # float 4
.LCPI0_6:
	.long	256                             # 0x100
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_2:
	.long	4                               # 0x4
	.long	5                               # 0x5
	.long	6                               # 0x6
	.long	7                               # 0x7
.LCPI0_4:
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.short	1                               # 0x1
	.text
	.globl	_Z17mandelbrot_serialffffiiiPi
	.p2align	4, 0x90
	.type	_Z17mandelbrot_serialffffiiiPi,@function
_Z17mandelbrot_serialffffiiiPi:         # @_Z17mandelbrot_serialffffiiiPi
	.cfi_startproc
# %bb.0:
	xorl	%r8d, %r8d
	vbroadcastss	.LCPI0_0(%rip), %ymm0   # ymm0 = [3.90625E-3,3.90625E-3,3.90625E-3,3.90625E-3,3.90625E-3,3.90625E-3,3.90625E-3,3.90625E-3]
	vmovups	%ymm0, -56(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_3(%rip), %ymm0   # ymm0 = [-2.0E+0,-2.0E+0,-2.0E+0,-2.0E+0,-2.0E+0,-2.0E+0,-2.0E+0,-2.0E+0]
	vmovups	%ymm0, -88(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_5(%rip), %ymm6   # ymm6 = [4.0E+0,4.0E+0,4.0E+0,4.0E+0,4.0E+0,4.0E+0,4.0E+0,4.0E+0]
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	vpbroadcastd	.LCPI0_6(%rip), %ymm8   # ymm8 = [256,256,256,256,256,256,256,256]
	.p2align	4, 0x90
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_3 Depth 3
	vxorps	%xmm12, %xmm12, %xmm12
	vcvtsi2ss	%r8d, %xmm12, %xmm0
	vmovss	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vfmadd132ss	.LCPI0_0(%rip), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	movq	%r8, %rdx
	shlq	$8, %rdx
	leaq	(%rdx,%rdx,2), %r9
	incq	%r8
	vbroadcastss	%xmm0, %ymm12
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
	movl	%esi, %edi
	orl	$1, %edi
	movl	%esi, %eax
	orl	$2, %eax
	vmovd	%esi, %xmm0
	movl	%esi, %edx
	vpinsrd	$1, %edi, %xmm0, %xmm5
	orl	$3, %edx
	vpinsrd	$2, %eax, %xmm5, %xmm5
	vpinsrd	$3, %edx, %xmm5, %xmm5
	vpbroadcastd	%xmm0, %xmm0
	vpor	.LCPI0_2(%rip), %xmm0, %xmm0
	vinserti128	$1, %xmm0, %ymm5, %ymm0
	vcvtdq2ps	%ymm0, %ymm10
	vmovups	-88(%rsp), %ymm0                # 32-byte Reload
	vfmadd132ps	-56(%rsp), %ymm0, %ymm10 # 32-byte Folded Reload
                                        # ymm10 = (ymm10 * mem) + ymm0
	leaq	(%rsi,%r9), %rdi
	vxorps	%xmm15, %xmm15, %xmm15
                                        # implicit-def: $xmm0
                                        # implicit-def: $ymm11
	vmovaps	%ymm10, %ymm13
	vmovaps	%ymm12, %ymm9
	vmovdqa	.LCPI0_4(%rip), %xmm5           # xmm5 = [1,1,1,1,1,1,1,1]
	.p2align	4, 0x90
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmulps	%ymm13, %ymm13, %ymm14
	vmulps	%ymm9, %ymm9, %ymm2
	vaddps	%ymm2, %ymm14, %ymm1
	vcmpltps	%ymm1, %ymm6, %ymm3
	vextractf128	$1, %ymm3, %xmm4
	vpackssdw	%xmm4, %xmm3, %xmm3
	vcmpleps	%ymm6, %ymm1, %ymm1
	vextractf128	$1, %ymm1, %xmm4
	vpackssdw	%xmm4, %xmm1, %xmm1
	vpsllw	$15, %xmm5, %xmm4
	vpsraw	$15, %xmm4, %xmm4
	vpblendvb	%xmm4, %xmm3, %xmm0, %xmm0
	vpmovzxwd	%xmm5, %ymm3            # ymm3 = xmm5[0],zero,xmm5[1],zero,xmm5[2],zero,xmm5[3],zero,xmm5[4],zero,xmm5[5],zero,xmm5[6],zero,xmm5[7],zero
	vpslld	$31, %ymm3, %ymm3
	vaddps	%ymm13, %ymm13, %ymm4
	vaddps	%ymm10, %ymm14, %ymm13
	vsubps	%ymm2, %ymm13, %ymm13
	vfmadd213ps	%ymm12, %ymm9, %ymm4    # ymm4 = (ymm9 * ymm4) + ymm12
	vblendvps	%ymm3, %ymm15, %ymm11, %ymm11
	vpsubd	%ymm7, %ymm15, %ymm15
	vpcmpeqd	%ymm8, %ymm15, %ymm2
	vpxor	%ymm7, %ymm2, %ymm2
	vextracti128	$1, %ymm2, %xmm3
	vpackssdw	%xmm3, %xmm2, %xmm2
	vpand	%xmm2, %xmm5, %xmm2
	vpand	%xmm2, %xmm1, %xmm5
	vpsllw	$15, %xmm5, %xmm1
	vpmovmskb	%xmm1, %eax
	vmovaps	%ymm4, %ymm9
	testl	$43690, %eax                    # imm = 0xAAAA
	jne	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=2
	vpmovzxwd	%xmm0, %ymm0            # ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vpslld	$31, %ymm0, %ymm0
	vblendvps	%ymm0, %ymm11, %ymm8, %ymm0
	vmovups	%ymm0, (%rcx,%rdi,4)
	addq	$8, %rsi
	cmpq	$768, %rsi                      # imm = 0x300
	jne	.LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	cmpq	$512, %r8                       # imm = 0x200
	jne	.LBB0_1
# %bb.6:
	vzeroupper
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

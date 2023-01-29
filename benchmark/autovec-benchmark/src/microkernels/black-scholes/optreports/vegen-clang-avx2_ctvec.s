	.text
	.file	"black-scholes_serial.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _Z20black_scholes_serialPfS_S_S_S_S_i
.LCPI0_0:
	.long	0xc0400000                      # float -3
.LCPI0_1:
	.long	0xbf000000                      # float -0.5
.LCPI0_2:
	.long	0x7fffffff                      # float NaN
.LCPI0_3:
	.long	0x3e6d3389                      # float 0.231641904
.LCPI0_4:
	.long	0x3f800000                      # float 1
.LCPI0_5:
	.long	0x3ea385fa                      # float 0.319381535
.LCPI0_6:
	.long	0x3fe40778                      # float 1.78147793
.LCPI0_7:
	.long	0x3faa466f                      # float 1.33027446
.LCPI0_8:
	.long	0xbfe91eea                      # float -1.82125592
.LCPI0_9:
	.long	0xbeb68f87                      # float -0.356563777
.LCPI0_10:
	.long	0x3ecc422a                      # float 0.398942292
.LCPI0_11:
	.long	0x80000000                      # float -0
.LCPI0_12:
	.long	0x00800000                      # float 1.17549435E-38
.LCPI0_13:
	.long	0x3f000000                      # float 0.5
.LCPI0_15:
	.long	0x00000000                      # float 0
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5
.LCPI0_14:
	.zero	32
	.text
	.globl	_Z20black_scholes_serialPfS_S_S_S_S_i
	.p2align	4, 0x90
	.type	_Z20black_scholes_serialPfS_S_S_S_S_i,@function
_Z20black_scholes_serialPfS_S_S_S_S_i:  # @_Z20black_scholes_serialPfS_S_S_S_S_i
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
	subq	$776, %rsp                      # imm = 0x308
	.cfi_def_cfa_offset 832
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, 216(%rsp)                 # 8-byte Spill
	movl	832(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB0_8
# %bb.1:
	movq	%r8, %rbp
	movq	%rcx, %r13
	movq	%rsi, %r15
	movl	%eax, %edi
	leaq	-1(%rdi), %rax
	movq	%rdi, 208(%rsp)                 # 8-byte Spill
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	andl	$7, %edi
	movq	%rdi, 344(%rsp)                 # 8-byte Spill
	cmpq	$7, %rax
	jae	.LBB0_3
# %bb.2:
	xorl	%r14d, %r14d
	jmp	.LBB0_5
.LBB0_3:
	movq	208(%rsp), %rax                 # 8-byte Reload
	andl	$-8, %eax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	xorl	%r14d, %r14d
	vbroadcastss	.LCPI0_0(%rip), %ymm0   # ymm0 = [-3.0E+0,-3.0E+0,-3.0E+0,-3.0E+0,-3.0E+0,-3.0E+0,-3.0E+0,-3.0E+0]
	vmovups	%ymm0, 672(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_1(%rip), %ymm0   # ymm0 = [-5.0E-1,-5.0E-1,-5.0E-1,-5.0E-1,-5.0E-1,-5.0E-1,-5.0E-1,-5.0E-1]
	vmovups	%ymm0, 256(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_2(%rip), %ymm0   # ymm0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]
	vmovups	%ymm0, 512(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_3(%rip), %ymm0   # ymm0 = [2.31641904E-1,2.31641904E-1,2.31641904E-1,2.31641904E-1,2.31641904E-1,2.31641904E-1,2.31641904E-1,2.31641904E-1]
	vmovups	%ymm0, 480(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_4(%rip), %ymm0   # ymm0 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	vmovups	%ymm0, 288(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_5(%rip), %ymm0   # ymm0 = [3.19381535E-1,3.19381535E-1,3.19381535E-1,3.19381535E-1,3.19381535E-1,3.19381535E-1,3.19381535E-1,3.19381535E-1]
	vmovups	%ymm0, 448(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_6(%rip), %ymm0   # ymm0 = [1.78147793E+0,1.78147793E+0,1.78147793E+0,1.78147793E+0,1.78147793E+0,1.78147793E+0,1.78147793E+0,1.78147793E+0]
	vmovups	%ymm0, 416(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_7(%rip), %ymm0   # ymm0 = [1.33027446E+0,1.33027446E+0,1.33027446E+0,1.33027446E+0,1.33027446E+0,1.33027446E+0,1.33027446E+0,1.33027446E+0]
	vmovups	%ymm0, 384(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_8(%rip), %ymm0   # ymm0 = [-1.82125592E+0,-1.82125592E+0,-1.82125592E+0,-1.82125592E+0,-1.82125592E+0,-1.82125592E+0,-1.82125592E+0,-1.82125592E+0]
	vmovups	%ymm0, 608(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_9(%rip), %ymm0   # ymm0 = [-3.56563777E-1,-3.56563777E-1,-3.56563777E-1,-3.56563777E-1,-3.56563777E-1,-3.56563777E-1,-3.56563777E-1,-3.56563777E-1]
	vmovups	%ymm0, 576(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_10(%rip), %ymm0  # ymm0 = [3.98942292E-1,3.98942292E-1,3.98942292E-1,3.98942292E-1,3.98942292E-1,3.98942292E-1,3.98942292E-1,3.98942292E-1]
	vmovups	%ymm0, 544(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_11(%rip), %ymm0  # ymm0 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vmovups	%ymm0, 640(%rsp)                # 32-byte Spill
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	216(%rsp), %rax                 # 8-byte Reload
	vmovups	(%rax,%r14,4), %ymm2
	vmovups	%ymm2, 736(%rsp)                # 32-byte Spill
	vmovups	(%r15,%r14,4), %ymm3
	vmovups	%ymm3, 704(%rsp)                # 32-byte Spill
	vrcpps	%ymm3, %ymm0
	vmulps	%ymm0, %ymm2, %ymm1
	vmovaps	%ymm1, %ymm4
	vfmsub213ps	%ymm2, %ymm3, %ymm4     # ymm4 = (ymm3 * ymm4) - ymm2
	vfnmadd213ps	%ymm1, %ymm0, %ymm4     # ymm4 = -(ymm0 * ymm4) + ymm1
	vmovups	%ymm4, 32(%rsp)                 # 32-byte Spill
	vmovups	(%rdx,%r14,4), %ymm1
	vmovups	%ymm1, 224(%rsp)                # 32-byte Spill
	vrsqrtps	%ymm1, %ymm0
	vmulps	%ymm0, %ymm1, %ymm1
	vfmadd213ps	672(%rsp), %ymm0, %ymm1 # 32-byte Folded Reload
                                        # ymm1 = (ymm0 * ymm1) + mem
	vmulps	256(%rsp), %ymm0, %ymm0         # 32-byte Folded Reload
	vmulps	%ymm1, %ymm0, %ymm3
	vmovups	(%r13,%r14,4), %ymm0
	vmovups	%ymm0, 96(%rsp)                 # 32-byte Spill
	vmovups	(%rbp,%r14,4), %ymm2
	vmovups	%ymm2, 128(%rsp)                # 32-byte Spill
	vrcpps	%ymm2, %ymm0
	vmulps	%ymm0, %ymm3, %ymm1
	vfmsub231ps	%ymm1, %ymm2, %ymm3     # ymm3 = (ymm2 * ymm1) - ymm3
	vfnmadd213ps	%ymm1, %ymm0, %ymm3     # ymm3 = -(ymm0 * ymm3) + ymm1
	vmovups	%ymm3, 352(%rsp)                # 32-byte Spill
	vextractf128	$1, %ymm4, %xmm0
	vmovaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	movq	%rdx, %r12
	movq	%r9, %rbx
	vzeroupper
	callq	logf@PLT
	vmovaps	%xmm0, 160(%rsp)                # 16-byte Spill
	vmovshdup	16(%rsp), %xmm0         # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,3,3]
	callq	logf@PLT
	vmovaps	160(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$16, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0],xmm0[0],xmm1[2,3]
	vmovaps	%xmm0, 160(%rsp)                # 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0     # 16-byte Folded Reload
                                        # xmm0 = mem[1,0]
	callq	logf@PLT
	vmovaps	160(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$32, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1],xmm0[0],xmm1[3]
	vmovaps	%xmm0, 160(%rsp)                # 16-byte Spill
	vpermilps	$255, 16(%rsp), %xmm0   # 16-byte Folded Reload
                                        # xmm0 = mem[3,3,3,3]
	callq	logf@PLT
	vmovaps	160(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$48, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1,2],xmm0[0]
	vmovaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	vmovups	32(%rsp), %ymm0                 # 32-byte Reload
                                        # kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	logf@PLT
	vmovaps	%xmm0, 160(%rsp)                # 16-byte Spill
	vmovshdup	32(%rsp), %xmm0         # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,3,3]
	callq	logf@PLT
	vmovaps	160(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$16, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0],xmm0[0],xmm1[2,3]
	vmovaps	%xmm0, 160(%rsp)                # 16-byte Spill
	vpermilpd	$1, 32(%rsp), %xmm0     # 16-byte Folded Reload
                                        # xmm0 = mem[1,0]
	callq	logf@PLT
	vmovaps	160(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$32, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1],xmm0[0],xmm1[3]
	vmovaps	%xmm0, 160(%rsp)                # 16-byte Spill
	vpermilps	$255, 32(%rsp), %xmm0   # 16-byte Folded Reload
                                        # xmm0 = mem[3,3,3,3]
	callq	logf@PLT
	vmovaps	160(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$48, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1,2],xmm0[0]
	vinsertf128	$1, 16(%rsp), %ymm0, %ymm0 # 16-byte Folded Reload
	vmovups	128(%rsp), %ymm4                # 32-byte Reload
	vmulps	%ymm4, %ymm4, %ymm1
	vmovups	256(%rsp), %ymm3                # 32-byte Reload
	vfmsub213ps	96(%rsp), %ymm3, %ymm1  # 32-byte Folded Reload
                                        # ymm1 = (ymm3 * ymm1) - mem
	vmovups	224(%rsp), %ymm2                # 32-byte Reload
	vfnmadd213ps	%ymm0, %ymm2, %ymm1     # ymm1 = -(ymm2 * ymm1) + ymm0
	vmulps	352(%rsp), %ymm1, %ymm1         # 32-byte Folded Reload
	vsqrtps	%ymm2, %ymm0
	vfnmadd213ps	%ymm1, %ymm4, %ymm0     # ymm0 = -(ymm4 * ymm0) + ymm1
	vmovups	%ymm0, 352(%rsp)                # 32-byte Spill
	vandps	512(%rsp), %ymm1, %ymm0         # 32-byte Folded Reload
	vmovaps	%ymm1, %ymm4
	vmovups	%ymm1, 160(%rsp)                # 32-byte Spill
	vmovups	288(%rsp), %ymm2                # 32-byte Reload
	vfmadd132ps	480(%rsp), %ymm2, %ymm0 # 32-byte Folded Reload
                                        # ymm0 = (ymm0 * mem) + ymm2
	vrcpps	%ymm0, %ymm1
	vfmsub213ps	%ymm2, %ymm1, %ymm0     # ymm0 = (ymm1 * ymm0) - ymm2
	vfnmadd132ps	%ymm1, %ymm1, %ymm0     # ymm0 = -(ymm0 * ymm1) + ymm1
	vmulps	%ymm0, %ymm0, %ymm1
	vmulps	%ymm0, %ymm1, %ymm2
	vmulps	448(%rsp), %ymm0, %ymm5         # 32-byte Folded Reload
	vmovups	608(%rsp), %ymm0                # 32-byte Reload
	vfmadd213ps	576(%rsp), %ymm1, %ymm0 # 32-byte Folded Reload
                                        # ymm0 = (ymm1 * ymm0) + mem
	vfmadd231ps	384(%rsp), %ymm2, %ymm0 # 32-byte Folded Reload
                                        # ymm0 = (ymm2 * mem) + ymm0
	vfmadd231ps	416(%rsp), %ymm2, %ymm5 # 32-byte Folded Reload
                                        # ymm5 = (ymm2 * mem) + ymm5
	vfmadd231ps	%ymm0, %ymm1, %ymm5     # ymm5 = (ymm1 * ymm0) + ymm5
	vmovups	%ymm5, 128(%rsp)                # 32-byte Spill
	vmulps	%ymm4, %ymm4, %ymm0
	vmulps	%ymm3, %ymm0, %ymm0
	vmovups	%ymm0, 32(%rsp)                 # 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	vzeroupper
	callq	expf@PLT
	vmovaps	%xmm0, 80(%rsp)                 # 16-byte Spill
	vmovshdup	16(%rsp), %xmm0         # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,3,3]
	callq	expf@PLT
	vmovaps	80(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$16, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0],xmm0[0],xmm1[2,3]
	vmovaps	%xmm0, 80(%rsp)                 # 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0     # 16-byte Folded Reload
                                        # xmm0 = mem[1,0]
	callq	expf@PLT
	vmovaps	80(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$32, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1],xmm0[0],xmm1[3]
	vmovaps	%xmm0, 80(%rsp)                 # 16-byte Spill
	vpermilps	$255, 16(%rsp), %xmm0   # 16-byte Folded Reload
                                        # xmm0 = mem[3,3,3,3]
	callq	expf@PLT
	vmovaps	80(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$48, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1,2],xmm0[0]
	vmovaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	vmovups	32(%rsp), %ymm0                 # 32-byte Reload
                                        # kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	expf@PLT
	vmovaps	%xmm0, 80(%rsp)                 # 16-byte Spill
	vmovshdup	32(%rsp), %xmm0         # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,3,3]
	callq	expf@PLT
	vmovaps	80(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$16, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0],xmm0[0],xmm1[2,3]
	vmovaps	%xmm0, 80(%rsp)                 # 16-byte Spill
	vpermilpd	$1, 32(%rsp), %xmm0     # 16-byte Folded Reload
                                        # xmm0 = mem[1,0]
	callq	expf@PLT
	vmovaps	80(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$32, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1],xmm0[0],xmm1[3]
	vmovaps	%xmm0, 80(%rsp)                 # 16-byte Spill
	vpermilps	$255, 32(%rsp), %xmm0   # 16-byte Folded Reload
                                        # xmm0 = mem[3,3,3,3]
	callq	expf@PLT
	vmovaps	80(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$48, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1,2],xmm0[0]
	vinsertf128	$1, 16(%rsp), %ymm0, %ymm0 # 16-byte Folded Reload
	vmulps	544(%rsp), %ymm0, %ymm0         # 32-byte Folded Reload
	vmulps	128(%rsp), %ymm0, %ymm0         # 32-byte Folded Reload
	vxorps	%xmm1, %xmm1, %xmm1
	vcmpltps	160(%rsp), %ymm1, %ymm1         # 32-byte Folded Reload
	vmovups	288(%rsp), %ymm2                # 32-byte Reload
	vsubps	%ymm0, %ymm2, %ymm2
	vblendvps	%ymm1, %ymm2, %ymm0, %ymm0
	vmovups	%ymm0, 160(%rsp)                # 32-byte Spill
	vmovups	224(%rsp), %ymm0                # 32-byte Reload
	vxorps	640(%rsp), %ymm0, %ymm0         # 32-byte Folded Reload
	vmulps	96(%rsp), %ymm0, %ymm0          # 32-byte Folded Reload
	vmovups	%ymm0, 32(%rsp)                 # 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	vzeroupper
	callq	expf@PLT
	vmovaps	%xmm0, 96(%rsp)                 # 16-byte Spill
	vmovshdup	16(%rsp), %xmm0         # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,3,3]
	callq	expf@PLT
	vmovaps	96(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$16, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0],xmm0[0],xmm1[2,3]
	vmovaps	%xmm0, 96(%rsp)                 # 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0     # 16-byte Folded Reload
                                        # xmm0 = mem[1,0]
	callq	expf@PLT
	vmovaps	96(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$32, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1],xmm0[0],xmm1[3]
	vmovaps	%xmm0, 96(%rsp)                 # 16-byte Spill
	vpermilps	$255, 16(%rsp), %xmm0   # 16-byte Folded Reload
                                        # xmm0 = mem[3,3,3,3]
	callq	expf@PLT
	vmovaps	96(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$48, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1,2],xmm0[0]
	vmovaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	vmovups	32(%rsp), %ymm0                 # 32-byte Reload
                                        # kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	expf@PLT
	vmovaps	%xmm0, 96(%rsp)                 # 16-byte Spill
	vmovshdup	32(%rsp), %xmm0         # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,3,3]
	callq	expf@PLT
	vmovaps	96(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$16, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0],xmm0[0],xmm1[2,3]
	vmovaps	%xmm0, 96(%rsp)                 # 16-byte Spill
	vpermilpd	$1, 32(%rsp), %xmm0     # 16-byte Folded Reload
                                        # xmm0 = mem[1,0]
	callq	expf@PLT
	vmovaps	96(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$32, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1],xmm0[0],xmm1[3]
	vmovaps	%xmm0, 96(%rsp)                 # 16-byte Spill
	vpermilps	$255, 32(%rsp), %xmm0   # 16-byte Folded Reload
                                        # xmm0 = mem[3,3,3,3]
	callq	expf@PLT
	vmovaps	96(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$48, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1,2],xmm0[0]
	vinsertf128	$1, 16(%rsp), %ymm0, %ymm0 # 16-byte Folded Reload
	vmovups	%ymm0, 96(%rsp)                 # 32-byte Spill
	vmovups	352(%rsp), %ymm3                # 32-byte Reload
	vandps	512(%rsp), %ymm3, %ymm0         # 32-byte Folded Reload
	vmovups	288(%rsp), %ymm2                # 32-byte Reload
	vfmadd132ps	480(%rsp), %ymm2, %ymm0 # 32-byte Folded Reload
                                        # ymm0 = (ymm0 * mem) + ymm2
	vrcpps	%ymm0, %ymm1
	vfmsub213ps	%ymm2, %ymm1, %ymm0     # ymm0 = (ymm1 * ymm0) - ymm2
	vfnmadd132ps	%ymm1, %ymm1, %ymm0     # ymm0 = -(ymm0 * ymm1) + ymm1
	vmulps	%ymm0, %ymm0, %ymm1
	vmulps	%ymm0, %ymm1, %ymm2
	vmulps	448(%rsp), %ymm0, %ymm4         # 32-byte Folded Reload
	vmovups	608(%rsp), %ymm0                # 32-byte Reload
	vfmadd213ps	576(%rsp), %ymm1, %ymm0 # 32-byte Folded Reload
                                        # ymm0 = (ymm1 * ymm0) + mem
	vfmadd231ps	384(%rsp), %ymm2, %ymm0 # 32-byte Folded Reload
                                        # ymm0 = (ymm2 * mem) + ymm0
	vfmadd231ps	416(%rsp), %ymm2, %ymm4 # 32-byte Folded Reload
                                        # ymm4 = (ymm2 * mem) + ymm4
	vfmadd231ps	%ymm0, %ymm1, %ymm4     # ymm4 = (ymm1 * ymm0) + ymm4
	vmovups	%ymm4, 224(%rsp)                # 32-byte Spill
	vmulps	%ymm3, %ymm3, %ymm0
	vmulps	256(%rsp), %ymm0, %ymm0         # 32-byte Folded Reload
	vmovups	%ymm0, 32(%rsp)                 # 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	vzeroupper
	callq	expf@PLT
	vmovaps	%xmm0, 128(%rsp)                # 16-byte Spill
	vmovshdup	16(%rsp), %xmm0         # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,3,3]
	callq	expf@PLT
	vmovaps	128(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$16, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0],xmm0[0],xmm1[2,3]
	vmovaps	%xmm0, 128(%rsp)                # 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0     # 16-byte Folded Reload
                                        # xmm0 = mem[1,0]
	callq	expf@PLT
	vmovaps	128(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$32, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1],xmm0[0],xmm1[3]
	vmovaps	%xmm0, 128(%rsp)                # 16-byte Spill
	vpermilps	$255, 16(%rsp), %xmm0   # 16-byte Folded Reload
                                        # xmm0 = mem[3,3,3,3]
	callq	expf@PLT
	vmovaps	128(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$48, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1,2],xmm0[0]
	vmovaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	vmovups	32(%rsp), %ymm0                 # 32-byte Reload
                                        # kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	expf@PLT
	vmovaps	%xmm0, 128(%rsp)                # 16-byte Spill
	vmovshdup	32(%rsp), %xmm0         # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,3,3]
	callq	expf@PLT
	vmovaps	128(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$16, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0],xmm0[0],xmm1[2,3]
	vmovaps	%xmm0, 128(%rsp)                # 16-byte Spill
	vpermilpd	$1, 32(%rsp), %xmm0     # 16-byte Folded Reload
                                        # xmm0 = mem[1,0]
	callq	expf@PLT
	vmovaps	128(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$32, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1],xmm0[0],xmm1[3]
	vmovaps	%xmm0, 128(%rsp)                # 16-byte Spill
	vpermilps	$255, 32(%rsp), %xmm0   # 16-byte Folded Reload
                                        # xmm0 = mem[3,3,3,3]
	callq	expf@PLT
	movq	%rbx, %r9
	movq	%r12, %rdx
	vmovaps	128(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$48, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1,2],xmm0[0]
	vinsertf128	$1, 16(%rsp), %ymm0, %ymm0 # 16-byte Folded Reload
	vmulps	544(%rsp), %ymm0, %ymm0         # 32-byte Folded Reload
	vmulps	224(%rsp), %ymm0, %ymm0         # 32-byte Folded Reload
	vxorps	%xmm1, %xmm1, %xmm1
	vcmpltps	352(%rsp), %ymm1, %ymm1         # 32-byte Folded Reload
	vmovups	288(%rsp), %ymm2                # 32-byte Reload
	vsubps	%ymm0, %ymm2, %ymm2
	vblendvps	%ymm1, %ymm2, %ymm0, %ymm0
	vmovups	96(%rsp), %ymm1                 # 32-byte Reload
	vmulps	704(%rsp), %ymm1, %ymm1         # 32-byte Folded Reload
	vmulps	%ymm0, %ymm1, %ymm0
	vmovups	160(%rsp), %ymm1                # 32-byte Reload
	vfmsub231ps	736(%rsp), %ymm1, %ymm0 # 32-byte Folded Reload
                                        # ymm0 = (ymm1 * mem) - ymm0
	vmovups	%ymm0, (%rbx,%r14,4)
	addq	$8, %r14
	cmpq	%r14, 208(%rsp)                 # 8-byte Folded Reload
	jne	.LBB0_4
.LBB0_5:
	movq	344(%rsp), %rax                 # 8-byte Reload
	testq	%rax, %rax
	je	.LBB0_8
# %bb.6:
	movq	%rax, %rbx
	leaq	(%r9,%r14,4), %rax
	movq	%rax, 448(%rsp)                 # 8-byte Spill
	leaq	(,%r14,4), %rax
	addq	%rbp, %rax
	movq	%rax, 416(%rsp)                 # 8-byte Spill
	leaq	(%r13,%r14,4), %r12
	leaq	(%rdx,%r14,4), %r13
	leaq	(%r15,%r14,4), %r15
	movq	216(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r14,4), %r14
	xorl	%ebp, %ebp
	vbroadcastss	.LCPI0_2(%rip), %xmm0   # xmm0 = [NaN,NaN,NaN,NaN]
	vmovaps	%xmm0, 288(%rsp)                # 16-byte Spill
	vbroadcastss	.LCPI0_11(%rip), %xmm0  # xmm0 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vmovaps	%xmm0, 384(%rsp)                # 16-byte Spill
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	vmovss	(%r14,%rbp,4), %xmm4            # xmm4 = mem[0],zero,zero,zero
	vmovss	%xmm4, 96(%rsp)                 # 4-byte Spill
	vmovss	(%r15,%rbp,4), %xmm5            # xmm5 = mem[0],zero,zero,zero
	vmovss	%xmm5, 352(%rsp)                # 4-byte Spill
	vmovss	(%r13,%rbp,4), %xmm6            # xmm6 = mem[0],zero,zero,zero
	vmovaps	%xmm6, 16(%rsp)                 # 16-byte Spill
	vrsqrtss	%xmm6, %xmm6, %xmm0
	vmulss	%xmm0, %xmm6, %xmm1
	vmovss	.LCPI0_1(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	vmulss	%xmm3, %xmm0, %xmm2
	vfmadd213ss	.LCPI0_0(%rip), %xmm1, %xmm0 # xmm0 = (xmm1 * xmm0) + mem
	vmulss	%xmm3, %xmm1, %xmm1
	vmulss	%xmm0, %xmm1, %xmm1
	vandps	288(%rsp), %xmm6, %xmm3         # 16-byte Folded Reload
	vcmpltss	.LCPI0_12(%rip), %xmm3, %xmm3
	vandnps	%xmm1, %xmm3, %xmm1
	vmovaps	%xmm1, 32(%rsp)                 # 16-byte Spill
	vmulss	%xmm0, %xmm2, %xmm0
	vmovss	%xmm0, 224(%rsp)                # 4-byte Spill
	vmovss	(%r12,%rbp,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 256(%rsp)                # 4-byte Spill
	movq	416(%rsp), %rax                 # 8-byte Reload
	vmovss	(%rax,%rbp,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 480(%rsp)                # 4-byte Spill
	vdivss	%xmm5, %xmm4, %xmm0
	vzeroupper
	callq	logf@PLT
	vmovss	480(%rsp), %xmm3                # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	vmulss	%xmm3, %xmm3, %xmm1
	vmovss	256(%rsp), %xmm2                # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	vfmadd132ss	.LCPI0_13(%rip), %xmm2, %xmm1 # xmm1 = (xmm1 * mem) + xmm2
	vfmadd132ss	16(%rsp), %xmm0, %xmm1  # 16-byte Folded Reload
                                        # xmm1 = (xmm1 * mem) + xmm0
	vmovss	224(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vdivss	%xmm3, %xmm0, %xmm0
	vmovaps	%xmm3, %xmm4
	vmulss	%xmm0, %xmm1, %xmm5
	vandps	288(%rsp), %xmm5, %xmm0         # 16-byte Folded Reload
	vmovss	.LCPI0_4(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	vmovss	.LCPI0_3(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm2, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm0) + xmm2
	vdivss	%xmm0, %xmm2, %xmm0
	vmulss	%xmm0, %xmm0, %xmm1
	vmulss	%xmm0, %xmm1, %xmm2
	vmovss	.LCPI0_5(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	vmulss	%xmm3, %xmm0, %xmm6
	vmovss	.LCPI0_8(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmovss	.LCPI0_9(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm3, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm0) + xmm3
	vmovss	.LCPI0_7(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	vfmadd231ss	%xmm3, %xmm2, %xmm0     # xmm0 = (xmm2 * xmm3) + xmm0
	vmovss	.LCPI0_6(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	vfmadd231ss	%xmm2, %xmm3, %xmm6     # xmm6 = (xmm3 * xmm2) + xmm6
	vfmadd231ss	%xmm0, %xmm1, %xmm6     # xmm6 = (xmm1 * xmm0) + xmm6
	vmovss	%xmm6, 512(%rsp)                # 4-byte Spill
	vmovaps	32(%rsp), %xmm0                 # 16-byte Reload
	vmovaps	%xmm5, 224(%rsp)                # 16-byte Spill
	vfnmadd213ss	%xmm5, %xmm4, %xmm0     # xmm0 = -(xmm4 * xmm0) + xmm5
	vmovaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	vmulss	%xmm5, %xmm5, %xmm0
	vmulss	.LCPI0_1(%rip), %xmm0, %xmm0
	callq	expf@PLT
	vmovss	.LCPI0_10(%rip), %xmm1          # xmm1 = mem[0],zero,zero,zero
	vmulss	%xmm1, %xmm0, %xmm0
	vmulss	512(%rsp), %xmm0, %xmm0         # 4-byte Folded Reload
	vmovss	.LCPI0_4(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vsubss	%xmm0, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	vcmpltss	224(%rsp), %xmm2, %xmm2         # 16-byte Folded Reload
	vblendvps	%xmm2, %xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, 224(%rsp)                # 16-byte Spill
	vmovaps	16(%rsp), %xmm0                 # 16-byte Reload
	vxorps	384(%rsp), %xmm0, %xmm0         # 16-byte Folded Reload
	vmulss	256(%rsp), %xmm0, %xmm0         # 4-byte Folded Reload
	callq	expf@PLT
	vmulss	352(%rsp), %xmm0, %xmm0         # 4-byte Folded Reload
	vmovss	%xmm0, 16(%rsp)                 # 4-byte Spill
	vmovaps	32(%rsp), %xmm3                 # 16-byte Reload
	vandps	288(%rsp), %xmm3, %xmm0         # 16-byte Folded Reload
	vmovss	.LCPI0_4(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vfmadd132ss	.LCPI0_3(%rip), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vdivss	%xmm0, %xmm1, %xmm0
	vmulss	%xmm0, %xmm0, %xmm1
	vmulss	%xmm0, %xmm1, %xmm2
	vmulss	.LCPI0_5(%rip), %xmm0, %xmm4
	vmovss	.LCPI0_8(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vfmadd213ss	.LCPI0_9(%rip), %xmm1, %xmm0 # xmm0 = (xmm1 * xmm0) + mem
	vfmadd231ss	.LCPI0_7(%rip), %xmm2, %xmm0 # xmm0 = (xmm2 * mem) + xmm0
	vfmadd231ss	.LCPI0_6(%rip), %xmm2, %xmm4 # xmm4 = (xmm2 * mem) + xmm4
	vfmadd231ss	%xmm0, %xmm1, %xmm4     # xmm4 = (xmm1 * xmm0) + xmm4
	vmovss	%xmm4, 256(%rsp)                # 4-byte Spill
	vmulss	%xmm3, %xmm3, %xmm0
	vmulss	.LCPI0_1(%rip), %xmm0, %xmm0
	callq	expf@PLT
	vmulss	.LCPI0_10(%rip), %xmm0, %xmm0
	vmulss	256(%rsp), %xmm0, %xmm0         # 4-byte Folded Reload
	vmovss	.LCPI0_4(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vsubss	%xmm0, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	vcmpltss	32(%rsp), %xmm2, %xmm2          # 16-byte Folded Reload
	vblendvps	%xmm2, %xmm1, %xmm0, %xmm0
	vmulss	16(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmovaps	224(%rsp), %xmm1                # 16-byte Reload
	vfmsub231ss	96(%rsp), %xmm1, %xmm0  # 4-byte Folded Reload
                                        # xmm0 = (xmm1 * mem) - xmm0
	movq	448(%rsp), %rax                 # 8-byte Reload
	vmovss	%xmm0, (%rax,%rbp,4)
	incq	%rbp
	cmpq	%rbp, %rbx
	jne	.LBB0_7
.LBB0_8:
	addq	$776, %rsp                      # imm = 0x308
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
.Lfunc_end0:
	.size	_Z20black_scholes_serialPfS_S_S_S_S_i, .Lfunc_end0-_Z20black_scholes_serialPfS_S_S_S_S_i
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 12.0.0"
	.section	".note.GNU-stack","",@progbits
	.addrsig

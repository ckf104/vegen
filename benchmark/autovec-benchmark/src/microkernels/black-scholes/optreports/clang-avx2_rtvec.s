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
	.long	0x00800000                      # float 1.17549435E-38
.LCPI0_4:
	.long	0x3e6d3389                      # float 0.231641904
.LCPI0_5:
	.long	0x3f800000                      # float 1
.LCPI0_6:
	.long	0x3ea385fa                      # float 0.319381535
.LCPI0_7:
	.long	0x3fe40778                      # float 1.78147793
.LCPI0_8:
	.long	0x3faa466f                      # float 1.33027446
.LCPI0_9:
	.long	0xbfe91eea                      # float -1.82125592
.LCPI0_10:
	.long	0xbeb68f87                      # float -0.356563777
.LCPI0_11:
	.long	0x3ecc422a                      # float 0.398942292
.LCPI0_12:
	.long	0x80000000                      # float -0
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
	subq	$808, %rsp                      # imm = 0x328
	.cfi_def_cfa_offset 864
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, 184(%rsp)                  # 8-byte Spill
	movl	864(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB0_18
# %bb.1:
	movq	%r9, %r13
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	%eax, %esi
	cmpl	$8, %eax
	jae	.LBB0_3
# %bb.2:
	xorl	%edi, %edi
	jmp	.LBB0_16
.LBB0_3:
	leaq	(,%rsi,4), %rdi
	addq	%r13, %rdi
	leaq	(%r14,%rsi,4), %rax
	movq	184(%rsp), %rbp                 # 8-byte Reload
	leaq	(%r12,%rsi,4), %rdx
	leaq	(%rbx,%rsi,4), %r10
	leaq	(%rcx,%rsi,4), %r8
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	leaq	(,%rsi,4), %r9
	addq	%rbp, %r9
	cmpq	%r13, %rax
	movq	%r14, %rax
	seta	%r14b
	movq	%r12, %rsi
	movq	%rax, %r12
	cmpq	%rax, %rdi
	seta	%r15b
	cmpq	%r13, %rdx
	seta	%al
	movq	%rsi, 176(%rsp)                 # 8-byte Spill
	cmpq	%rsi, %rdi
	seta	%r11b
	cmpq	%r13, %r10
	seta	%dl
	movq	%rbx, 120(%rsp)                 # 8-byte Spill
	cmpq	%rbx, %rdi
	seta	%r10b
	cmpq	%r13, %r8
	seta	%bl
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	cmpq	%rcx, %rdi
	seta	%r8b
	cmpq	%r13, %r9
	seta	%cl
	cmpq	%rbp, %rdi
	seta	%r9b
	xorl	%edi, %edi
	testb	%r15b, %r14b
	jne	.LBB0_4
# %bb.5:
	andb	%r11b, %al
	movq	%r12, %r14
	jne	.LBB0_6
# %bb.9:
	andb	%r10b, %dl
	movq	176(%rsp), %r12                 # 8-byte Reload
	jne	.LBB0_10
# %bb.11:
	andb	%r8b, %bl
	jne	.LBB0_10
# %bb.12:
	andb	%r9b, %cl
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movq	120(%rsp), %rbx                 # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	jne	.LBB0_16
# %bb.13:
	movl	%esi, %edi
	andl	$-8, %edi
	xorl	%r15d, %r15d
	vbroadcastss	.LCPI0_0(%rip), %ymm0   # ymm0 = [-3.0E+0,-3.0E+0,-3.0E+0,-3.0E+0,-3.0E+0,-3.0E+0,-3.0E+0,-3.0E+0]
	vmovups	%ymm0, 736(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_1(%rip), %ymm0   # ymm0 = [-5.0E-1,-5.0E-1,-5.0E-1,-5.0E-1,-5.0E-1,-5.0E-1,-5.0E-1,-5.0E-1]
	vmovups	%ymm0, 384(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_2(%rip), %ymm0   # ymm0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]
	vmovups	%ymm0, 352(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_3(%rip), %ymm0   # ymm0 = [1.17549435E-38,1.17549435E-38,1.17549435E-38,1.17549435E-38,1.17549435E-38,1.17549435E-38,1.17549435E-38,1.17549435E-38]
	vmovups	%ymm0, 704(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_4(%rip), %ymm0   # ymm0 = [2.31641904E-1,2.31641904E-1,2.31641904E-1,2.31641904E-1,2.31641904E-1,2.31641904E-1,2.31641904E-1,2.31641904E-1]
	vmovups	%ymm0, 512(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_5(%rip), %ymm0   # ymm0 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	vmovups	%ymm0, 224(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_6(%rip), %ymm0   # ymm0 = [3.19381535E-1,3.19381535E-1,3.19381535E-1,3.19381535E-1,3.19381535E-1,3.19381535E-1,3.19381535E-1,3.19381535E-1]
	vmovups	%ymm0, 480(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_7(%rip), %ymm0   # ymm0 = [1.78147793E+0,1.78147793E+0,1.78147793E+0,1.78147793E+0,1.78147793E+0,1.78147793E+0,1.78147793E+0,1.78147793E+0]
	vmovups	%ymm0, 448(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_8(%rip), %ymm0   # ymm0 = [1.33027446E+0,1.33027446E+0,1.33027446E+0,1.33027446E+0,1.33027446E+0,1.33027446E+0,1.33027446E+0,1.33027446E+0]
	vmovups	%ymm0, 416(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_9(%rip), %ymm0   # ymm0 = [-1.82125592E+0,-1.82125592E+0,-1.82125592E+0,-1.82125592E+0,-1.82125592E+0,-1.82125592E+0,-1.82125592E+0,-1.82125592E+0]
	vmovups	%ymm0, 640(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_10(%rip), %ymm0  # ymm0 = [-3.56563777E-1,-3.56563777E-1,-3.56563777E-1,-3.56563777E-1,-3.56563777E-1,-3.56563777E-1,-3.56563777E-1,-3.56563777E-1]
	vmovups	%ymm0, 608(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_11(%rip), %ymm0  # ymm0 = [3.98942292E-1,3.98942292E-1,3.98942292E-1,3.98942292E-1,3.98942292E-1,3.98942292E-1,3.98942292E-1,3.98942292E-1]
	vmovups	%ymm0, 576(%rsp)                # 32-byte Spill
	vbroadcastss	.LCPI0_12(%rip), %ymm0  # ymm0 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vmovups	%ymm0, 672(%rsp)                # 32-byte Spill
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	vmovups	(%r14,%r15,4), %ymm2
	vmovups	%ymm2, 768(%rsp)                # 32-byte Spill
	vmovups	(%r12,%r15,4), %ymm3
	vmovups	%ymm3, 192(%rsp)                # 32-byte Spill
	vrcpps	%ymm3, %ymm0
	vmulps	%ymm0, %ymm2, %ymm1
	vmovaps	%ymm1, %ymm4
	vfmsub213ps	%ymm2, %ymm3, %ymm4     # ymm4 = (ymm3 * ymm4) - ymm2
	vfnmadd213ps	%ymm1, %ymm0, %ymm4     # ymm4 = -(ymm0 * ymm4) + ymm1
	vmovaps	%ymm4, %ymm5
	vmovups	%ymm4, 64(%rsp)                 # 32-byte Spill
	vmovups	(%rbx,%r15,4), %ymm4
	vmovups	%ymm4, 128(%rsp)                # 32-byte Spill
	vrsqrtps	%ymm4, %ymm0
	vmulps	%ymm0, %ymm4, %ymm1
	vmovups	384(%rsp), %ymm3                # 32-byte Reload
	vmulps	%ymm3, %ymm0, %ymm2
	vfmadd213ps	736(%rsp), %ymm1, %ymm0 # 32-byte Folded Reload
                                        # ymm0 = (ymm1 * ymm0) + mem
	vmulps	%ymm3, %ymm1, %ymm1
	vmulps	%ymm0, %ymm1, %ymm1
	vandps	352(%rsp), %ymm4, %ymm3         # 32-byte Folded Reload
	vmovups	704(%rsp), %ymm4                # 32-byte Reload
	vcmpleps	%ymm3, %ymm4, %ymm3
	vandps	%ymm1, %ymm3, %ymm1
	vmovups	%ymm1, 256(%rsp)                # 32-byte Spill
	vmulps	%ymm0, %ymm2, %ymm3
	vmovups	(%rcx,%r15,4), %ymm0
	vmovups	%ymm0, 288(%rsp)                # 32-byte Spill
	movq	184(%rsp), %rax                 # 8-byte Reload
	vmovups	(%rax,%r15,4), %ymm2
	vmovups	%ymm2, 544(%rsp)                # 32-byte Spill
	vrcpps	%ymm2, %ymm0
	vmulps	%ymm0, %ymm3, %ymm1
	vfmsub231ps	%ymm1, %ymm2, %ymm3     # ymm3 = (ymm2 * ymm1) - ymm3
	vfnmadd213ps	%ymm1, %ymm0, %ymm3     # ymm3 = -(ymm0 * ymm3) + ymm1
	vmovups	%ymm3, 320(%rsp)                # 32-byte Spill
	vextractf128	$1, %ymm5, %xmm0
	vmovaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	movq	%rdi, %rbp
	vzeroupper
	callq	logf@PLT
	vmovaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	vmovshdup	16(%rsp), %xmm0         # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,3,3]
	callq	logf@PLT
	vmovaps	32(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$16, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0],xmm0[0],xmm1[2,3]
	vmovaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0     # 16-byte Folded Reload
                                        # xmm0 = mem[1,0]
	callq	logf@PLT
	vmovaps	32(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$32, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1],xmm0[0],xmm1[3]
	vmovaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	vpermilps	$255, 16(%rsp), %xmm0   # 16-byte Folded Reload
                                        # xmm0 = mem[3,3,3,3]
	callq	logf@PLT
	vmovaps	32(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$48, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1,2],xmm0[0]
	vmovaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	vmovups	64(%rsp), %ymm0                 # 32-byte Reload
                                        # kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	logf@PLT
	vmovaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	vmovshdup	64(%rsp), %xmm0         # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,3,3]
	callq	logf@PLT
	vmovaps	32(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$16, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0],xmm0[0],xmm1[2,3]
	vmovaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	vpermilpd	$1, 64(%rsp), %xmm0     # 16-byte Folded Reload
                                        # xmm0 = mem[1,0]
	callq	logf@PLT
	vmovaps	32(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$32, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1],xmm0[0],xmm1[3]
	vmovaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	vpermilps	$255, 64(%rsp), %xmm0   # 16-byte Folded Reload
                                        # xmm0 = mem[3,3,3,3]
	callq	logf@PLT
	vmovaps	32(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$48, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1,2],xmm0[0]
	vinsertf128	$1, 16(%rsp), %ymm0, %ymm0 # 16-byte Folded Reload
	vmovups	544(%rsp), %ymm2                # 32-byte Reload
	vmulps	%ymm2, %ymm2, %ymm1
	vmovups	384(%rsp), %ymm3                # 32-byte Reload
	vfmsub213ps	288(%rsp), %ymm3, %ymm1 # 32-byte Folded Reload
                                        # ymm1 = (ymm3 * ymm1) - mem
	vfnmadd132ps	128(%rsp), %ymm0, %ymm1 # 32-byte Folded Reload
                                        # ymm1 = -(ymm1 * mem) + ymm0
	vmulps	320(%rsp), %ymm1, %ymm1         # 32-byte Folded Reload
	vmovups	256(%rsp), %ymm0                # 32-byte Reload
	vfnmadd213ps	%ymm1, %ymm2, %ymm0     # ymm0 = -(ymm2 * ymm0) + ymm1
	vmovups	%ymm0, 256(%rsp)                # 32-byte Spill
	vandps	352(%rsp), %ymm1, %ymm0         # 32-byte Folded Reload
	vmovaps	%ymm1, %ymm4
	vmovups	%ymm1, 320(%rsp)                # 32-byte Spill
	vmovups	224(%rsp), %ymm2                # 32-byte Reload
	vfmadd132ps	512(%rsp), %ymm2, %ymm0 # 32-byte Folded Reload
                                        # ymm0 = (ymm0 * mem) + ymm2
	vrcpps	%ymm0, %ymm1
	vfmsub213ps	%ymm2, %ymm1, %ymm0     # ymm0 = (ymm1 * ymm0) - ymm2
	vfnmadd132ps	%ymm1, %ymm1, %ymm0     # ymm0 = -(ymm0 * ymm1) + ymm1
	vmulps	%ymm0, %ymm0, %ymm1
	vmulps	%ymm0, %ymm1, %ymm2
	vmulps	480(%rsp), %ymm0, %ymm5         # 32-byte Folded Reload
	vmovups	640(%rsp), %ymm0                # 32-byte Reload
	vfmadd213ps	608(%rsp), %ymm1, %ymm0 # 32-byte Folded Reload
                                        # ymm0 = (ymm1 * ymm0) + mem
	vfmadd231ps	416(%rsp), %ymm2, %ymm0 # 32-byte Folded Reload
                                        # ymm0 = (ymm2 * mem) + ymm0
	vfmadd231ps	448(%rsp), %ymm2, %ymm5 # 32-byte Folded Reload
                                        # ymm5 = (ymm2 * mem) + ymm5
	vfmadd231ps	%ymm0, %ymm1, %ymm5     # ymm5 = (ymm1 * ymm0) + ymm5
	vmovups	%ymm5, 544(%rsp)                # 32-byte Spill
	vmulps	%ymm4, %ymm4, %ymm0
	vmulps	%ymm3, %ymm0, %ymm0
	vmovups	%ymm0, 64(%rsp)                 # 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	vzeroupper
	callq	expf@PLT
	vmovaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	vmovshdup	16(%rsp), %xmm0         # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,3,3]
	callq	expf@PLT
	vmovaps	32(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$16, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0],xmm0[0],xmm1[2,3]
	vmovaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0     # 16-byte Folded Reload
                                        # xmm0 = mem[1,0]
	callq	expf@PLT
	vmovaps	32(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$32, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1],xmm0[0],xmm1[3]
	vmovaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	vpermilps	$255, 16(%rsp), %xmm0   # 16-byte Folded Reload
                                        # xmm0 = mem[3,3,3,3]
	callq	expf@PLT
	vmovaps	32(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$48, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1,2],xmm0[0]
	vmovaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	vmovups	64(%rsp), %ymm0                 # 32-byte Reload
                                        # kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	expf@PLT
	vmovaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	vmovshdup	64(%rsp), %xmm0         # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,3,3]
	callq	expf@PLT
	vmovaps	32(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$16, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0],xmm0[0],xmm1[2,3]
	vmovaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	vpermilpd	$1, 64(%rsp), %xmm0     # 16-byte Folded Reload
                                        # xmm0 = mem[1,0]
	callq	expf@PLT
	vmovaps	32(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$32, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1],xmm0[0],xmm1[3]
	vmovaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	vpermilps	$255, 64(%rsp), %xmm0   # 16-byte Folded Reload
                                        # xmm0 = mem[3,3,3,3]
	callq	expf@PLT
	vmovaps	32(%rsp), %xmm1                 # 16-byte Reload
	vinsertps	$48, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1,2],xmm0[0]
	vinsertf128	$1, 16(%rsp), %ymm0, %ymm0 # 16-byte Folded Reload
	vmulps	576(%rsp), %ymm0, %ymm0         # 32-byte Folded Reload
	vmulps	544(%rsp), %ymm0, %ymm0         # 32-byte Folded Reload
	vxorps	%xmm1, %xmm1, %xmm1
	vcmpltps	320(%rsp), %ymm1, %ymm1         # 32-byte Folded Reload
	vmovups	224(%rsp), %ymm2                # 32-byte Reload
	vsubps	%ymm0, %ymm2, %ymm2
	vblendvps	%ymm1, %ymm2, %ymm0, %ymm0
	vmovups	%ymm0, 320(%rsp)                # 32-byte Spill
	vmovups	128(%rsp), %ymm0                # 32-byte Reload
	vxorps	672(%rsp), %ymm0, %ymm0         # 32-byte Folded Reload
	vmulps	288(%rsp), %ymm0, %ymm0         # 32-byte Folded Reload
	vmovups	%ymm0, 64(%rsp)                 # 32-byte Spill
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
	vmovups	64(%rsp), %ymm0                 # 32-byte Reload
                                        # kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	expf@PLT
	vmovaps	%xmm0, 128(%rsp)                # 16-byte Spill
	vmovshdup	64(%rsp), %xmm0         # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,3,3]
	callq	expf@PLT
	vmovaps	128(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$16, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0],xmm0[0],xmm1[2,3]
	vmovaps	%xmm0, 128(%rsp)                # 16-byte Spill
	vpermilpd	$1, 64(%rsp), %xmm0     # 16-byte Folded Reload
                                        # xmm0 = mem[1,0]
	callq	expf@PLT
	vmovaps	128(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$32, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1],xmm0[0],xmm1[3]
	vmovaps	%xmm0, 128(%rsp)                # 16-byte Spill
	vpermilps	$255, 64(%rsp), %xmm0   # 16-byte Folded Reload
                                        # xmm0 = mem[3,3,3,3]
	callq	expf@PLT
	vmovaps	128(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$48, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1,2],xmm0[0]
	vinsertf128	$1, 16(%rsp), %ymm0, %ymm0 # 16-byte Folded Reload
	vmulps	192(%rsp), %ymm0, %ymm0         # 32-byte Folded Reload
	vmovups	%ymm0, 128(%rsp)                # 32-byte Spill
	vmovups	256(%rsp), %ymm3                # 32-byte Reload
	vandps	352(%rsp), %ymm3, %ymm0         # 32-byte Folded Reload
	vmovups	224(%rsp), %ymm2                # 32-byte Reload
	vfmadd132ps	512(%rsp), %ymm2, %ymm0 # 32-byte Folded Reload
                                        # ymm0 = (ymm0 * mem) + ymm2
	vrcpps	%ymm0, %ymm1
	vfmsub213ps	%ymm2, %ymm1, %ymm0     # ymm0 = (ymm1 * ymm0) - ymm2
	vfnmadd132ps	%ymm1, %ymm1, %ymm0     # ymm0 = -(ymm0 * ymm1) + ymm1
	vmulps	%ymm0, %ymm0, %ymm1
	vmulps	%ymm0, %ymm1, %ymm2
	vmulps	480(%rsp), %ymm0, %ymm4         # 32-byte Folded Reload
	vmovups	640(%rsp), %ymm0                # 32-byte Reload
	vfmadd213ps	608(%rsp), %ymm1, %ymm0 # 32-byte Folded Reload
                                        # ymm0 = (ymm1 * ymm0) + mem
	vfmadd231ps	416(%rsp), %ymm2, %ymm0 # 32-byte Folded Reload
                                        # ymm0 = (ymm2 * mem) + ymm0
	vfmadd231ps	448(%rsp), %ymm2, %ymm4 # 32-byte Folded Reload
                                        # ymm4 = (ymm2 * mem) + ymm4
	vfmadd231ps	%ymm0, %ymm1, %ymm4     # ymm4 = (ymm1 * ymm0) + ymm4
	vmovups	%ymm4, 288(%rsp)                # 32-byte Spill
	vmulps	%ymm3, %ymm3, %ymm0
	vmulps	384(%rsp), %ymm0, %ymm0         # 32-byte Folded Reload
	vmovups	%ymm0, 64(%rsp)                 # 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	vzeroupper
	callq	expf@PLT
	vmovaps	%xmm0, 192(%rsp)                # 16-byte Spill
	vmovshdup	16(%rsp), %xmm0         # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,3,3]
	callq	expf@PLT
	vmovaps	192(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$16, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0],xmm0[0],xmm1[2,3]
	vmovaps	%xmm0, 192(%rsp)                # 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0     # 16-byte Folded Reload
                                        # xmm0 = mem[1,0]
	callq	expf@PLT
	vmovaps	192(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$32, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1],xmm0[0],xmm1[3]
	vmovaps	%xmm0, 192(%rsp)                # 16-byte Spill
	vpermilps	$255, 16(%rsp), %xmm0   # 16-byte Folded Reload
                                        # xmm0 = mem[3,3,3,3]
	callq	expf@PLT
	vmovaps	192(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$48, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1,2],xmm0[0]
	vmovaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	vmovups	64(%rsp), %ymm0                 # 32-byte Reload
                                        # kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	expf@PLT
	vmovaps	%xmm0, 192(%rsp)                # 16-byte Spill
	vmovshdup	64(%rsp), %xmm0         # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,3,3]
	callq	expf@PLT
	vmovaps	192(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$16, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0],xmm0[0],xmm1[2,3]
	vmovaps	%xmm0, 192(%rsp)                # 16-byte Spill
	vpermilpd	$1, 64(%rsp), %xmm0     # 16-byte Folded Reload
                                        # xmm0 = mem[1,0]
	callq	expf@PLT
	vmovaps	192(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$32, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1],xmm0[0],xmm1[3]
	vmovaps	%xmm0, 192(%rsp)                # 16-byte Spill
	vpermilps	$255, 64(%rsp), %xmm0   # 16-byte Folded Reload
                                        # xmm0 = mem[3,3,3,3]
	callq	expf@PLT
	movq	%rbp, %rdi
	movq	56(%rsp), %rcx                  # 8-byte Reload
	vmovaps	192(%rsp), %xmm1                # 16-byte Reload
	vinsertps	$48, %xmm0, %xmm1, %xmm0 # xmm0 = xmm1[0,1,2],xmm0[0]
	vinsertf128	$1, 16(%rsp), %ymm0, %ymm0 # 16-byte Folded Reload
	vmulps	576(%rsp), %ymm0, %ymm0         # 32-byte Folded Reload
	vmulps	288(%rsp), %ymm0, %ymm0         # 32-byte Folded Reload
	vxorps	%xmm1, %xmm1, %xmm1
	vcmpltps	256(%rsp), %ymm1, %ymm1         # 32-byte Folded Reload
	vmovups	224(%rsp), %ymm2                # 32-byte Reload
	vsubps	%ymm0, %ymm2, %ymm2
	vblendvps	%ymm1, %ymm2, %ymm0, %ymm0
	vmulps	128(%rsp), %ymm0, %ymm0         # 32-byte Folded Reload
	vmovups	320(%rsp), %ymm1                # 32-byte Reload
	vfmsub231ps	768(%rsp), %ymm1, %ymm0 # 32-byte Folded Reload
                                        # ymm0 = (ymm1 * mem) - ymm0
	vmovups	%ymm0, (%r13,%r15,4)
	addq	$8, %r15
	cmpq	%r15, %rbp
	jne	.LBB0_14
# %bb.15:
	movq	48(%rsp), %rsi                  # 8-byte Reload
	cmpq	%rsi, %rdi
	jne	.LBB0_16
	jmp	.LBB0_18
.LBB0_10:
	movq	48(%rsp), %rsi                  # 8-byte Reload
	jmp	.LBB0_8
.LBB0_4:
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movq	%r12, %r14
	jmp	.LBB0_7
.LBB0_6:
	movq	48(%rsp), %rsi                  # 8-byte Reload
.LBB0_7:
	movq	176(%rsp), %r12                 # 8-byte Reload
.LBB0_8:
	movq	120(%rsp), %rbx                 # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
.LBB0_16:
	leaq	(,%rdi,4), %rax
	addq	%r13, %rax
	movq	%rax, 480(%rsp)                 # 8-byte Spill
	movq	184(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rdi,4), %rax
	movq	%rax, 448(%rsp)                 # 8-byte Spill
	leaq	(%rcx,%rdi,4), %rbp
	leaq	(%rbx,%rdi,4), %rbx
	leaq	(%r12,%rdi,4), %r12
	leaq	(%r14,%rdi,4), %r14
	subq	%rdi, %rsi
	xorl	%r15d, %r15d
	vbroadcastss	.LCPI0_2(%rip), %xmm0   # xmm0 = [NaN,NaN,NaN,NaN]
	vmovaps	%xmm0, 64(%rsp)                 # 16-byte Spill
	vbroadcastss	.LCPI0_12(%rip), %xmm0  # xmm0 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vmovaps	%xmm0, 416(%rsp)                # 16-byte Spill
	.p2align	4, 0x90
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%r14,%r15,4), %xmm4            # xmm4 = mem[0],zero,zero,zero
	vmovss	%xmm4, 384(%rsp)                # 4-byte Spill
	vmovss	(%r12,%r15,4), %xmm5            # xmm5 = mem[0],zero,zero,zero
	vmovss	%xmm5, 352(%rsp)                # 4-byte Spill
	vmovss	(%rbx,%r15,4), %xmm6            # xmm6 = mem[0],zero,zero,zero
	vmovaps	%xmm6, 224(%rsp)                # 16-byte Spill
	vrsqrtss	%xmm6, %xmm6, %xmm0
	vmulss	%xmm0, %xmm6, %xmm1
	vmovss	.LCPI0_1(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	vmulss	%xmm3, %xmm0, %xmm2
	vfmadd213ss	.LCPI0_0(%rip), %xmm1, %xmm0 # xmm0 = (xmm1 * xmm0) + mem
	vmulss	%xmm3, %xmm1, %xmm1
	vmulss	%xmm0, %xmm1, %xmm1
	vandps	64(%rsp), %xmm6, %xmm3          # 16-byte Folded Reload
	vcmpltss	.LCPI0_3(%rip), %xmm3, %xmm3
	vandnps	%xmm1, %xmm3, %xmm1
	vmovaps	%xmm1, 256(%rsp)                # 16-byte Spill
	vmulss	%xmm0, %xmm2, %xmm0
	vmovss	%xmm0, 128(%rsp)                # 4-byte Spill
	vmovss	(%rbp,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 16(%rsp)                 # 4-byte Spill
	movq	448(%rsp), %rax                 # 8-byte Reload
	vmovss	(%rax,%r15,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, 512(%rsp)                # 4-byte Spill
	vdivss	%xmm5, %xmm4, %xmm0
	movq	%rsi, %r13
	vzeroupper
	callq	logf@PLT
	vmovss	512(%rsp), %xmm3                # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	vmulss	%xmm3, %xmm3, %xmm1
	vmovss	16(%rsp), %xmm2                 # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	vfmadd132ss	.LCPI0_13(%rip), %xmm2, %xmm1 # xmm1 = (xmm1 * mem) + xmm2
	vfmadd132ss	224(%rsp), %xmm0, %xmm1 # 16-byte Folded Reload
                                        # xmm1 = (xmm1 * mem) + xmm0
	vmovss	128(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vdivss	%xmm3, %xmm0, %xmm0
	vmovaps	%xmm3, %xmm4
	vmulss	%xmm0, %xmm1, %xmm5
	vandps	64(%rsp), %xmm5, %xmm0          # 16-byte Folded Reload
	vmovss	.LCPI0_5(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	vmovss	.LCPI0_4(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm2, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm0) + xmm2
	vdivss	%xmm0, %xmm2, %xmm0
	vmulss	%xmm0, %xmm0, %xmm1
	vmulss	%xmm0, %xmm1, %xmm2
	vmovss	.LCPI0_6(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	vmulss	%xmm3, %xmm0, %xmm6
	vmovss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmovss	.LCPI0_10(%rip), %xmm3          # xmm3 = mem[0],zero,zero,zero
	vfmadd213ss	%xmm3, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm0) + xmm3
	vmovss	.LCPI0_8(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	vfmadd231ss	%xmm3, %xmm2, %xmm0     # xmm0 = (xmm2 * xmm3) + xmm0
	vmovss	.LCPI0_7(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	vfmadd231ss	%xmm2, %xmm3, %xmm6     # xmm6 = (xmm3 * xmm2) + xmm6
	vfmadd231ss	%xmm0, %xmm1, %xmm6     # xmm6 = (xmm1 * xmm0) + xmm6
	vmovss	%xmm6, 288(%rsp)                # 4-byte Spill
	vmovaps	256(%rsp), %xmm0                # 16-byte Reload
	vmovaps	%xmm5, 128(%rsp)                # 16-byte Spill
	vfnmadd213ss	%xmm5, %xmm4, %xmm0     # xmm0 = -(xmm4 * xmm0) + xmm5
	vmovaps	%xmm0, 256(%rsp)                # 16-byte Spill
	vmulss	%xmm5, %xmm5, %xmm0
	vmulss	.LCPI0_1(%rip), %xmm0, %xmm0
	callq	expf@PLT
	vmovss	.LCPI0_11(%rip), %xmm1          # xmm1 = mem[0],zero,zero,zero
	vmulss	%xmm1, %xmm0, %xmm0
	vmulss	288(%rsp), %xmm0, %xmm0         # 4-byte Folded Reload
	vmovss	.LCPI0_5(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vsubss	%xmm0, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	vcmpltss	128(%rsp), %xmm2, %xmm2         # 16-byte Folded Reload
	vblendvps	%xmm2, %xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, 128(%rsp)                # 16-byte Spill
	vmovaps	224(%rsp), %xmm0                # 16-byte Reload
	vxorps	416(%rsp), %xmm0, %xmm0         # 16-byte Folded Reload
	vmulss	16(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	callq	expf@PLT
	vmulss	352(%rsp), %xmm0, %xmm0         # 4-byte Folded Reload
	vmovss	%xmm0, 224(%rsp)                # 4-byte Spill
	vmovaps	256(%rsp), %xmm3                # 16-byte Reload
	vandps	64(%rsp), %xmm3, %xmm0          # 16-byte Folded Reload
	vmovss	.LCPI0_5(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vfmadd132ss	.LCPI0_4(%rip), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vdivss	%xmm0, %xmm1, %xmm0
	vmulss	%xmm0, %xmm0, %xmm1
	vmulss	%xmm0, %xmm1, %xmm2
	vmulss	.LCPI0_6(%rip), %xmm0, %xmm4
	vmovss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vfmadd213ss	.LCPI0_10(%rip), %xmm1, %xmm0 # xmm0 = (xmm1 * xmm0) + mem
	vfmadd231ss	.LCPI0_8(%rip), %xmm2, %xmm0 # xmm0 = (xmm2 * mem) + xmm0
	vfmadd231ss	.LCPI0_7(%rip), %xmm2, %xmm4 # xmm4 = (xmm2 * mem) + xmm4
	vfmadd231ss	%xmm0, %xmm1, %xmm4     # xmm4 = (xmm1 * xmm0) + xmm4
	vmovss	%xmm4, 16(%rsp)                 # 4-byte Spill
	vmulss	%xmm3, %xmm3, %xmm0
	vmulss	.LCPI0_1(%rip), %xmm0, %xmm0
	callq	expf@PLT
	movq	%r13, %rsi
	vmulss	.LCPI0_11(%rip), %xmm0, %xmm0
	vmulss	16(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vmovss	.LCPI0_5(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vsubss	%xmm0, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	vcmpltss	256(%rsp), %xmm2, %xmm2         # 16-byte Folded Reload
	vblendvps	%xmm2, %xmm1, %xmm0, %xmm0
	vmulss	224(%rsp), %xmm0, %xmm0         # 4-byte Folded Reload
	vmovaps	128(%rsp), %xmm1                # 16-byte Reload
	vfmsub231ss	384(%rsp), %xmm1, %xmm0 # 4-byte Folded Reload
                                        # xmm0 = (xmm1 * mem) - xmm0
	movq	480(%rsp), %rax                 # 8-byte Reload
	vmovss	%xmm0, (%rax,%r15,4)
	incq	%r15
	cmpq	%r15, %r13
	jne	.LBB0_17
.LBB0_18:
	addq	$808, %rsp                      # imm = 0x328
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

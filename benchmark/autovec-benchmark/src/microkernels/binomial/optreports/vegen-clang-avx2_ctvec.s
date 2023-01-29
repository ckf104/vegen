	.text
	.file	"binomial_serial.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _Z19binomial_put_serialPfS_S_S_S_S_i
.LCPI0_0:
	.long	0x3c800000                      # float 0.015625
.LCPI0_1:
	.long	0x3f800000                      # float 1
	.text
	.globl	_Z19binomial_put_serialPfS_S_S_S_S_i
	.p2align	4, 0x90
	.type	_Z19binomial_put_serialPfS_S_S_S_S_i,@function
_Z19binomial_put_serialPfS_S_S_S_S_i:   # @_Z19binomial_put_serialPfS_S_S_S_S_i
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
	movq	%r9, 56(%rsp)                   # 8-byte Spill
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movl	864(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB0_14
# %bb.1:
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	%eax, %r14d
	xorl	%r15d, %r15d
                                        # implicit-def: $r12
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	vmovss	%xmm7, 12(%rsp)                 # 4-byte Spill
	vmovss	544(%rsp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	56(%rsp), %rax                  # 8-byte Reload
	vmovss	%xmm0, (%rax,%r15,4)
	incq	%r15
	cmpq	%r14, %r15
	je	.LBB0_14
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_9 Depth 3
	vmovss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vmulss	(%r13,%r15,4), %xmm0, %xmm0
	vmovss	%xmm0, 16(%rsp)                 # 4-byte Spill
	vsqrtss	%xmm0, %xmm0, %xmm0
	movq	48(%rsp), %rax                  # 8-byte Reload
	vmulss	(%rax,%r15,4), %xmm0, %xmm0
	vzeroupper
	callq	expf@PLT
	vmovaps	%xmm0, %xmm1
	vmovss	%xmm0, 4(%rsp)                  # 4-byte Spill
	vmovss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vdivss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, 8(%rsp)                  # 4-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	vmovss	16(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vmulss	(%rax,%r15,4), %xmm0, %xmm0
	callq	expf@PLT
	vmovss	4(%rsp), %xmm1                  # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vmulss	%xmm1, %xmm1, %xmm9
	vmulss	%xmm9, %xmm9, %xmm15
	vmulss	%xmm15, %xmm15, %xmm5
	vmulss	%xmm5, %xmm5, %xmm6
	vmulss	%xmm6, %xmm6, %xmm2
	vmulss	%xmm2, %xmm2, %xmm3
	vmovss	.LCPI0_1(%rip), %xmm7           # xmm7 = mem[0],zero,zero,zero
	vdivss	%xmm3, %xmm7, %xmm3
	vmulss	%xmm15, %xmm9, %xmm10
	vmulss	%xmm5, %xmm10, %xmm1
	vmulss	%xmm6, %xmm1, %xmm4
	vmovaps	%xmm4, 16(%rsp)                 # 16-byte Spill
	vmovaps	%xmm1, %xmm8
	vmovaps	%xmm1, 160(%rsp)                # 16-byte Spill
	vmulss	%xmm2, %xmm4, %xmm1
	vmovaps	%xmm1, 432(%rsp)                # 16-byte Spill
	vdivss	%xmm1, %xmm7, %xmm4
	vinsertps	$16, %xmm4, %xmm3, %xmm3 # xmm3 = xmm3[0],xmm4[0],xmm3[2,3]
	vmulss	%xmm5, %xmm15, %xmm1
	vmulss	%xmm6, %xmm1, %xmm4
	vmovaps	%xmm4, 112(%rsp)                # 16-byte Spill
	vmovaps	%xmm1, %xmm13
	vmovaps	%xmm1, 144(%rsp)                # 16-byte Spill
	vmulss	%xmm2, %xmm4, %xmm1
	vmovaps	%xmm1, 416(%rsp)                # 16-byte Spill
	vdivss	%xmm1, %xmm7, %xmm4
	vinsertps	$32, %xmm4, %xmm3, %xmm3 # xmm3 = xmm3[0,1],xmm4[0],xmm3[3]
	vmulss	%xmm5, %xmm9, %xmm1
	vmulss	%xmm6, %xmm1, %xmm4
	vmovaps	%xmm4, 96(%rsp)                 # 16-byte Spill
	vmovaps	%xmm1, %xmm12
	vmovaps	%xmm1, 128(%rsp)                # 16-byte Spill
	vmulss	%xmm2, %xmm4, %xmm1
	vmovaps	%xmm1, 400(%rsp)                # 16-byte Spill
	vdivss	%xmm1, %xmm7, %xmm4
	vinsertps	$48, %xmm4, %xmm3, %xmm11 # xmm11 = xmm3[0,1,2],xmm4[0]
	vmulss	%xmm6, %xmm5, %xmm1
	vmovaps	%xmm1, 64(%rsp)                 # 16-byte Spill
	vmulss	%xmm2, %xmm1, %xmm1
	vmovaps	%xmm1, 368(%rsp)                # 16-byte Spill
	vdivss	%xmm1, %xmm7, %xmm3
	vmulss	%xmm6, %xmm10, %xmm14
	vmulss	%xmm2, %xmm14, %xmm1
	vmovaps	%xmm14, 176(%rsp)               # 16-byte Spill
	vmovaps	%xmm1, 384(%rsp)                # 16-byte Spill
	vdivss	%xmm1, %xmm7, %xmm4
	vinsertps	$16, %xmm4, %xmm3, %xmm3 # xmm3 = xmm3[0],xmm4[0],xmm3[2,3]
	vmulss	%xmm6, %xmm15, %xmm1
	vmovaps	%xmm1, 80(%rsp)                 # 16-byte Spill
	vmulss	%xmm2, %xmm1, %xmm1
	vmovaps	%xmm1, 352(%rsp)                # 16-byte Spill
	vdivss	%xmm1, %xmm7, %xmm4
	vinsertps	$32, %xmm4, %xmm3, %xmm4 # xmm4 = xmm3[0,1],xmm4[0],xmm3[3]
	vmulss	%xmm6, %xmm9, %xmm1
	vmovaps	%xmm1, 192(%rsp)                # 16-byte Spill
	vmulss	%xmm2, %xmm1, %xmm1
	vmovaps	%xmm1, 336(%rsp)                # 16-byte Spill
	vdivss	%xmm1, %xmm7, %xmm3
	vinsertps	$48, %xmm3, %xmm4, %xmm3 # xmm3 = xmm4[0,1,2],xmm3[0]
	vinsertf128	$1, %xmm3, %ymm11, %ymm1
	vmovups	%ymm1, 512(%rsp)                # 32-byte Spill
	vmulss	%xmm2, %xmm6, %xmm1
	vmovaps	%xmm1, 320(%rsp)                # 16-byte Spill
	vdivss	%xmm1, %xmm7, %xmm3
	vmulss	%xmm2, %xmm8, %xmm1
	vmovaps	%xmm1, 304(%rsp)                # 16-byte Spill
	vdivss	%xmm1, %xmm7, %xmm4
	vinsertps	$16, %xmm4, %xmm3, %xmm3 # xmm3 = xmm3[0],xmm4[0],xmm3[2,3]
	vmulss	%xmm2, %xmm13, %xmm1
	vmovaps	%xmm1, 288(%rsp)                # 16-byte Spill
	vdivss	%xmm1, %xmm7, %xmm4
	vinsertps	$32, %xmm4, %xmm3, %xmm3 # xmm3 = xmm3[0,1],xmm4[0],xmm3[3]
	vmulss	%xmm2, %xmm12, %xmm1
	vmovaps	%xmm1, 272(%rsp)                # 16-byte Spill
	vdivss	%xmm1, %xmm7, %xmm4
	vinsertps	$48, %xmm4, %xmm3, %xmm11 # xmm11 = xmm3[0,1,2],xmm4[0]
	vmulss	%xmm2, %xmm5, %xmm1
	vmovaps	%xmm1, 240(%rsp)                # 16-byte Spill
	vdivss	%xmm1, %xmm7, %xmm4
	vmulss	%xmm2, %xmm10, %xmm1
	vmovaps	%xmm1, 256(%rsp)                # 16-byte Spill
	vdivss	%xmm1, %xmm7, %xmm3
	vinsertps	$16, %xmm3, %xmm4, %xmm3 # xmm3 = xmm4[0],xmm3[0],xmm4[2,3]
	vmulss	%xmm2, %xmm15, %xmm1
	vmovaps	%xmm1, 224(%rsp)                # 16-byte Spill
	vdivss	%xmm1, %xmm7, %xmm4
	vinsertps	$32, %xmm4, %xmm3, %xmm3 # xmm3 = xmm3[0,1],xmm4[0],xmm3[3]
	vmulss	%xmm2, %xmm9, %xmm1
	vmovaps	%xmm1, 208(%rsp)                # 16-byte Spill
	vdivss	%xmm1, %xmm7, %xmm4
	vinsertps	$48, %xmm4, %xmm3, %xmm3 # xmm3 = xmm3[0,1,2],xmm4[0]
	vinsertf128	$1, %xmm3, %ymm11, %ymm1
	vmovups	%ymm1, 480(%rsp)                # 32-byte Spill
	vdivss	%xmm2, %xmm7, %xmm3
	vdivss	16(%rsp), %xmm7, %xmm4          # 16-byte Folded Reload
	vinsertps	$16, %xmm4, %xmm3, %xmm3 # xmm3 = xmm3[0],xmm4[0],xmm3[2,3]
	vdivss	112(%rsp), %xmm7, %xmm4         # 16-byte Folded Reload
	vinsertps	$32, %xmm4, %xmm3, %xmm3 # xmm3 = xmm3[0,1],xmm4[0],xmm3[3]
	vdivss	96(%rsp), %xmm7, %xmm4          # 16-byte Folded Reload
	vinsertps	$48, %xmm4, %xmm3, %xmm3 # xmm3 = xmm3[0,1,2],xmm4[0]
	vdivss	64(%rsp), %xmm7, %xmm4          # 16-byte Folded Reload
	vdivss	%xmm14, %xmm7, %xmm1
	vinsertps	$16, %xmm1, %xmm4, %xmm1 # xmm1 = xmm4[0],xmm1[0],xmm4[2,3]
	vdivss	80(%rsp), %xmm7, %xmm4          # 16-byte Folded Reload
	vinsertps	$32, %xmm4, %xmm1, %xmm1 # xmm1 = xmm1[0,1],xmm4[0],xmm1[3]
	vmovaps	192(%rsp), %xmm8                # 16-byte Reload
	vdivss	%xmm8, %xmm7, %xmm4
	vinsertps	$48, %xmm4, %xmm1, %xmm1 # xmm1 = xmm1[0,1,2],xmm4[0]
	vinsertf128	$1, %xmm1, %ymm3, %ymm1
	vmovups	%ymm1, 448(%rsp)                # 32-byte Spill
	vdivss	%xmm6, %xmm7, %xmm1
	vmovaps	160(%rsp), %xmm13               # 16-byte Reload
	vdivss	%xmm13, %xmm7, %xmm3
	vinsertps	$16, %xmm3, %xmm1, %xmm1 # xmm1 = xmm1[0],xmm3[0],xmm1[2,3]
	vmovaps	144(%rsp), %xmm12               # 16-byte Reload
	vdivss	%xmm12, %xmm7, %xmm3
	vinsertps	$32, %xmm3, %xmm1, %xmm1 # xmm1 = xmm1[0,1],xmm3[0],xmm1[3]
	vmovaps	128(%rsp), %xmm11               # 16-byte Reload
	vdivss	%xmm11, %xmm7, %xmm3
	vinsertps	$48, %xmm3, %xmm1, %xmm1 # xmm1 = xmm1[0,1,2],xmm3[0]
	vdivss	%xmm5, %xmm7, %xmm3
	vdivss	%xmm10, %xmm7, %xmm4
	vinsertps	$16, %xmm4, %xmm3, %xmm3 # xmm3 = xmm3[0],xmm4[0],xmm3[2,3]
	vdivss	%xmm15, %xmm7, %xmm4
	vinsertps	$32, %xmm4, %xmm3, %xmm3 # xmm3 = xmm3[0,1],xmm4[0],xmm3[3]
	vdivss	%xmm9, %xmm7, %xmm4
	vinsertps	$48, %xmm4, %xmm3, %xmm3 # xmm3 = xmm3[0,1,2],xmm4[0]
	vinsertf128	$1, %xmm3, %ymm1, %ymm14
	vinsertps	$16, %xmm9, %xmm7, %xmm1 # xmm1 = xmm7[0],xmm9[0],xmm7[2,3]
	vinsertps	$32, %xmm15, %xmm1, %xmm1 # xmm1 = xmm1[0,1],xmm15[0],xmm1[3]
	vinsertps	$48, %xmm10, %xmm1, %xmm1 # xmm1 = xmm1[0,1,2],xmm10[0]
	vinsertps	$16, %xmm11, %xmm5, %xmm3 # xmm3 = xmm5[0],xmm11[0],xmm5[2,3]
	vinsertps	$32, %xmm12, %xmm3, %xmm3 # xmm3 = xmm3[0,1],xmm12[0],xmm3[3]
	vinsertps	$48, %xmm13, %xmm3, %xmm3 # xmm3 = xmm3[0,1,2],xmm13[0]
	vinsertf128	$1, %xmm3, %ymm1, %ymm1
	vmovaps	64(%rsp), %xmm3                 # 16-byte Reload
	vinsertps	$16, 96(%rsp), %xmm3, %xmm3 # 16-byte Folded Reload
                                        # xmm3 = xmm3[0],mem[0],xmm3[2,3]
	vinsertps	$32, 112(%rsp), %xmm3, %xmm3 # 16-byte Folded Reload
                                        # xmm3 = xmm3[0,1],mem[0],xmm3[3]
	vinsertps	$48, 16(%rsp), %xmm3, %xmm3 # 16-byte Folded Reload
                                        # xmm3 = xmm3[0,1,2],mem[0]
	vinsertps	$16, %xmm8, %xmm6, %xmm4 # xmm4 = xmm6[0],xmm8[0],xmm6[2,3]
	vinsertps	$32, 80(%rsp), %xmm4, %xmm4 # 16-byte Folded Reload
                                        # xmm4 = xmm4[0,1],mem[0],xmm4[3]
	vinsertps	$48, 176(%rsp), %xmm4, %xmm4 # 16-byte Folded Reload
                                        # xmm4 = xmm4[0,1,2],mem[0]
	vinsertf128	$1, %xmm3, %ymm4, %ymm3
	vmovaps	240(%rsp), %xmm4                # 16-byte Reload
	vinsertps	$16, 272(%rsp), %xmm4, %xmm4 # 16-byte Folded Reload
                                        # xmm4 = xmm4[0],mem[0],xmm4[2,3]
	vinsertps	$32, 288(%rsp), %xmm4, %xmm4 # 16-byte Folded Reload
                                        # xmm4 = xmm4[0,1],mem[0],xmm4[3]
	vinsertps	$48, 304(%rsp), %xmm4, %xmm4 # 16-byte Folded Reload
                                        # xmm4 = xmm4[0,1,2],mem[0]
	vinsertps	$16, 208(%rsp), %xmm2, %xmm2 # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0],xmm2[2,3]
	vinsertps	$32, 224(%rsp), %xmm2, %xmm2 # 16-byte Folded Reload
                                        # xmm2 = xmm2[0,1],mem[0],xmm2[3]
	vinsertps	$48, 256(%rsp), %xmm2, %xmm2 # 16-byte Folded Reload
                                        # xmm2 = xmm2[0,1,2],mem[0]
	vinsertf128	$1, %xmm4, %ymm2, %ymm2
	vmovaps	368(%rsp), %xmm4                # 16-byte Reload
	vinsertps	$16, 400(%rsp), %xmm4, %xmm4 # 16-byte Folded Reload
                                        # xmm4 = xmm4[0],mem[0],xmm4[2,3]
	vinsertps	$32, 416(%rsp), %xmm4, %xmm4 # 16-byte Folded Reload
                                        # xmm4 = xmm4[0,1],mem[0],xmm4[3]
	vinsertps	$48, 432(%rsp), %xmm4, %xmm4 # 16-byte Folded Reload
                                        # xmm4 = xmm4[0,1,2],mem[0]
	vmovaps	320(%rsp), %xmm5                # 16-byte Reload
	vinsertps	$16, 336(%rsp), %xmm5, %xmm5 # 16-byte Folded Reload
                                        # xmm5 = xmm5[0],mem[0],xmm5[2,3]
	vinsertps	$32, 352(%rsp), %xmm5, %xmm5 # 16-byte Folded Reload
                                        # xmm5 = xmm5[0,1],mem[0],xmm5[3]
	vinsertps	$48, 384(%rsp), %xmm5, %xmm5 # 16-byte Folded Reload
                                        # xmm5 = xmm5[0,1,2],mem[0]
	vbroadcastss	(%rbp,%r15,4), %ymm6
	vinsertf128	$1, %xmm4, %ymm5, %ymm4
	vbroadcastss	(%rbx,%r15,4), %ymm5
	vmovups	512(%rsp), %ymm8                # 32-byte Reload
	vfnmadd213ps	%ymm5, %ymm6, %ymm8     # ymm8 = -(ymm6 * ymm8) + ymm5
	vmovups	480(%rsp), %ymm9                # 32-byte Reload
	vfnmadd213ps	%ymm5, %ymm6, %ymm9     # ymm9 = -(ymm6 * ymm9) + ymm5
	vmovups	448(%rsp), %ymm10               # 32-byte Reload
	vfnmadd213ps	%ymm5, %ymm6, %ymm10    # ymm10 = -(ymm6 * ymm10) + ymm5
	vfnmadd213ps	%ymm5, %ymm6, %ymm14    # ymm14 = -(ymm6 * ymm14) + ymm5
	vfnmadd213ps	%ymm5, %ymm6, %ymm1     # ymm1 = -(ymm6 * ymm1) + ymm5
	vfnmadd213ps	%ymm5, %ymm6, %ymm3     # ymm3 = -(ymm6 * ymm3) + ymm5
	vfnmadd213ps	%ymm5, %ymm6, %ymm2     # ymm2 = -(ymm6 * ymm2) + ymm5
	vfnmadd213ps	%ymm5, %ymm6, %ymm4     # ymm4 = -(ymm6 * ymm4) + ymm5
	vxorps	%xmm6, %xmm6, %xmm6
	vmaxps	%ymm6, %ymm8, %ymm5
	vmovups	%ymm5, 544(%rsp)
	vmaxps	%ymm6, %ymm9, %ymm5
	vmovups	%ymm5, 576(%rsp)
	vmaxps	%ymm6, %ymm10, %ymm5
	vmovups	%ymm5, 608(%rsp)
	vmaxps	%ymm6, %ymm14, %ymm5
	vmovups	%ymm5, 640(%rsp)
	vmaxps	%ymm6, %ymm1, %ymm1
	vmovups	%ymm1, 672(%rsp)
	vmaxps	%ymm6, %ymm3, %ymm1
	vmovups	%ymm1, 704(%rsp)
	vmaxps	%ymm6, %ymm2, %ymm1
	vmovups	%ymm1, 736(%rsp)
	vmaxps	%ymm6, %ymm4, %ymm1
	vmovups	%ymm1, 768(%rsp)
	vmovss	8(%rsp), %xmm1                  # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vmovss	4(%rsp), %xmm2                  # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	vsubss	%xmm1, %xmm2, %xmm2
	vsubss	%xmm1, %xmm0, %xmm1
	vdivss	%xmm2, %xmm7, %xmm2
	vdivss	%xmm0, %xmm7, %xmm0
	movl	$63, %eax
	vmovss	12(%rsp), %xmm7                 # 4-byte Reload
                                        # xmm7 = mem[0],zero,zero,zero
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=2
	testq	%rax, %rax
	movq	%r12, %rax
	je	.LBB0_13
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_9 Depth 3
	movq	%r12, %rcx
	movq	%rax, %r12
	subq	$1, %r12
	cmovbq	%rcx, %r12
	jb	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	vmovss	544(%rsp), %xmm7                # xmm7 = mem[0],zero,zero,zero
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=2
	jb	.LBB0_13
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=2
	cmpq	$1, %rax
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=2
	xorl	%ecx, %ecx
	vmovaps	%xmm7, %xmm3
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	movq	%rax, %rdx
	andq	$-2, %rdx
	xorl	%ecx, %ecx
	vmovaps	%xmm7, %xmm4
	.p2align	4, 0x90
.LBB0_9:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovss	548(%rsp,%rcx,4), %xmm5         # xmm5 = mem[0],zero,zero,zero
	vmovss	552(%rsp,%rcx,4), %xmm3         # xmm3 = mem[0],zero,zero,zero
	vsubss	%xmm4, %xmm5, %xmm6
	vmulss	%xmm1, %xmm6, %xmm6
	vfmadd213ss	%xmm4, %xmm2, %xmm6     # xmm6 = (xmm2 * xmm6) + xmm4
	vmulss	%xmm0, %xmm6, %xmm4
	vmovss	%xmm4, 544(%rsp,%rcx,4)
	vsubss	%xmm5, %xmm3, %xmm4
	vmulss	%xmm1, %xmm4, %xmm4
	vfmadd213ss	%xmm5, %xmm2, %xmm4     # xmm4 = (xmm2 * xmm4) + xmm5
	vmulss	%xmm0, %xmm4, %xmm4
	vmovss	%xmm4, 548(%rsp,%rcx,4)
	addq	$2, %rcx
	vmovaps	%xmm3, %xmm4
	cmpq	%rcx, %rdx
	jne	.LBB0_9
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=2
	testb	$1, %al
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=2
	vmovss	548(%rsp,%rcx,4), %xmm4         # xmm4 = mem[0],zero,zero,zero
	vsubss	%xmm3, %xmm4, %xmm4
	vmulss	%xmm1, %xmm4, %xmm4
	vfmadd213ss	%xmm3, %xmm2, %xmm4     # xmm4 = (xmm2 * xmm4) + xmm3
	vmulss	%xmm0, %xmm4, %xmm3
	vmovss	%xmm3, 544(%rsp,%rcx,4)
	jmp	.LBB0_12
.LBB0_14:
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
	.size	_Z19binomial_put_serialPfS_S_S_S_S_i, .Lfunc_end0-_Z19binomial_put_serialPfS_S_S_S_S_i
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 12.0.0"
	.section	".note.GNU-stack","",@progbits
	.addrsig

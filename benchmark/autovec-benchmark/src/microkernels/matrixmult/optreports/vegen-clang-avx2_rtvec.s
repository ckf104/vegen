	.text
	.file	"matrixmult.cpp"
	.globl	_Z15do_x_matrixMultjPdS_S_i     # -- Begin function _Z15do_x_matrixMultjPdS_S_i
	.p2align	4, 0x90
	.type	_Z15do_x_matrixMultjPdS_S_i,@function
_Z15do_x_matrixMultjPdS_S_i:            # @_Z15do_x_matrixMultjPdS_S_i
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
                                        # kill: def $r8d killed $r8d def $r8
                                        # kill: def $edi killed $edi def $rdi
	testl	%edi, %edi
	je	.LBB0_372
# %bb.1:
	movl	%r8d, %eax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	leal	-1(%rdi), %eax
	movl	%edi, %ebp
	andl	$31, %ebp
	movl	%ebp, -16(%rsp)                 # 4-byte Spill
	cmpl	$31, %eax
	jae	.LBB0_2
.LBB0_357:
	movl	-16(%rsp), %edi                 # 4-byte Reload
	testl	%edi, %edi
	je	.LBB0_372
# %bb.358:
	movq	-72(%rsp), %rbx                 # 8-byte Reload
	leaq	-1(%rbx), %rbp
	movq	%rbp, -64(%rsp)                 # 8-byte Spill
	movl	%ebx, %eax
	andl	$3, %eax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movl	%ebx, %r10d
	andl	$-4, %r10d
	leal	(%r8,%r8), %r11d
	leal	(,%r8,4), %r14d
	leal	(%r8,%r8,2), %r15d
	jmp	.LBB0_359
	.p2align	4, 0x90
.LBB0_371:                              #   in Loop: Header=BB0_359 Depth=1
	movl	-16(%rsp), %edi                 # 4-byte Reload
	testl	%edi, %edi
	je	.LBB0_372
.LBB0_359:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_361 Depth 2
                                        #       Child Loop BB0_362 Depth 3
                                        #         Child Loop BB0_365 Depth 4
                                        #         Child Loop BB0_368 Depth 4
	decl	%edi
	movl	%edi, -16(%rsp)                 # 4-byte Spill
	testl	%r8d, %r8d
	je	.LBB0_371
# %bb.360:                              #   in Loop: Header=BB0_359 Depth=1
	xorl	%eax, %eax
	xorl	%edi, %edi
	jmp	.LBB0_361
	.p2align	4, 0x90
.LBB0_370:                              #   in Loop: Header=BB0_361 Depth=2
	movq	-32(%rsp), %rax                 # 8-byte Reload
	addq	-72(%rsp), %rax                 # 8-byte Folded Reload
	movl	-48(%rsp), %edi                 # 4-byte Reload
	cmpl	%r8d, %edi
	je	.LBB0_371
.LBB0_361:                              #   Parent Loop BB0_359 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_362 Depth 3
                                        #         Child Loop BB0_365 Depth 4
                                        #         Child Loop BB0_368 Depth 4
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movl	%edi, %eax
	imull	%r8d, %eax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	incl	%edi
	movl	%edi, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_362
	.p2align	4, 0x90
.LBB0_369:                              #   in Loop: Header=BB0_362 Depth=3
	movq	%r9, %rdi
	cmpq	-72(%rsp), %r9                  # 8-byte Folded Reload
	je	.LBB0_370
.LBB0_362:                              #   Parent Loop BB0_359 Depth=1
                                        #     Parent Loop BB0_361 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_365 Depth 4
                                        #         Child Loop BB0_368 Depth 4
	movq	-40(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r13d
	vmovsd	(%rcx,%r13,8), %xmm0            # xmm0 = mem[0],zero
	cmpq	$3, -64(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -56(%rsp)                 # 8-byte Spill
	jae	.LBB0_364
# %bb.363:                              #   in Loop: Header=BB0_362 Depth=3
	xorl	%r12d, %r12d
	jmp	.LBB0_366
	.p2align	4, 0x90
.LBB0_364:                              #   in Loop: Header=BB0_362 Depth=3
	movl	%edi, %eax
	xorl	%r12d, %r12d
	movq	-32(%rsp), %rbx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_365:                              #   Parent Loop BB0_359 Depth=1
                                        #     Parent Loop BB0_361 Depth=2
                                        #       Parent Loop BB0_362 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%rbx,%r12), %r9
	movl	%r9d, %edi
	movq	%r10, %rbp
	movl	%eax, %r10d
	vmovsd	(%rdx,%r10,8), %xmm1            # xmm1 = mem[0],zero
	movq	%rbp, %r10
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r13,8)
	leal	1(%r9), %edi
	leal	(%r8,%rax), %ebp
	vmovsd	(%rdx,%rbp,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r13,8)
	leal	2(%r9), %edi
	leal	(%r11,%rax), %ebp
	vmovsd	(%rdx,%rbp,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r13,8)
	addl	$3, %r9d
	leal	(%r15,%rax), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%r9,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r13,8)
	addq	$4, %r12
	addl	%r14d, %eax
	cmpq	%r12, %r10
	jne	.LBB0_365
.LBB0_366:                              #   in Loop: Header=BB0_362 Depth=3
	movq	-56(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r9
	incq	%r9
	cmpq	$0, -24(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_369
# %bb.367:                              #   in Loop: Header=BB0_362 Depth=3
	movl	%r8d, %eax
	imull	%r12d, %eax
	addl	%edi, %eax
	addl	-32(%rsp), %r12d                # 4-byte Folded Reload
	movq	-24(%rsp), %rdi                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_368:                              #   Parent Loop BB0_359 Depth=1
                                        #     Parent Loop BB0_361 Depth=2
                                        #       Parent Loop BB0_362 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r12d, %ebp
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rbp,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r13,8)
	addl	%r8d, %eax
	incl	%r12d
	decq	%rdi
	jne	.LBB0_368
	jmp	.LBB0_369
.LBB0_372:
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
	retq
.LBB0_2:
	.cfi_def_cfa_offset 56
	andl	$-32, %edi
	movq	-72(%rsp), %r15                 # 8-byte Reload
	leaq	-1(%r15), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movl	%r15d, %eax
	andl	$3, %eax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	andl	$-4, %r15d
	leal	(%r8,%r8), %r10d
	leal	(,%r8,4), %r14d
	leal	(%r8,%r8,2), %r11d
	movq	%r10, -24(%rsp)                 # 8-byte Spill
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_356:                              #   in Loop: Header=BB0_3 Depth=1
	movq	-8(%rsp), %rdi                  # 8-byte Reload
	testl	%edi, %edi
	je	.LBB0_357
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_6 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_17 Depth 4
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_25 Depth 4
                                        #         Child Loop BB0_28 Depth 4
                                        #     Child Loop BB0_21 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #         Child Loop BB0_36 Depth 4
                                        #         Child Loop BB0_39 Depth 4
                                        #     Child Loop BB0_32 Depth 2
                                        #       Child Loop BB0_33 Depth 3
                                        #         Child Loop BB0_47 Depth 4
                                        #         Child Loop BB0_50 Depth 4
                                        #     Child Loop BB0_43 Depth 2
                                        #       Child Loop BB0_44 Depth 3
                                        #         Child Loop BB0_58 Depth 4
                                        #         Child Loop BB0_61 Depth 4
                                        #     Child Loop BB0_54 Depth 2
                                        #       Child Loop BB0_55 Depth 3
                                        #         Child Loop BB0_69 Depth 4
                                        #         Child Loop BB0_72 Depth 4
                                        #     Child Loop BB0_65 Depth 2
                                        #       Child Loop BB0_66 Depth 3
                                        #         Child Loop BB0_80 Depth 4
                                        #         Child Loop BB0_83 Depth 4
                                        #     Child Loop BB0_76 Depth 2
                                        #       Child Loop BB0_77 Depth 3
                                        #         Child Loop BB0_91 Depth 4
                                        #         Child Loop BB0_94 Depth 4
                                        #     Child Loop BB0_87 Depth 2
                                        #       Child Loop BB0_88 Depth 3
                                        #         Child Loop BB0_102 Depth 4
                                        #         Child Loop BB0_105 Depth 4
                                        #     Child Loop BB0_98 Depth 2
                                        #       Child Loop BB0_99 Depth 3
                                        #         Child Loop BB0_113 Depth 4
                                        #         Child Loop BB0_116 Depth 4
                                        #     Child Loop BB0_109 Depth 2
                                        #       Child Loop BB0_110 Depth 3
                                        #         Child Loop BB0_124 Depth 4
                                        #         Child Loop BB0_127 Depth 4
                                        #     Child Loop BB0_120 Depth 2
                                        #       Child Loop BB0_121 Depth 3
                                        #         Child Loop BB0_135 Depth 4
                                        #         Child Loop BB0_138 Depth 4
                                        #     Child Loop BB0_131 Depth 2
                                        #       Child Loop BB0_132 Depth 3
                                        #         Child Loop BB0_146 Depth 4
                                        #         Child Loop BB0_149 Depth 4
                                        #     Child Loop BB0_142 Depth 2
                                        #       Child Loop BB0_143 Depth 3
                                        #         Child Loop BB0_157 Depth 4
                                        #         Child Loop BB0_160 Depth 4
                                        #     Child Loop BB0_153 Depth 2
                                        #       Child Loop BB0_154 Depth 3
                                        #         Child Loop BB0_168 Depth 4
                                        #         Child Loop BB0_171 Depth 4
                                        #     Child Loop BB0_164 Depth 2
                                        #       Child Loop BB0_165 Depth 3
                                        #         Child Loop BB0_179 Depth 4
                                        #         Child Loop BB0_182 Depth 4
                                        #     Child Loop BB0_175 Depth 2
                                        #       Child Loop BB0_176 Depth 3
                                        #         Child Loop BB0_190 Depth 4
                                        #         Child Loop BB0_193 Depth 4
                                        #     Child Loop BB0_186 Depth 2
                                        #       Child Loop BB0_187 Depth 3
                                        #         Child Loop BB0_201 Depth 4
                                        #         Child Loop BB0_204 Depth 4
                                        #     Child Loop BB0_197 Depth 2
                                        #       Child Loop BB0_198 Depth 3
                                        #         Child Loop BB0_212 Depth 4
                                        #         Child Loop BB0_215 Depth 4
                                        #     Child Loop BB0_208 Depth 2
                                        #       Child Loop BB0_209 Depth 3
                                        #         Child Loop BB0_223 Depth 4
                                        #         Child Loop BB0_226 Depth 4
                                        #     Child Loop BB0_219 Depth 2
                                        #       Child Loop BB0_220 Depth 3
                                        #         Child Loop BB0_234 Depth 4
                                        #         Child Loop BB0_237 Depth 4
                                        #     Child Loop BB0_230 Depth 2
                                        #       Child Loop BB0_231 Depth 3
                                        #         Child Loop BB0_245 Depth 4
                                        #         Child Loop BB0_248 Depth 4
                                        #     Child Loop BB0_241 Depth 2
                                        #       Child Loop BB0_242 Depth 3
                                        #         Child Loop BB0_256 Depth 4
                                        #         Child Loop BB0_259 Depth 4
                                        #     Child Loop BB0_252 Depth 2
                                        #       Child Loop BB0_253 Depth 3
                                        #         Child Loop BB0_267 Depth 4
                                        #         Child Loop BB0_270 Depth 4
                                        #     Child Loop BB0_263 Depth 2
                                        #       Child Loop BB0_264 Depth 3
                                        #         Child Loop BB0_278 Depth 4
                                        #         Child Loop BB0_281 Depth 4
                                        #     Child Loop BB0_274 Depth 2
                                        #       Child Loop BB0_275 Depth 3
                                        #         Child Loop BB0_289 Depth 4
                                        #         Child Loop BB0_292 Depth 4
                                        #     Child Loop BB0_285 Depth 2
                                        #       Child Loop BB0_286 Depth 3
                                        #         Child Loop BB0_300 Depth 4
                                        #         Child Loop BB0_303 Depth 4
                                        #     Child Loop BB0_296 Depth 2
                                        #       Child Loop BB0_297 Depth 3
                                        #         Child Loop BB0_311 Depth 4
                                        #         Child Loop BB0_314 Depth 4
                                        #     Child Loop BB0_307 Depth 2
                                        #       Child Loop BB0_308 Depth 3
                                        #         Child Loop BB0_322 Depth 4
                                        #         Child Loop BB0_325 Depth 4
                                        #     Child Loop BB0_318 Depth 2
                                        #       Child Loop BB0_319 Depth 3
                                        #         Child Loop BB0_333 Depth 4
                                        #         Child Loop BB0_336 Depth 4
                                        #     Child Loop BB0_329 Depth 2
                                        #       Child Loop BB0_330 Depth 3
                                        #         Child Loop BB0_344 Depth 4
                                        #         Child Loop BB0_347 Depth 4
                                        #     Child Loop BB0_340 Depth 2
                                        #       Child Loop BB0_341 Depth 3
                                        #         Child Loop BB0_350 Depth 4
                                        #         Child Loop BB0_353 Depth 4
	addl	$-32, %edi
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	testl	%r8d, %r8d
	je	.LBB0_356
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	xorl	%edi, %edi
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=2
	movq	-64(%rsp), %rax                 # 8-byte Reload
	addq	-72(%rsp), %rax                 # 8-byte Folded Reload
	movl	-12(%rsp), %edi                 # 4-byte Reload
	cmpl	%r8d, %edi
	je	.LBB0_9
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_17 Depth 4
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movl	%edi, %eax
	imull	%r8d, %eax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	incl	%edi
	movl	%edi, -12(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_6 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	movl	%r11d, %r14d
	movq	%r15, %r11
	movq	%r12, %r15
	je	.LBB0_8
.LBB0_6:                                #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_17 Depth 4
	movq	-48(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r13d
	vmovsd	(%rcx,%r13,8), %xmm0            # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_13
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=3
	xorl	%edi, %edi
	movq	%r15, %r12
	movq	%r11, %r15
	movl	%r14d, %r11d
	jmp	.LBB0_15
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=3
	movl	%edi, %r10d
	xorl	%edi, %edi
	movq	%r15, %r12
	movq	%r11, %r15
	movl	%r14d, %r11d
	movq	-64(%rsp), %r14                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_14:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        #       Parent Loop BB0_6 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r14,%rdi), %rbp
	movl	%ebp, %eax
	movl	%r10d, %r9d
	vmovsd	(%rdx,%r9,8), %xmm1             # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r13,8)
	leal	1(%rbp), %eax
	leal	(%r8,%r10), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r13,8)
	leal	2(%rbp), %eax
	movq	-24(%rsp), %rbx                 # 8-byte Reload
	addl	%r10d, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r13,8)
	addl	$3, %ebp
	leal	(%r15,%r10), %eax
	vmovsd	(%rdx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rbp,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r13,8)
	addq	$4, %rdi
	addl	%r11d, %r10d
	cmpq	%rdi, %r12
	jne	.LBB0_14
.LBB0_15:                               #   in Loop: Header=BB0_6 Depth=3
	movq	-40(%rsp), %rbp                 # 8-byte Reload
	movq	%rbp, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_6 Depth=3
	movl	%r8d, %eax
	imull	%edi, %eax
	addl	%ebp, %eax
	addl	-64(%rsp), %edi                 # 4-byte Folded Reload
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_17:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        #       Parent Loop BB0_6 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%edi, %r9d
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%r9,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r13,8)
	addl	%r8d, %eax
	incl	%edi
	decq	%rbp
	jne	.LBB0_17
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_10 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_20
.LBB0_10:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_25 Depth 4
                                        #         Child Loop BB0_28 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_29:                               #   in Loop: Header=BB0_11 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_19
.LBB0_11:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_25 Depth 4
                                        #         Child Loop BB0_28 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_24
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_26
	.p2align	4, 0x90
.LBB0_24:                               #   in Loop: Header=BB0_11 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_25:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_25
.LBB0_26:                               #   in Loop: Header=BB0_11 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_11 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_28:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_28
	jmp	.LBB0_29
	.p2align	4, 0x90
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_30:                               #   in Loop: Header=BB0_21 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_31
.LBB0_21:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #         Child Loop BB0_36 Depth 4
                                        #         Child Loop BB0_39 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_22
	.p2align	4, 0x90
.LBB0_40:                               #   in Loop: Header=BB0_22 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_30
.LBB0_22:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_36 Depth 4
                                        #         Child Loop BB0_39 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_35
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_37
	.p2align	4, 0x90
.LBB0_35:                               #   in Loop: Header=BB0_22 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_36:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        #       Parent Loop BB0_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_36
.LBB0_37:                               #   in Loop: Header=BB0_22 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_40
# %bb.38:                               #   in Loop: Header=BB0_22 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_39:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        #       Parent Loop BB0_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_39
	jmp	.LBB0_40
	.p2align	4, 0x90
.LBB0_31:                               #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_32
	.p2align	4, 0x90
.LBB0_41:                               #   in Loop: Header=BB0_32 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_42
.LBB0_32:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_33 Depth 3
                                        #         Child Loop BB0_47 Depth 4
                                        #         Child Loop BB0_50 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_33
	.p2align	4, 0x90
.LBB0_51:                               #   in Loop: Header=BB0_33 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_41
.LBB0_33:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_32 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_47 Depth 4
                                        #         Child Loop BB0_50 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_46
# %bb.34:                               #   in Loop: Header=BB0_33 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_48
	.p2align	4, 0x90
.LBB0_46:                               #   in Loop: Header=BB0_33 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_47:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_32 Depth=2
                                        #       Parent Loop BB0_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_47
.LBB0_48:                               #   in Loop: Header=BB0_33 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_51
# %bb.49:                               #   in Loop: Header=BB0_33 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_50:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_32 Depth=2
                                        #       Parent Loop BB0_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_50
	jmp	.LBB0_51
	.p2align	4, 0x90
.LBB0_42:                               #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_43
	.p2align	4, 0x90
.LBB0_52:                               #   in Loop: Header=BB0_43 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_53
.LBB0_43:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_44 Depth 3
                                        #         Child Loop BB0_58 Depth 4
                                        #         Child Loop BB0_61 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_44
	.p2align	4, 0x90
.LBB0_62:                               #   in Loop: Header=BB0_44 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_52
.LBB0_44:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_58 Depth 4
                                        #         Child Loop BB0_61 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_57
# %bb.45:                               #   in Loop: Header=BB0_44 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_59
	.p2align	4, 0x90
.LBB0_57:                               #   in Loop: Header=BB0_44 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_58:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        #       Parent Loop BB0_44 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_58
.LBB0_59:                               #   in Loop: Header=BB0_44 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_62
# %bb.60:                               #   in Loop: Header=BB0_44 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_61:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        #       Parent Loop BB0_44 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_61
	jmp	.LBB0_62
	.p2align	4, 0x90
.LBB0_53:                               #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_54
	.p2align	4, 0x90
.LBB0_63:                               #   in Loop: Header=BB0_54 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_64
.LBB0_54:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_55 Depth 3
                                        #         Child Loop BB0_69 Depth 4
                                        #         Child Loop BB0_72 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_55
	.p2align	4, 0x90
.LBB0_73:                               #   in Loop: Header=BB0_55 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_63
.LBB0_55:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_54 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_69 Depth 4
                                        #         Child Loop BB0_72 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_68
# %bb.56:                               #   in Loop: Header=BB0_55 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_70
	.p2align	4, 0x90
.LBB0_68:                               #   in Loop: Header=BB0_55 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_69:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_54 Depth=2
                                        #       Parent Loop BB0_55 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_69
.LBB0_70:                               #   in Loop: Header=BB0_55 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_73
# %bb.71:                               #   in Loop: Header=BB0_55 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_72:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_54 Depth=2
                                        #       Parent Loop BB0_55 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_72
	jmp	.LBB0_73
	.p2align	4, 0x90
.LBB0_64:                               #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_65
	.p2align	4, 0x90
.LBB0_74:                               #   in Loop: Header=BB0_65 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_75
.LBB0_65:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_66 Depth 3
                                        #         Child Loop BB0_80 Depth 4
                                        #         Child Loop BB0_83 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_66
	.p2align	4, 0x90
.LBB0_84:                               #   in Loop: Header=BB0_66 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_74
.LBB0_66:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_80 Depth 4
                                        #         Child Loop BB0_83 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_79
# %bb.67:                               #   in Loop: Header=BB0_66 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_81
	.p2align	4, 0x90
.LBB0_79:                               #   in Loop: Header=BB0_66 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_80:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_66 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_80
.LBB0_81:                               #   in Loop: Header=BB0_66 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_84
# %bb.82:                               #   in Loop: Header=BB0_66 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_83:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        #       Parent Loop BB0_66 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_83
	jmp	.LBB0_84
	.p2align	4, 0x90
.LBB0_75:                               #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_76
	.p2align	4, 0x90
.LBB0_85:                               #   in Loop: Header=BB0_76 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_86
.LBB0_76:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_77 Depth 3
                                        #         Child Loop BB0_91 Depth 4
                                        #         Child Loop BB0_94 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_77
	.p2align	4, 0x90
.LBB0_95:                               #   in Loop: Header=BB0_77 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_85
.LBB0_77:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_91 Depth 4
                                        #         Child Loop BB0_94 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_90
# %bb.78:                               #   in Loop: Header=BB0_77 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_92
	.p2align	4, 0x90
.LBB0_90:                               #   in Loop: Header=BB0_77 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_91:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        #       Parent Loop BB0_77 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_91
.LBB0_92:                               #   in Loop: Header=BB0_77 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_95
# %bb.93:                               #   in Loop: Header=BB0_77 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_94:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        #       Parent Loop BB0_77 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_94
	jmp	.LBB0_95
	.p2align	4, 0x90
.LBB0_86:                               #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_87
	.p2align	4, 0x90
.LBB0_96:                               #   in Loop: Header=BB0_87 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_97
.LBB0_87:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_88 Depth 3
                                        #         Child Loop BB0_102 Depth 4
                                        #         Child Loop BB0_105 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_88
	.p2align	4, 0x90
.LBB0_106:                              #   in Loop: Header=BB0_88 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_96
.LBB0_88:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_87 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_102 Depth 4
                                        #         Child Loop BB0_105 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_101
# %bb.89:                               #   in Loop: Header=BB0_88 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_103
	.p2align	4, 0x90
.LBB0_101:                              #   in Loop: Header=BB0_88 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_102:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_87 Depth=2
                                        #       Parent Loop BB0_88 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_102
.LBB0_103:                              #   in Loop: Header=BB0_88 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_106
# %bb.104:                              #   in Loop: Header=BB0_88 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_105:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_87 Depth=2
                                        #       Parent Loop BB0_88 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_105
	jmp	.LBB0_106
	.p2align	4, 0x90
.LBB0_97:                               #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_98
	.p2align	4, 0x90
.LBB0_107:                              #   in Loop: Header=BB0_98 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_108
.LBB0_98:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_99 Depth 3
                                        #         Child Loop BB0_113 Depth 4
                                        #         Child Loop BB0_116 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_99
	.p2align	4, 0x90
.LBB0_117:                              #   in Loop: Header=BB0_99 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_107
.LBB0_99:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_98 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_113 Depth 4
                                        #         Child Loop BB0_116 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_112
# %bb.100:                              #   in Loop: Header=BB0_99 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_114
	.p2align	4, 0x90
.LBB0_112:                              #   in Loop: Header=BB0_99 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_113:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_98 Depth=2
                                        #       Parent Loop BB0_99 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_113
.LBB0_114:                              #   in Loop: Header=BB0_99 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_117
# %bb.115:                              #   in Loop: Header=BB0_99 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_116:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_98 Depth=2
                                        #       Parent Loop BB0_99 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_116
	jmp	.LBB0_117
	.p2align	4, 0x90
.LBB0_108:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_109
	.p2align	4, 0x90
.LBB0_118:                              #   in Loop: Header=BB0_109 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_119
.LBB0_109:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_110 Depth 3
                                        #         Child Loop BB0_124 Depth 4
                                        #         Child Loop BB0_127 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_110
	.p2align	4, 0x90
.LBB0_128:                              #   in Loop: Header=BB0_110 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_118
.LBB0_110:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_109 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_124 Depth 4
                                        #         Child Loop BB0_127 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_123
# %bb.111:                              #   in Loop: Header=BB0_110 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_125
	.p2align	4, 0x90
.LBB0_123:                              #   in Loop: Header=BB0_110 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_124:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_109 Depth=2
                                        #       Parent Loop BB0_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_124
.LBB0_125:                              #   in Loop: Header=BB0_110 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_128
# %bb.126:                              #   in Loop: Header=BB0_110 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_127:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_109 Depth=2
                                        #       Parent Loop BB0_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_127
	jmp	.LBB0_128
	.p2align	4, 0x90
.LBB0_119:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_120
	.p2align	4, 0x90
.LBB0_129:                              #   in Loop: Header=BB0_120 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_130
.LBB0_120:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_121 Depth 3
                                        #         Child Loop BB0_135 Depth 4
                                        #         Child Loop BB0_138 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_121
	.p2align	4, 0x90
.LBB0_139:                              #   in Loop: Header=BB0_121 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_129
.LBB0_121:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_120 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_135 Depth 4
                                        #         Child Loop BB0_138 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_134
# %bb.122:                              #   in Loop: Header=BB0_121 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_136
	.p2align	4, 0x90
.LBB0_134:                              #   in Loop: Header=BB0_121 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_135:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_120 Depth=2
                                        #       Parent Loop BB0_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_135
.LBB0_136:                              #   in Loop: Header=BB0_121 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_139
# %bb.137:                              #   in Loop: Header=BB0_121 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_138:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_120 Depth=2
                                        #       Parent Loop BB0_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_138
	jmp	.LBB0_139
	.p2align	4, 0x90
.LBB0_130:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_131
	.p2align	4, 0x90
.LBB0_140:                              #   in Loop: Header=BB0_131 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_141
.LBB0_131:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_132 Depth 3
                                        #         Child Loop BB0_146 Depth 4
                                        #         Child Loop BB0_149 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_132
	.p2align	4, 0x90
.LBB0_150:                              #   in Loop: Header=BB0_132 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_140
.LBB0_132:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_146 Depth 4
                                        #         Child Loop BB0_149 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_145
# %bb.133:                              #   in Loop: Header=BB0_132 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_147
	.p2align	4, 0x90
.LBB0_145:                              #   in Loop: Header=BB0_132 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_146:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        #       Parent Loop BB0_132 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_146
.LBB0_147:                              #   in Loop: Header=BB0_132 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_150
# %bb.148:                              #   in Loop: Header=BB0_132 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_149:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        #       Parent Loop BB0_132 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_149
	jmp	.LBB0_150
	.p2align	4, 0x90
.LBB0_141:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_142
	.p2align	4, 0x90
.LBB0_151:                              #   in Loop: Header=BB0_142 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_152
.LBB0_142:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_143 Depth 3
                                        #         Child Loop BB0_157 Depth 4
                                        #         Child Loop BB0_160 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_143
	.p2align	4, 0x90
.LBB0_161:                              #   in Loop: Header=BB0_143 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_151
.LBB0_143:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_142 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_157 Depth 4
                                        #         Child Loop BB0_160 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_156
# %bb.144:                              #   in Loop: Header=BB0_143 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_158
	.p2align	4, 0x90
.LBB0_156:                              #   in Loop: Header=BB0_143 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_157:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_142 Depth=2
                                        #       Parent Loop BB0_143 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_157
.LBB0_158:                              #   in Loop: Header=BB0_143 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_161
# %bb.159:                              #   in Loop: Header=BB0_143 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_160:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_142 Depth=2
                                        #       Parent Loop BB0_143 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_160
	jmp	.LBB0_161
	.p2align	4, 0x90
.LBB0_152:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_153
	.p2align	4, 0x90
.LBB0_162:                              #   in Loop: Header=BB0_153 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_163
.LBB0_153:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_154 Depth 3
                                        #         Child Loop BB0_168 Depth 4
                                        #         Child Loop BB0_171 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_154
	.p2align	4, 0x90
.LBB0_172:                              #   in Loop: Header=BB0_154 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_162
.LBB0_154:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_153 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_168 Depth 4
                                        #         Child Loop BB0_171 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_167
# %bb.155:                              #   in Loop: Header=BB0_154 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_169
	.p2align	4, 0x90
.LBB0_167:                              #   in Loop: Header=BB0_154 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_168:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_153 Depth=2
                                        #       Parent Loop BB0_154 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_168
.LBB0_169:                              #   in Loop: Header=BB0_154 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_172
# %bb.170:                              #   in Loop: Header=BB0_154 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_171:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_153 Depth=2
                                        #       Parent Loop BB0_154 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_171
	jmp	.LBB0_172
	.p2align	4, 0x90
.LBB0_163:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_164
	.p2align	4, 0x90
.LBB0_173:                              #   in Loop: Header=BB0_164 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_174
.LBB0_164:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_165 Depth 3
                                        #         Child Loop BB0_179 Depth 4
                                        #         Child Loop BB0_182 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_165
	.p2align	4, 0x90
.LBB0_183:                              #   in Loop: Header=BB0_165 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_173
.LBB0_165:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_164 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_179 Depth 4
                                        #         Child Loop BB0_182 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_178
# %bb.166:                              #   in Loop: Header=BB0_165 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_180
	.p2align	4, 0x90
.LBB0_178:                              #   in Loop: Header=BB0_165 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_179:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_164 Depth=2
                                        #       Parent Loop BB0_165 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_179
.LBB0_180:                              #   in Loop: Header=BB0_165 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_183
# %bb.181:                              #   in Loop: Header=BB0_165 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_182:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_164 Depth=2
                                        #       Parent Loop BB0_165 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_182
	jmp	.LBB0_183
	.p2align	4, 0x90
.LBB0_174:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_175
	.p2align	4, 0x90
.LBB0_184:                              #   in Loop: Header=BB0_175 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_185
.LBB0_175:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_176 Depth 3
                                        #         Child Loop BB0_190 Depth 4
                                        #         Child Loop BB0_193 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_176
	.p2align	4, 0x90
.LBB0_194:                              #   in Loop: Header=BB0_176 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_184
.LBB0_176:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_175 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_190 Depth 4
                                        #         Child Loop BB0_193 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_189
# %bb.177:                              #   in Loop: Header=BB0_176 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_191
	.p2align	4, 0x90
.LBB0_189:                              #   in Loop: Header=BB0_176 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_190:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_175 Depth=2
                                        #       Parent Loop BB0_176 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_190
.LBB0_191:                              #   in Loop: Header=BB0_176 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_194
# %bb.192:                              #   in Loop: Header=BB0_176 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_193:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_175 Depth=2
                                        #       Parent Loop BB0_176 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_193
	jmp	.LBB0_194
	.p2align	4, 0x90
.LBB0_185:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_186
	.p2align	4, 0x90
.LBB0_195:                              #   in Loop: Header=BB0_186 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_196
.LBB0_186:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_187 Depth 3
                                        #         Child Loop BB0_201 Depth 4
                                        #         Child Loop BB0_204 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_187
	.p2align	4, 0x90
.LBB0_205:                              #   in Loop: Header=BB0_187 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_195
.LBB0_187:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_186 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_201 Depth 4
                                        #         Child Loop BB0_204 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_200
# %bb.188:                              #   in Loop: Header=BB0_187 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_202
	.p2align	4, 0x90
.LBB0_200:                              #   in Loop: Header=BB0_187 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_201:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_186 Depth=2
                                        #       Parent Loop BB0_187 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_201
.LBB0_202:                              #   in Loop: Header=BB0_187 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_205
# %bb.203:                              #   in Loop: Header=BB0_187 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_204:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_186 Depth=2
                                        #       Parent Loop BB0_187 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_204
	jmp	.LBB0_205
	.p2align	4, 0x90
.LBB0_196:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_197
	.p2align	4, 0x90
.LBB0_206:                              #   in Loop: Header=BB0_197 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_207
.LBB0_197:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_198 Depth 3
                                        #         Child Loop BB0_212 Depth 4
                                        #         Child Loop BB0_215 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_198
	.p2align	4, 0x90
.LBB0_216:                              #   in Loop: Header=BB0_198 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_206
.LBB0_198:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_197 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_212 Depth 4
                                        #         Child Loop BB0_215 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_211
# %bb.199:                              #   in Loop: Header=BB0_198 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_213
	.p2align	4, 0x90
.LBB0_211:                              #   in Loop: Header=BB0_198 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_212:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_197 Depth=2
                                        #       Parent Loop BB0_198 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_212
.LBB0_213:                              #   in Loop: Header=BB0_198 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_216
# %bb.214:                              #   in Loop: Header=BB0_198 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_215:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_197 Depth=2
                                        #       Parent Loop BB0_198 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_215
	jmp	.LBB0_216
	.p2align	4, 0x90
.LBB0_207:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_208
	.p2align	4, 0x90
.LBB0_217:                              #   in Loop: Header=BB0_208 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_218
.LBB0_208:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_209 Depth 3
                                        #         Child Loop BB0_223 Depth 4
                                        #         Child Loop BB0_226 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_209
	.p2align	4, 0x90
.LBB0_227:                              #   in Loop: Header=BB0_209 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_217
.LBB0_209:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_208 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_223 Depth 4
                                        #         Child Loop BB0_226 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_222
# %bb.210:                              #   in Loop: Header=BB0_209 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_224
	.p2align	4, 0x90
.LBB0_222:                              #   in Loop: Header=BB0_209 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_223:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_208 Depth=2
                                        #       Parent Loop BB0_209 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_223
.LBB0_224:                              #   in Loop: Header=BB0_209 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_227
# %bb.225:                              #   in Loop: Header=BB0_209 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_226:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_208 Depth=2
                                        #       Parent Loop BB0_209 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_226
	jmp	.LBB0_227
	.p2align	4, 0x90
.LBB0_218:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_219
	.p2align	4, 0x90
.LBB0_228:                              #   in Loop: Header=BB0_219 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_229
.LBB0_219:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_220 Depth 3
                                        #         Child Loop BB0_234 Depth 4
                                        #         Child Loop BB0_237 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_220
	.p2align	4, 0x90
.LBB0_238:                              #   in Loop: Header=BB0_220 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_228
.LBB0_220:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_219 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_234 Depth 4
                                        #         Child Loop BB0_237 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_233
# %bb.221:                              #   in Loop: Header=BB0_220 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_235
	.p2align	4, 0x90
.LBB0_233:                              #   in Loop: Header=BB0_220 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_234:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_219 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_234
.LBB0_235:                              #   in Loop: Header=BB0_220 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_238
# %bb.236:                              #   in Loop: Header=BB0_220 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_237:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_219 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_237
	jmp	.LBB0_238
	.p2align	4, 0x90
.LBB0_229:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_230
	.p2align	4, 0x90
.LBB0_239:                              #   in Loop: Header=BB0_230 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_240
.LBB0_230:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_231 Depth 3
                                        #         Child Loop BB0_245 Depth 4
                                        #         Child Loop BB0_248 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_231
	.p2align	4, 0x90
.LBB0_249:                              #   in Loop: Header=BB0_231 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_239
.LBB0_231:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_230 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_245 Depth 4
                                        #         Child Loop BB0_248 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_244
# %bb.232:                              #   in Loop: Header=BB0_231 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_246
	.p2align	4, 0x90
.LBB0_244:                              #   in Loop: Header=BB0_231 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_245:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_230 Depth=2
                                        #       Parent Loop BB0_231 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_245
.LBB0_246:                              #   in Loop: Header=BB0_231 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_249
# %bb.247:                              #   in Loop: Header=BB0_231 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_248:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_230 Depth=2
                                        #       Parent Loop BB0_231 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_248
	jmp	.LBB0_249
	.p2align	4, 0x90
.LBB0_240:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_241
	.p2align	4, 0x90
.LBB0_250:                              #   in Loop: Header=BB0_241 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_251
.LBB0_241:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_242 Depth 3
                                        #         Child Loop BB0_256 Depth 4
                                        #         Child Loop BB0_259 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_242
	.p2align	4, 0x90
.LBB0_260:                              #   in Loop: Header=BB0_242 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_250
.LBB0_242:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_241 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_256 Depth 4
                                        #         Child Loop BB0_259 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_255
# %bb.243:                              #   in Loop: Header=BB0_242 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_257
	.p2align	4, 0x90
.LBB0_255:                              #   in Loop: Header=BB0_242 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_256:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_241 Depth=2
                                        #       Parent Loop BB0_242 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_256
.LBB0_257:                              #   in Loop: Header=BB0_242 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_260
# %bb.258:                              #   in Loop: Header=BB0_242 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_259:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_241 Depth=2
                                        #       Parent Loop BB0_242 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_259
	jmp	.LBB0_260
	.p2align	4, 0x90
.LBB0_251:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_252
	.p2align	4, 0x90
.LBB0_261:                              #   in Loop: Header=BB0_252 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_262
.LBB0_252:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_253 Depth 3
                                        #         Child Loop BB0_267 Depth 4
                                        #         Child Loop BB0_270 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_253
	.p2align	4, 0x90
.LBB0_271:                              #   in Loop: Header=BB0_253 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_261
.LBB0_253:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_252 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_267 Depth 4
                                        #         Child Loop BB0_270 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_266
# %bb.254:                              #   in Loop: Header=BB0_253 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_268
	.p2align	4, 0x90
.LBB0_266:                              #   in Loop: Header=BB0_253 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_267:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_252 Depth=2
                                        #       Parent Loop BB0_253 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_267
.LBB0_268:                              #   in Loop: Header=BB0_253 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_271
# %bb.269:                              #   in Loop: Header=BB0_253 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_270:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_252 Depth=2
                                        #       Parent Loop BB0_253 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_270
	jmp	.LBB0_271
	.p2align	4, 0x90
.LBB0_262:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_263
	.p2align	4, 0x90
.LBB0_272:                              #   in Loop: Header=BB0_263 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_273
.LBB0_263:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_264 Depth 3
                                        #         Child Loop BB0_278 Depth 4
                                        #         Child Loop BB0_281 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_264
	.p2align	4, 0x90
.LBB0_282:                              #   in Loop: Header=BB0_264 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_272
.LBB0_264:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_278 Depth 4
                                        #         Child Loop BB0_281 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_277
# %bb.265:                              #   in Loop: Header=BB0_264 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_279
	.p2align	4, 0x90
.LBB0_277:                              #   in Loop: Header=BB0_264 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_278:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        #       Parent Loop BB0_264 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_278
.LBB0_279:                              #   in Loop: Header=BB0_264 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_282
# %bb.280:                              #   in Loop: Header=BB0_264 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_281:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        #       Parent Loop BB0_264 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_281
	jmp	.LBB0_282
	.p2align	4, 0x90
.LBB0_273:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_274
	.p2align	4, 0x90
.LBB0_283:                              #   in Loop: Header=BB0_274 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_284
.LBB0_274:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_275 Depth 3
                                        #         Child Loop BB0_289 Depth 4
                                        #         Child Loop BB0_292 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_275
	.p2align	4, 0x90
.LBB0_293:                              #   in Loop: Header=BB0_275 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_283
.LBB0_275:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_274 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_289 Depth 4
                                        #         Child Loop BB0_292 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_288
# %bb.276:                              #   in Loop: Header=BB0_275 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_290
	.p2align	4, 0x90
.LBB0_288:                              #   in Loop: Header=BB0_275 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_289:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_274 Depth=2
                                        #       Parent Loop BB0_275 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_289
.LBB0_290:                              #   in Loop: Header=BB0_275 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_293
# %bb.291:                              #   in Loop: Header=BB0_275 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_292:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_274 Depth=2
                                        #       Parent Loop BB0_275 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_292
	jmp	.LBB0_293
	.p2align	4, 0x90
.LBB0_284:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_285
	.p2align	4, 0x90
.LBB0_294:                              #   in Loop: Header=BB0_285 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_295
.LBB0_285:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_286 Depth 3
                                        #         Child Loop BB0_300 Depth 4
                                        #         Child Loop BB0_303 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_286
	.p2align	4, 0x90
.LBB0_304:                              #   in Loop: Header=BB0_286 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_294
.LBB0_286:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_285 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_300 Depth 4
                                        #         Child Loop BB0_303 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_299
# %bb.287:                              #   in Loop: Header=BB0_286 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_301
	.p2align	4, 0x90
.LBB0_299:                              #   in Loop: Header=BB0_286 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_300:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_285 Depth=2
                                        #       Parent Loop BB0_286 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_300
.LBB0_301:                              #   in Loop: Header=BB0_286 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_304
# %bb.302:                              #   in Loop: Header=BB0_286 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_303:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_285 Depth=2
                                        #       Parent Loop BB0_286 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_303
	jmp	.LBB0_304
	.p2align	4, 0x90
.LBB0_295:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_296
	.p2align	4, 0x90
.LBB0_305:                              #   in Loop: Header=BB0_296 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_306
.LBB0_296:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_297 Depth 3
                                        #         Child Loop BB0_311 Depth 4
                                        #         Child Loop BB0_314 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_297
	.p2align	4, 0x90
.LBB0_315:                              #   in Loop: Header=BB0_297 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_305
.LBB0_297:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_296 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_311 Depth 4
                                        #         Child Loop BB0_314 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_310
# %bb.298:                              #   in Loop: Header=BB0_297 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_312
	.p2align	4, 0x90
.LBB0_310:                              #   in Loop: Header=BB0_297 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_311:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_296 Depth=2
                                        #       Parent Loop BB0_297 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_311
.LBB0_312:                              #   in Loop: Header=BB0_297 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_315
# %bb.313:                              #   in Loop: Header=BB0_297 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_314:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_296 Depth=2
                                        #       Parent Loop BB0_297 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_314
	jmp	.LBB0_315
	.p2align	4, 0x90
.LBB0_306:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_307
	.p2align	4, 0x90
.LBB0_316:                              #   in Loop: Header=BB0_307 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_317
.LBB0_307:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_308 Depth 3
                                        #         Child Loop BB0_322 Depth 4
                                        #         Child Loop BB0_325 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_308
	.p2align	4, 0x90
.LBB0_326:                              #   in Loop: Header=BB0_308 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_316
.LBB0_308:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_307 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_322 Depth 4
                                        #         Child Loop BB0_325 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_321
# %bb.309:                              #   in Loop: Header=BB0_308 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_323
	.p2align	4, 0x90
.LBB0_321:                              #   in Loop: Header=BB0_308 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_322:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_307 Depth=2
                                        #       Parent Loop BB0_308 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_322
.LBB0_323:                              #   in Loop: Header=BB0_308 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_326
# %bb.324:                              #   in Loop: Header=BB0_308 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_325:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_307 Depth=2
                                        #       Parent Loop BB0_308 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_325
	jmp	.LBB0_326
	.p2align	4, 0x90
.LBB0_317:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_318
	.p2align	4, 0x90
.LBB0_327:                              #   in Loop: Header=BB0_318 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_328
.LBB0_318:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_319 Depth 3
                                        #         Child Loop BB0_333 Depth 4
                                        #         Child Loop BB0_336 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_319
	.p2align	4, 0x90
.LBB0_337:                              #   in Loop: Header=BB0_319 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_327
.LBB0_319:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_318 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_333 Depth 4
                                        #         Child Loop BB0_336 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_332
# %bb.320:                              #   in Loop: Header=BB0_319 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_334
	.p2align	4, 0x90
.LBB0_332:                              #   in Loop: Header=BB0_319 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_333:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_318 Depth=2
                                        #       Parent Loop BB0_319 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_333
.LBB0_334:                              #   in Loop: Header=BB0_319 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_337
# %bb.335:                              #   in Loop: Header=BB0_319 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_336:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_318 Depth=2
                                        #       Parent Loop BB0_319 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_336
	jmp	.LBB0_337
	.p2align	4, 0x90
.LBB0_328:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_329
	.p2align	4, 0x90
.LBB0_338:                              #   in Loop: Header=BB0_329 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_339
.LBB0_329:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_330 Depth 3
                                        #         Child Loop BB0_344 Depth 4
                                        #         Child Loop BB0_347 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_330
	.p2align	4, 0x90
.LBB0_348:                              #   in Loop: Header=BB0_330 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_338
.LBB0_330:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_329 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_344 Depth 4
                                        #         Child Loop BB0_347 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_343
# %bb.331:                              #   in Loop: Header=BB0_330 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_345
	.p2align	4, 0x90
.LBB0_343:                              #   in Loop: Header=BB0_330 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_344:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_329 Depth=2
                                        #       Parent Loop BB0_330 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_344
.LBB0_345:                              #   in Loop: Header=BB0_330 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_348
# %bb.346:                              #   in Loop: Header=BB0_330 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_347:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_329 Depth=2
                                        #       Parent Loop BB0_330 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_347
	jmp	.LBB0_348
	.p2align	4, 0x90
.LBB0_339:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB0_340
	.p2align	4, 0x90
.LBB0_355:                              #   in Loop: Header=BB0_340 Depth=2
	addq	-72(%rsp), %r12                 # 8-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	%r8d, %eax
	je	.LBB0_356
.LBB0_340:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_341 Depth 3
                                        #         Child Loop BB0_350 Depth 4
                                        #         Child Loop BB0_353 Depth 4
	movl	%eax, %edi
	imull	%r8d, %edi
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	incl	%eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_341
	.p2align	4, 0x90
.LBB0_354:                              #   in Loop: Header=BB0_341 Depth=3
	movq	%r10, %rdi
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	je	.LBB0_355
.LBB0_341:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_340 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_350 Depth 4
                                        #         Child Loop BB0_353 Depth 4
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdi), %r9d
	vmovsd	(%rcx,%r9,8), %xmm0             # xmm0 = mem[0],zero
	cmpq	$3, -32(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	jae	.LBB0_349
# %bb.342:                              #   in Loop: Header=BB0_341 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB0_351
	.p2align	4, 0x90
.LBB0_349:                              #   in Loop: Header=BB0_341 Depth=3
	movq	%rdi, %rbp
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_350:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_340 Depth=2
                                        #       Parent Loop BB0_341 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r12,%r13), %rax
	movl	%eax, %ebx
	movl	%ebp, %edi
	vmovsd	(%rdx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rbx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	leal	1(%rax), %edi
	leal	(%r8,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	leal	2(%rax), %edi
	leal	(%r10,%rbp), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r9,8)
	addl	$3, %eax
	leal	(%r11,%rbp), %edi
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r9,8)
	addq	$4, %r13
	addl	%r14d, %ebp
	cmpq	%r13, %r15
	jne	.LBB0_350
.LBB0_351:                              #   in Loop: Header=BB0_341 Depth=3
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, %r10
	incq	%r10
	cmpq	$0, -56(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_354
# %bb.352:                              #   in Loop: Header=BB0_341 Depth=3
	movl	%r8d, %eax
	imull	%r13d, %eax
	addl	%edi, %eax
	addl	%r12d, %r13d
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_353:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_340 Depth=2
                                        #       Parent Loop BB0_341 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %edi
	movl	%eax, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r9,8)
	addl	%r8d, %eax
	incl	%r13d
	decq	%rbp
	jne	.LBB0_353
	jmp	.LBB0_354
.Lfunc_end0:
	.size	_Z15do_x_matrixMultjPdS_S_i, .Lfunc_end0-_Z15do_x_matrixMultjPdS_S_i
	.cfi_endproc
                                        # -- End function
	.globl	_Z16randomInitMatrixPdi         # -- Begin function _Z16randomInitMatrixPdi
	.p2align	4, 0x90
	.type	_Z16randomInitMatrixPdi,@function
_Z16randomInitMatrixPdi:                # @_Z16randomInitMatrixPdi
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
                                        # kill: def $esi killed $esi def $rsi
	testl	%esi, %esi
	je	.LBB1_10
# %bb.1:
	movl	%esi, %r10d
	leaq	-1(%r10), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movl	%r10d, %eax
	andl	$7, %eax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	andl	$-8, %r10d
	leal	(%rsi,%rsi), %r11d
	leal	(%r11,%r11,2), %r14d
	leal	(,%rsi,8), %r12d
	leal	(%rsi,%rsi,4), %r13d
	leal	(,%rsi,4), %r9d
	leal	(%rsi,%rsi,2), %r8d
	movl	%r12d, %eax
	subl	%esi, %eax
	xorl	%r15d, %r15d
	movabsq	$4607182418800017408, %rbp      # imm = 0x3FF0000000000000
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_2 Depth=1
	incl	%r15d
	cmpl	%esi, %r15d
	je	.LBB1_10
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #     Child Loop BB1_8 Depth 2
	cmpq	$7, -8(%rsp)                    # 8-byte Folded Reload
	jae	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %rdx
	xorl	%ecx, %ecx
	jmp	.LBB1_6
	.p2align	4, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %rdx
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_5:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %ebx
	movq	%rbp, (%rdi,%rbx,8)
	leal	(%rsi,%r15), %ebx
	movq	%rbp, (%rdi,%rbx,8)
	leal	(%r11,%r15), %ebx
	movq	%rbp, (%rdi,%rbx,8)
	leal	(%r8,%r15), %ebx
	movq	%rbp, (%rdi,%rbx,8)
	leal	(%r9,%r15), %ebx
	movq	%rbp, (%rdi,%rbx,8)
	leal	(%r13,%r15), %ebx
	movq	%rbp, (%rdi,%rbx,8)
	leal	(%r14,%r15), %ebx
	movq	%rbp, (%rdi,%rbx,8)
	leal	(%rax,%r15), %ebx
	movq	%rbp, (%rdi,%rbx,8)
	addq	$8, %rcx
	addl	%r12d, %r15d
	cmpq	%rcx, %r10
	jne	.LBB1_5
.LBB1_6:                                #   in Loop: Header=BB1_2 Depth=1
	cmpq	$0, -16(%rsp)                   # 8-byte Folded Reload
	movq	%rdx, %r15
	je	.LBB1_9
# %bb.7:                                #   in Loop: Header=BB1_2 Depth=1
	imull	%esi, %ecx
	addl	%r15d, %ecx
	movq	-16(%rsp), %rbx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB1_8:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %edx
	movq	%rbp, (%rdi,%rdx,8)
	addl	%esi, %ecx
	decq	%rbx
	jne	.LBB1_8
	jmp	.LBB1_9
.LBB1_10:
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
	retq
.Lfunc_end1:
	.size	_Z16randomInitMatrixPdi, .Lfunc_end1-_Z16randomInitMatrixPdi
	.cfi_endproc
                                        # -- End function
	.globl	_Z10zeroMatrixPdi               # -- Begin function _Z10zeroMatrixPdi
	.p2align	4, 0x90
	.type	_Z10zeroMatrixPdi,@function
_Z10zeroMatrixPdi:                      # @_Z10zeroMatrixPdi
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
                                        # kill: def $esi killed $esi def $rsi
	testl	%esi, %esi
	je	.LBB2_10
# %bb.1:
	movl	%esi, %r10d
	leaq	-1(%r10), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movl	%r10d, %eax
	andl	$7, %eax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	andl	$-8, %r10d
	leal	(%rsi,%rsi), %r11d
	leal	(%r11,%r11,2), %r14d
	leal	(,%rsi,8), %r12d
	leal	(%rsi,%rsi,4), %r13d
	leal	(,%rsi,4), %r9d
	leal	(%rsi,%rsi,2), %edx
	movl	%r12d, %eax
	subl	%esi, %eax
	xorl	%r15d, %r15d
	jmp	.LBB2_2
	.p2align	4, 0x90
.LBB2_9:                                #   in Loop: Header=BB2_2 Depth=1
	incl	%r15d
	cmpl	%esi, %r15d
	je	.LBB2_10
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
                                        #     Child Loop BB2_8 Depth 2
	cmpq	$7, -8(%rsp)                    # 8-byte Folded Reload
	jae	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB2_6
	.p2align	4, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_2 Depth=1
	movl	%r15d, %ecx
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB2_5:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %r8d
	movq	$0, (%rdi,%r8,8)
	leal	(%rsi,%rcx), %ebx
	movq	$0, (%rdi,%rbx,8)
	leal	(%r11,%rcx), %ebx
	movq	$0, (%rdi,%rbx,8)
	leal	(%rdx,%rcx), %ebx
	movq	$0, (%rdi,%rbx,8)
	leal	(%r9,%rcx), %ebx
	movq	$0, (%rdi,%rbx,8)
	leal	(%r13,%rcx), %ebx
	movq	$0, (%rdi,%rbx,8)
	leal	(%r14,%rcx), %ebx
	movq	$0, (%rdi,%rbx,8)
	leal	(%rax,%rcx), %ebx
	movq	$0, (%rdi,%rbx,8)
	addq	$8, %rbp
	addl	%r12d, %ecx
	cmpq	%rbp, %r10
	jne	.LBB2_5
.LBB2_6:                                #   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, -16(%rsp)                   # 8-byte Folded Reload
	je	.LBB2_9
# %bb.7:                                #   in Loop: Header=BB2_2 Depth=1
	imull	%esi, %ebp
	addl	%r15d, %ebp
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB2_8:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, %ebx
	movq	$0, (%rdi,%rbx,8)
	addl	%esi, %ebp
	decq	%rcx
	jne	.LBB2_8
	jmp	.LBB2_9
.LBB2_10:
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
	retq
.Lfunc_end2:
	.size	_Z10zeroMatrixPdi, .Lfunc_end2-_Z10zeroMatrixPdi
	.cfi_endproc
                                        # -- End function
	.globl	_Z6sumAllPdi                    # -- Begin function _Z6sumAllPdi
	.p2align	4, 0x90
	.type	_Z6sumAllPdi,@function
_Z6sumAllPdi:                           # @_Z6sumAllPdi
	.cfi_startproc
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	testl	%esi, %esi
	je	.LBB3_1
# %bb.2:
	movl	%esi, %edx
	leaq	-1(%rdx), %rcx
	movl	%edx, %eax
	andl	$7, %eax
	cmpq	$7, %rcx
	jae	.LBB3_4
# %bb.3:
	xorl	%ecx, %ecx
                                        # implicit-def: $rdx
	leal	-1(%rsi), %r8d
	testq	%rax, %rax
	jne	.LBB3_8
.LBB3_11:
	imull	%esi, %r8d
	addl	%r8d, %edx
	vcvttsd2si	(%rdi,%rdx,8), %eax
	retq
.LBB3_1:
	xorl	%eax, %eax
	retq
.LBB3_4:
	andl	$-8, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	addq	$8, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB3_5
# %bb.6:
	leaq	-1(%rcx), %rdx
	leal	-1(%rsi), %r8d
	testq	%rax, %rax
	je	.LBB3_11
.LBB3_8:
	negq	%rax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB3_9:                                # =>This Inner Loop Header: Depth=1
	decq	%rdx
	cmpq	%rdx, %rax
	jne	.LBB3_9
# %bb.10:
	notq	%rdx
	addq	%rcx, %rdx
	imull	%esi, %r8d
	addl	%r8d, %edx
	vcvttsd2si	(%rdi,%rdx,8), %eax
	retq
.Lfunc_end3:
	.size	_Z6sumAllPdi, .Lfunc_end3-_Z6sumAllPdi
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
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
	subq	$600, %rsp                      # imm = 0x258
	.cfi_def_cfa_offset 656
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpl	$3, %edi
	jne	.LBB4_1
# %bb.12:
	movq	%rsi, %rbx
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, 12(%rsp)
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, 36(%rsp)
	jmp	.LBB4_13
.LBB4_1:
	leaq	80(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev
	leaq	96(%rsp), %r14
.Ltmp0:
	movl	$.L.str, %esi
	movq	%r14, %rdi
	movl	$8, %edx
	callq	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
.Ltmp1:
# %bb.2:
	movq	80(%rsp), %rcx
	addq	-24(%rcx), %rbx
	testq	%rax, %rax
	je	.LBB4_3
# %bb.4:
.Ltmp2:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.Ltmp3:
	jmp	.LBB4_5
.LBB4_3:
	movl	32(%rbx), %esi
	orl	$4, %esi
.Ltmp4:
	movq	%rbx, %rdi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.Ltmp5:
.LBB4_5:
.Ltmp6:
	leaq	80(%rsp), %rdi
	leaq	12(%rsp), %rsi
	callq	_ZNSirsERi
.Ltmp7:
# %bb.6:
.Ltmp8:
	leaq	36(%rsp), %rsi
	movq	%rax, %rdi
	callq	_ZNSirsERi
.Ltmp9:
# %bb.7:
.Ltmp10:
	movq	%r14, %rdi
	callq	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.Ltmp11:
# %bb.8:
	testq	%rax, %rax
	jne	.LBB4_10
# %bb.9:
	movq	80(%rsp), %rax
	movq	-24(%rax), %rax
	leaq	(%rsp,%rax), %rdi
	addq	$80, %rdi
	movl	112(%rsp,%rax), %esi
	orl	$4, %esi
.Ltmp12:
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.Ltmp13:
.LBB4_10:
	movq	_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rbp
	movq	%rax, 80(%rsp)
	movq	24(%rbx), %rcx
	movq	-24(%rax), %rax
	movq	%rcx, 80(%rsp,%rax)
	movq	%r14, %rdi
	callq	_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev
	movq	%rbp, 80(%rsp)
	movq	16(%rbx), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 80(%rsp,%rcx)
	movq	$0, 88(%rsp)
	leaq	336(%rsp), %rdi
	callq	_ZNSt8ios_baseD2Ev
.LBB4_13:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$5, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	12(%rsp), %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_76
# %bb.14:
	cmpb	$0, 56(%rbx)
	je	.LBB4_16
# %bb.15:
	movb	67(%rbx), %al
	jmp	.LBB4_17
.LBB4_16:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB4_17:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	movl	$7, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	36(%rsp), %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_76
# %bb.18:
	cmpb	$0, 56(%rbx)
	je	.LBB4_20
# %bb.19:
	movb	67(%rbx), %al
	jmp	.LBB4_21
.LBB4_20:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB4_21:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	12(%rsp), %r15d
	movl	%r15d, %ebp
	imull	%ebp, %ebp
	shlq	$3, %rbp
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, %r14
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, %rbx
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	testq	%r15, %r15
	je	.LBB4_49
# %bb.22:
	leaq	-1(%r15), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movl	%r15d, %eax
	andl	$7, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movl	%r15d, %ebp
	andl	$-8, %ebp
	leal	(%r15,%r15), %eax
	leal	(%rax,%rax,2), %edx
	leal	(,%r15,8), %ecx
	leal	(%r15,%r15,4), %r8d
	leal	(%r15,%r15,2), %r10d
	movl	%ecx, %r12d
	subl	%r15d, %r12d
	leal	(,%r15,4), %r13d
	xorl	%esi, %esi
	movq	%rsi, (%rsp)                    # 8-byte Spill
	movabsq	$4607182418800017408, %r11      # imm = 0x3FF0000000000000
	jmp	.LBB4_23
	.p2align	4, 0x90
.LBB4_30:                               #   in Loop: Header=BB4_23 Depth=1
	movq	(%rsp), %rsi                    # 8-byte Reload
	incl	%esi
	movq	%rsi, (%rsp)                    # 8-byte Spill
	cmpl	%r15d, %esi
	je	.LBB4_31
.LBB4_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_26 Depth 2
                                        #     Child Loop BB4_29 Depth 2
	cmpq	$7, 40(%rsp)                    # 8-byte Folded Reload
	jae	.LBB4_25
# %bb.24:                               #   in Loop: Header=BB4_23 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB4_27
	.p2align	4, 0x90
.LBB4_25:                               #   in Loop: Header=BB4_23 Depth=1
	movq	(%rsp), %rsi                    # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB4_26:                               #   Parent Loop BB4_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r8, %rdi
	movl	%esi, %r8d
	movq	%r11, (%r14,%r8,8)
	movq	%rdi, %r8
	leal	(%r15,%rsi), %edi
	movq	%r11, (%r14,%rdi,8)
	leal	(%rax,%rsi), %edi
	movq	%r11, (%r14,%rdi,8)
	leal	(%r10,%rsi), %edi
	movq	%r11, (%r14,%rdi,8)
	leal	(%r13,%rsi), %edi
	movq	%r11, (%r14,%rdi,8)
	leal	(%r8,%rsi), %edi
	movq	%r11, (%r14,%rdi,8)
	leal	(%rdx,%rsi), %edi
	movq	%r11, (%r14,%rdi,8)
	leal	(%r12,%rsi), %edi
	movq	%r11, (%r14,%rdi,8)
	addq	$8, %r9
	addl	%ecx, %esi
	cmpq	%r9, %rbp
	jne	.LBB4_26
.LBB4_27:                               #   in Loop: Header=BB4_23 Depth=1
	cmpq	$0, 16(%rsp)                    # 8-byte Folded Reload
	je	.LBB4_30
# %bb.28:                               #   in Loop: Header=BB4_23 Depth=1
	imull	%r15d, %r9d
	addl	(%rsp), %r9d                    # 4-byte Folded Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_29:                               #   Parent Loop BB4_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r9d, %edi
	movq	%r11, (%r14,%rdi,8)
	addl	%r15d, %r9d
	decq	%rsi
	jne	.LBB4_29
	jmp	.LBB4_30
.LBB4_31:
	movl	%r15d, %eax
	andl	$7, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movl	%r15d, %ebp
	andl	$-8, %ebp
	leal	(%r15,%r15), %eax
	leal	(%rax,%rax,2), %edx
	leal	(,%r15,8), %ecx
	leal	(%r15,%r15,4), %r13d
	leal	(%r15,%r15,2), %r10d
	movl	%ecx, %r12d
	subl	%r15d, %r12d
	leal	(,%r15,4), %r8d
	xorl	%esi, %esi
	movq	%rsi, (%rsp)                    # 8-byte Spill
	jmp	.LBB4_32
	.p2align	4, 0x90
.LBB4_39:                               #   in Loop: Header=BB4_32 Depth=1
	movq	(%rsp), %rsi                    # 8-byte Reload
	incl	%esi
	movq	%rsi, (%rsp)                    # 8-byte Spill
	cmpl	%r15d, %esi
	je	.LBB4_40
.LBB4_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_35 Depth 2
                                        #     Child Loop BB4_38 Depth 2
	cmpq	$7, 40(%rsp)                    # 8-byte Folded Reload
	jae	.LBB4_34
# %bb.33:                               #   in Loop: Header=BB4_32 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB4_36
	.p2align	4, 0x90
.LBB4_34:                               #   in Loop: Header=BB4_32 Depth=1
	movq	(%rsp), %rsi                    # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB4_35:                               #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rdi
	movl	%esi, %r13d
	movq	%r11, (%rbx,%r13,8)
	movq	%rdi, %r13
	leal	(%r15,%rsi), %edi
	movq	%r11, (%rbx,%rdi,8)
	leal	(%rax,%rsi), %edi
	movq	%r11, (%rbx,%rdi,8)
	leal	(%r10,%rsi), %edi
	movq	%r11, (%rbx,%rdi,8)
	leal	(%r8,%rsi), %edi
	movq	%r11, (%rbx,%rdi,8)
	leal	(%r13,%rsi), %edi
	movq	%r11, (%rbx,%rdi,8)
	leal	(%rdx,%rsi), %edi
	movq	%r11, (%rbx,%rdi,8)
	leal	(%r12,%rsi), %edi
	movq	%r11, (%rbx,%rdi,8)
	addq	$8, %r9
	addl	%ecx, %esi
	cmpq	%r9, %rbp
	jne	.LBB4_35
.LBB4_36:                               #   in Loop: Header=BB4_32 Depth=1
	cmpq	$0, 16(%rsp)                    # 8-byte Folded Reload
	je	.LBB4_39
# %bb.37:                               #   in Loop: Header=BB4_32 Depth=1
	imull	%r15d, %r9d
	addl	(%rsp), %r9d                    # 4-byte Folded Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_38:                               #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r9d, %edi
	movq	%r11, (%rbx,%rdi,8)
	addl	%r15d, %r9d
	decq	%rsi
	jne	.LBB4_38
	jmp	.LBB4_39
.LBB4_40:
	movl	%r15d, %eax
	andl	$7, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movl	%r15d, %ebp
	andl	$-8, %ebp
	leal	(%r15,%r15), %eax
	leal	(%rax,%rax,2), %r9d
	leal	(,%r15,8), %r13d
	leal	(%r15,%r15,4), %r11d
	leal	(%r15,%r15,2), %r12d
	movl	%r13d, %r10d
	subl	%r15d, %r10d
	leal	(,%r15,4), %r8d
	xorl	%ecx, %ecx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	24(%rsp), %rsi                  # 8-byte Reload
	jmp	.LBB4_41
	.p2align	4, 0x90
.LBB4_48:                               #   in Loop: Header=BB4_41 Depth=1
	movq	(%rsp), %rcx                    # 8-byte Reload
	incl	%ecx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	cmpl	%r15d, %ecx
	je	.LBB4_49
.LBB4_41:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_44 Depth 2
                                        #     Child Loop BB4_47 Depth 2
	cmpq	$7, 40(%rsp)                    # 8-byte Folded Reload
	jae	.LBB4_43
# %bb.42:                               #   in Loop: Header=BB4_41 Depth=1
	xorl	%edi, %edi
	jmp	.LBB4_45
	.p2align	4, 0x90
.LBB4_43:                               #   in Loop: Header=BB4_41 Depth=1
	movq	(%rsp), %rcx                    # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB4_44:                               #   Parent Loop BB4_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r9, %rsi
	movl	%ecx, %r9d
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	$0, (%rdx,%r9,8)
	movq	%rsi, %r9
	movq	24(%rsp), %rsi                  # 8-byte Reload
	leal	(%r15,%rcx), %edx
	movq	$0, (%rsi,%rdx,8)
	leal	(%rax,%rcx), %edx
	movq	$0, (%rsi,%rdx,8)
	leal	(%r12,%rcx), %edx
	movq	$0, (%rsi,%rdx,8)
	leal	(%r8,%rcx), %edx
	movq	$0, (%rsi,%rdx,8)
	leal	(%r11,%rcx), %edx
	movq	$0, (%rsi,%rdx,8)
	leal	(%r9,%rcx), %edx
	movq	$0, (%rsi,%rdx,8)
	leal	(%r10,%rcx), %edx
	movq	$0, (%rsi,%rdx,8)
	addq	$8, %rdi
	addl	%r13d, %ecx
	cmpq	%rdi, %rbp
	jne	.LBB4_44
.LBB4_45:                               #   in Loop: Header=BB4_41 Depth=1
	cmpq	$0, 16(%rsp)                    # 8-byte Folded Reload
	je	.LBB4_48
# %bb.46:                               #   in Loop: Header=BB4_41 Depth=1
	imull	%r15d, %edi
	addl	(%rsp), %edi                    # 4-byte Folded Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_47:                               #   Parent Loop BB4_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edi, %edx
	movq	$0, (%rsi,%rdx,8)
	addl	%r15d, %edi
	decq	%rcx
	jne	.LBB4_47
	jmp	.LBB4_48
.LBB4_49:
	callq	clock
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movl	36(%rsp), %eax
	movl	%eax, 48(%rsp)                  # 4-byte Spill
	testl	%eax, %eax
	je	.LBB4_62
# %bb.50:
	movl	12(%rsp), %r12d
	testl	%r12d, %r12d
	je	.LBB4_62
# %bb.51:
	leaq	-1(%r12), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movl	%r12d, %eax
	andl	$3, %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movl	%r12d, %r11d
	andl	$-4, %r11d
	leal	(%r12,%r12), %r10d
	leal	(,%r12,4), %r15d
	leal	(%r12,%r12,2), %edx
	xorl	%eax, %eax
	jmp	.LBB4_52
	.p2align	4, 0x90
.LBB4_61:                               #   in Loop: Header=BB4_52 Depth=1
	movq	64(%rsp), %rax                  # 8-byte Reload
	incl	%eax
	cmpl	48(%rsp), %eax                  # 4-byte Folded Reload
	je	.LBB4_62
.LBB4_52:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_53 Depth 2
                                        #       Child Loop BB4_54 Depth 3
                                        #         Child Loop BB4_66 Depth 4
                                        #         Child Loop BB4_58 Depth 4
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.LBB4_53
	.p2align	4, 0x90
.LBB4_60:                               #   in Loop: Header=BB4_53 Depth=2
	movl	52(%rsp), %eax                  # 4-byte Reload
	incl	%eax
	addq	%r12, %rsi
	cmpl	%r12d, %eax
	je	.LBB4_61
.LBB4_53:                               #   Parent Loop BB4_52 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_54 Depth 3
                                        #         Child Loop BB4_66 Depth 4
                                        #         Child Loop BB4_58 Depth 4
	movl	%r12d, %edi
	movl	%eax, 52(%rsp)                  # 4-byte Spill
	imull	%eax, %edi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	xorl	%r8d, %r8d
	jmp	.LBB4_54
	.p2align	4, 0x90
.LBB4_59:                               #   in Loop: Header=BB4_54 Depth=3
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rsp), %rax                    # 8-byte Reload
	vmovsd	%xmm0, (%rcx,%rax,8)
	incq	%r8
	cmpq	%r12, %r8
	je	.LBB4_60
.LBB4_54:                               #   Parent Loop BB4_52 Depth=1
                                        #     Parent Loop BB4_53 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_66 Depth 4
                                        #         Child Loop BB4_58 Depth 4
	movq	16(%rsp), %rax                  # 8-byte Reload
	addl	%r8d, %eax
	movq	%rax, (%rsp)                    # 8-byte Spill
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	cmpq	$3, 72(%rsp)                    # 8-byte Folded Reload
	jae	.LBB4_65
# %bb.55:                               #   in Loop: Header=BB4_54 Depth=3
	movq	%r8, %rdi
	xorl	%r13d, %r13d
	jmp	.LBB4_56
	.p2align	4, 0x90
.LBB4_65:                               #   in Loop: Header=BB4_54 Depth=3
	movq	%r8, %rdi
                                        # kill: def $r8d killed $r8d killed $r8 def $r8
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB4_66:                               #   Parent Loop BB4_52 Depth=1
                                        #     Parent Loop BB4_53 Depth=2
                                        #       Parent Loop BB4_54 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%rsi,%r13), %r9
	movl	%r9d, %eax
	movl	%r8d, %ecx
	vmovsd	(%rbx,%rcx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%r14,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	leal	1(%r9), %eax
	leal	(%r12,%r8), %ecx
	vmovsd	(%rbx,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%r14,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	leal	2(%r9), %eax
	leal	(%r10,%r8), %ecx
	vmovsd	(%rbx,%rcx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%r14,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	addl	$3, %r9d
	leal	(%rdx,%r8), %eax
	vmovsd	(%rbx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%r14,%r9,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	addq	$4, %r13
	addl	%r15d, %r8d
	cmpq	%r13, %r11
	jne	.LBB4_66
.LBB4_56:                               #   in Loop: Header=BB4_54 Depth=3
	cmpq	$0, 40(%rsp)                    # 8-byte Folded Reload
	movq	%rdi, %r8
	je	.LBB4_59
# %bb.57:                               #   in Loop: Header=BB4_54 Depth=3
	movl	%r12d, %ecx
	imull	%r13d, %ecx
	addl	%r8d, %ecx
	addl	%esi, %r13d
	movq	40(%rsp), %rdi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_58:                               #   Parent Loop BB4_52 Depth=1
                                        #     Parent Loop BB4_53 Depth=2
                                        #       Parent Loop BB4_54 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r13d, %ebp
	movl	%ecx, %eax
	vmovsd	(%rbx,%rax,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%r14,%rbp,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	addl	%r12d, %ecx
	incl	%r13d
	decq	%rdi
	jne	.LBB4_58
	jmp	.LBB4_59
.LBB4_62:
	callq	clock
	subq	56(%rsp), %rax                  # 8-byte Folded Reload
	movabsq	$2361183241434822607, %rcx      # imm = 0x20C49BA5E353F7CF
	imulq	%rcx
	movq	%rdx, %rbp
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rbp
	addq	%rax, %rbp
	movl	$_ZSt4cout, %edi
	movl	$.L.str.3, %esi
	movl	$20, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movslq	%ebp, %r12
	imulq	$274877907, %r12, %rbp          # imm = 0x10624DD3
	movq	%rbp, %rax
	shrq	$63, %rax
	sarq	$38, %rbp
	addl	%eax, %ebp
	movl	$_ZSt4cout, %edi
	movl	%ebp, %esi
	callq	_ZNSolsEi
	movq	%rax, %r13
	movl	$.L.str.4, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	imull	$1000, %ebp, %eax               # imm = 0x3E8
	subl	%eax, %r12d
	movq	%r13, %rdi
	movl	%r12d, %esi
	callq	_ZNSolsEi
	movq	%rax, %r12
	movl	$.L.str.5, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %r13
	testq	%r13, %r13
	je	.LBB4_76
# %bb.63:
	cmpb	$0, 56(%r13)
	je	.LBB4_67
# %bb.64:
	movb	67(%r13), %al
	jmp	.LBB4_68
.LBB4_67:
	movq	%r13, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r13), %rax
	movq	%r13, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB4_68:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	12(%rsp), %eax
	testl	%eax, %eax
	je	.LBB4_69
# %bb.70:
	leal	-1(%rax), %ecx
	imull	%eax, %ecx
	addl	%ecx, %eax
	decl	%eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	vcvttsd2si	(%rcx,%rax,8), %ebp
	jmp	.LBB4_71
.LBB4_69:
	xorl	%ebp, %ebp
.LBB4_71:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.6, %esi
	movl	$20, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movl	%ebp, %esi
	callq	_ZNSolsEi
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %r13
	testq	%r13, %r13
	je	.LBB4_76
# %bb.72:
	cmpb	$0, 56(%r13)
	je	.LBB4_74
# %bb.73:
	movb	67(%r13), %al
	jmp	.LBB4_75
.LBB4_74:
	movq	%r13, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r13), %rax
	movq	%r13, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB4_75:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movq	%r14, %rdi
	callq	free
	movq	%rbx, %rdi
	callq	free
	movq	24(%rsp), %rdi                  # 8-byte Reload
	callq	free
	xorl	%eax, %eax
	addq	$600, %rsp                      # imm = 0x258
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
	retq
.LBB4_76:
	.cfi_def_cfa_offset 656
	callq	_ZSt16__throw_bad_castv
.LBB4_11:
.Ltmp14:
	movq	%rax, %r15
	movq	_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rbp
	movq	(%rbp), %rax
	movq	8(%rbp), %rbx
	movq	%rax, 80(%rsp)
	movq	24(%rbp), %rcx
	movq	-24(%rax), %rax
	movq	%rcx, 80(%rsp,%rax)
	movq	%r14, %rdi
	callq	_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev
	movq	%rbx, 80(%rsp)
	movq	16(%rbp), %rax
	movq	-24(%rbx), %rcx
	movq	%rax, 80(%rsp,%rcx)
	movq	$0, 88(%rsp)
	leaq	336(%rsp), %rdi
	callq	_ZNSt8ios_baseD2Ev
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table4:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp13-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Lfunc_end4-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_matrixmult.cpp
	.type	_GLOBAL__sub_I_matrixmult.cpp,@function
_GLOBAL__sub_I_matrixmult.cpp:          # @_GLOBAL__sub_I_matrixmult.cpp
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
.Lfunc_end5:
	.size	_GLOBAL__sub_I_matrixmult.cpp, .Lfunc_end5-_GLOBAL__sub_I_matrixmult.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"parameters.dat"
	.size	.L.str, 15

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"N is "
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"rep is "
	.size	.L.str.2, 8

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"[matrixmult serial] "
	.size	.L.str.3, 21

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"."
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" s"
	.size	.L.str.5, 3

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Sum of the result = "
	.size	.L.str.6, 21

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_matrixmult.cpp
	.ident	"clang version 12.0.0"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _GLOBAL__sub_I_matrixmult.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout

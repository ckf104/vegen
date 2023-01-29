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
	movl	%edi, -56(%rsp)                 # 4-byte Spill
	testl	%edi, %edi
	je	.LBB0_13
# %bb.1:
	movl	%r8d, %eax
	leaq	-1(%rax), %rdi
	movq	%rdi, -16(%rsp)                 # 8-byte Spill
	movl	%eax, %edi
	andl	$3, %edi
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movl	%eax, %ebp
	andl	$-4, %ebp
	leal	(%r8,%r8), %r12d
	leal	(,%r8,4), %r11d
	leal	(%r8,%r8,2), %r10d
	xorl	%eax, %eax
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	incl	%eax
	cmpl	-56(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB0_13
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #       Child Loop BB0_5 Depth 3
                                        #         Child Loop BB0_15 Depth 4
                                        #         Child Loop BB0_9 Depth 4
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	testl	%r8d, %r8d
	je	.LBB0_12
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_4 Depth=2
	movl	-52(%rsp), %eax                 # 4-byte Reload
	incl	%eax
	addq	-48(%rsp), %r14                 # 8-byte Folded Reload
	cmpl	%r8d, %eax
	je	.LBB0_12
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
                                        #         Child Loop BB0_15 Depth 4
                                        #         Child Loop BB0_9 Depth 4
	movl	%eax, -52(%rsp)                 # 4-byte Spill
                                        # kill: def $eax killed $eax def $rax
	imull	%r8d, %eax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	xorl	%edi, %edi
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=3
	movq	-32(%rsp), %rdi                 # 8-byte Reload
	incq	%rdi
	cmpq	-48(%rsp), %rdi                 # 8-byte Folded Reload
	movq	%r15, %rbp
	je	.LBB0_11
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_15 Depth 4
                                        #         Child Loop BB0_9 Depth 4
	movq	-8(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%rdi), %r13d
	vmovsd	(%rcx,%r13,8), %xmm0            # xmm0 = mem[0],zero
	cmpq	$3, -16(%rsp)                   # 8-byte Folded Reload
	movq	%rdi, -32(%rsp)                 # 8-byte Spill
	jae	.LBB0_14
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	xorl	%r9d, %r9d
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=3
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_15:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%r14,%r9), %r15
	movl	%r15d, %eax
	movl	%edi, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r13,8)
	leal	1(%r15), %eax
	leal	(%r8,%rdi), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r13,8)
	leal	2(%r15), %eax
	leal	(%r12,%rdi), %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%r13,8)
	addl	$3, %r15d
	leal	(%r10,%rdi), %eax
	vmovsd	(%rdx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rsi,%r15,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%r13,8)
	addq	$4, %r9
	addl	%r11d, %edi
	cmpq	%r9, %rbp
	jne	.LBB0_15
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=3
	movq	%rbp, %r15
	cmpq	$0, -40(%rsp)                   # 8-byte Folded Reload
	je	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=3
	movl	%r8d, %edi
	imull	%r9d, %edi
	addl	-32(%rsp), %edi                 # 4-byte Folded Reload
	addl	%r14d, %r9d
	movq	-40(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_9:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r9d, %eax
	movl	%edi, %ebx
	vmovsd	(%rdx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rsi,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rcx,%r13,8)
	addl	%r8d, %edi
	incl	%r9d
	decq	%rbp
	jne	.LBB0_9
	jmp	.LBB0_10
.LBB0_13:
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

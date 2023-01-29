	.text
	.file	"matrixmult.cpp"
	.globl	_Z15do_x_matrixMultjPdS_S_i     # -- Begin function _Z15do_x_matrixMultjPdS_S_i
	.p2align	4, 0x90
	.type	_Z15do_x_matrixMultjPdS_S_i,@function
_Z15do_x_matrixMultjPdS_S_i:            # @_Z15do_x_matrixMultjPdS_S_i
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	addq	$24, %rsi
	addq	$768, %rdx                      # imm = 0x300
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_3 Depth 3
                                        #         Child Loop BB0_4 Depth 4
	movq	%rsi, %r15
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
                                        #         Child Loop BB0_4 Depth 4
	movq	%r9, %r10
	shlq	$5, %r10
	movq	%rdx, %r11
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_4 Depth 4
	leaq	(%r14,%r10), %rbx
	vmovsd	(%rcx,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	movq	%r11, %rax
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_4:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        #       Parent Loop BB0_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vmovsd	-768(%rax), %xmm1               # xmm1 = mem[0],zero
	vfmadd132sd	-24(%r15,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%rbx,8)
	vmovsd	-512(%rax), %xmm0               # xmm0 = mem[0],zero
	vfmadd132sd	-16(%r15,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%rbx,8)
	vmovsd	-256(%rax), %xmm1               # xmm1 = mem[0],zero
	vfmadd132sd	-8(%r15,%rdi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, (%rcx,%rbx,8)
	vmovsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	vfmadd132sd	(%r15,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rcx,%rbx,8)
	addq	$4, %rdi
	addq	$1024, %rax                     # imm = 0x400
	cmpq	$32, %rdi
	jne	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=3
	incq	%r14
	addq	$8, %r11
	cmpq	$32, %r14
	jne	.LBB0_3
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=2
	incq	%r9
	addq	$256, %r15                      # imm = 0x100
	cmpq	$32, %r9
	jne	.LBB0_2
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	incl	%r8d
	cmpl	$1000000, %r8d                  # imm = 0xF4240
	jne	.LBB0_1
# %bb.8:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
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
	subq	$696, %rsp                      # imm = 0x2B8
	.cfi_def_cfa_offset 752
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
	movl	%eax, 28(%rsp)
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, 100(%rsp)
	jmp	.LBB4_13
.LBB4_1:
	leaq	176(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev
	leaq	192(%rsp), %r14
.Ltmp0:
	movl	$.L.str, %esi
	movq	%r14, %rdi
	movl	$8, %edx
	callq	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
.Ltmp1:
# %bb.2:
	movq	176(%rsp), %rcx
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
	leaq	176(%rsp), %rdi
	leaq	28(%rsp), %rsi
	callq	_ZNSirsERi
.Ltmp7:
# %bb.6:
.Ltmp8:
	leaq	100(%rsp), %rsi
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
	movq	176(%rsp), %rax
	movq	-24(%rax), %rax
	leaq	(%rsp,%rax), %rdi
	addq	$176, %rdi
	movl	208(%rsp,%rax), %esi
	orl	$4, %esi
.Ltmp12:
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.Ltmp13:
.LBB4_10:
	movq	_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rbp
	movq	%rax, 176(%rsp)
	movq	24(%rbx), %rcx
	movq	-24(%rax), %rax
	movq	%rcx, 176(%rsp,%rax)
	movq	%r14, %rdi
	callq	_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev
	movq	%rbp, 176(%rsp)
	movq	16(%rbx), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 176(%rsp,%rcx)
	movq	$0, 184(%rsp)
	leaq	432(%rsp), %rdi
	callq	_ZNSt8ios_baseD2Ev
.LBB4_13:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$5, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	28(%rsp), %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_67
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
	movl	100(%rsp), %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_67
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
	movl	28(%rsp), %ebp
	movl	%ebp, %r15d
	imull	%r15d, %r15d
	shlq	$3, %r15
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, %r14
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, %r15
	testq	%rbp, %rbp
	je	.LBB4_49
# %bb.22:
	movq	%r15, 104(%rsp)                 # 8-byte Spill
	leaq	-1(%rbp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movl	%ebp, %eax
	andl	$7, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movl	%ebp, %r15d
	andl	$-8, %r15d
	leal	(%rbp,%rbp), %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leal	(%rax,%rax,2), %r8d
	leal	(,%rbp,8), %r9d
	leal	(%rbp,%rbp,4), %r10d
	leal	(%rbp,%rbp,2), %esi
	movl	%r9d, %edx
	subl	%ebp, %edx
	leal	(,%rbp,4), %edi
	xorl	%eax, %eax
	movabsq	$4607182418800017408, %rcx      # imm = 0x3FF0000000000000
	movq	%r8, 80(%rsp)                   # 8-byte Spill
	movl	%r9d, 72(%rsp)                  # 4-byte Spill
	movq	%r10, 64(%rsp)                  # 8-byte Spill
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %r12                  # 8-byte Reload
	movq	80(%rsp), %r13                  # 8-byte Reload
	movl	72(%rsp), %r10d                 # 4-byte Reload
	movq	64(%rsp), %r11                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	jmp	.LBB4_23
	.p2align	4, 0x90
.LBB4_30:                               #   in Loop: Header=BB4_23 Depth=1
	incl	%eax
	cmpl	%ebp, %eax
	je	.LBB4_31
.LBB4_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_26 Depth 2
                                        #     Child Loop BB4_29 Depth 2
	cmpq	$7, 88(%rsp)                    # 8-byte Folded Reload
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jae	.LBB4_25
# %bb.24:                               #   in Loop: Header=BB4_23 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB4_27
	.p2align	4, 0x90
.LBB4_25:                               #   in Loop: Header=BB4_23 Depth=1
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	40(%rsp), %rdi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_26:                               #   Parent Loop BB4_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r8d, %esi
	movq	%rcx, (%r14,%rsi,8)
	leal	(%r8,%rbp), %esi
	movq	%rcx, (%r14,%rsi,8)
	leal	(%r12,%r8), %esi
	movq	%rcx, (%r14,%rsi,8)
	leal	(%rax,%r8), %esi
	movq	%rcx, (%r14,%rsi,8)
	leal	(%rdi,%r8), %esi
	movq	%rcx, (%r14,%rsi,8)
	leal	(%r11,%r8), %esi
	movq	%rcx, (%r14,%rsi,8)
	leal	(%r13,%r8), %esi
	movq	%rcx, (%r14,%rsi,8)
	leal	(%rdx,%r8), %esi
	movq	%rcx, (%r14,%rsi,8)
	addq	$8, %r9
	addl	%r10d, %r8d
	cmpq	%r9, %r15
	jne	.LBB4_26
.LBB4_27:                               #   in Loop: Header=BB4_23 Depth=1
	cmpq	$0, 16(%rsp)                    # 8-byte Folded Reload
	movq	8(%rsp), %rax                   # 8-byte Reload
	je	.LBB4_30
# %bb.28:                               #   in Loop: Header=BB4_23 Depth=1
	imull	%ebp, %r9d
	addl	%eax, %r9d
	movq	16(%rsp), %rsi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_29:                               #   Parent Loop BB4_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r9d, %edi
	movq	%rcx, (%r14,%rdi,8)
	addl	%ebp, %r9d
	decq	%rsi
	jne	.LBB4_29
	jmp	.LBB4_30
.LBB4_31:
	movl	%ebp, %eax
	andl	$7, %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movl	%ebp, %r12d
	andl	$-8, %r12d
	leal	(%rbp,%rbp), %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leal	(%rax,%rax,2), %r8d
	leal	(,%rbp,8), %r9d
	leal	(%rbp,%rbp,4), %r10d
	leal	(%rbp,%rbp,2), %esi
	movl	%r9d, %edx
	subl	%ebp, %edx
	leal	(,%rbp,4), %edi
	xorl	%eax, %eax
	movq	104(%rsp), %r15                 # 8-byte Reload
	movq	%r8, 80(%rsp)                   # 8-byte Spill
	movl	%r9d, 72(%rsp)                  # 4-byte Spill
	movq	%r10, 64(%rsp)                  # 8-byte Spill
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %r8                   # 8-byte Reload
	movl	72(%rsp), %r10d                 # 4-byte Reload
	movq	64(%rsp), %r11                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	jmp	.LBB4_32
	.p2align	4, 0x90
.LBB4_39:                               #   in Loop: Header=BB4_32 Depth=1
	incl	%eax
	cmpl	%ebp, %eax
	je	.LBB4_40
.LBB4_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_35 Depth 2
                                        #     Child Loop BB4_38 Depth 2
	cmpq	$7, 88(%rsp)                    # 8-byte Folded Reload
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jae	.LBB4_34
# %bb.33:                               #   in Loop: Header=BB4_32 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB4_36
	.p2align	4, 0x90
.LBB4_34:                               #   in Loop: Header=BB4_32 Depth=1
	movl	%eax, %r13d
	xorl	%r9d, %r9d
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	40(%rsp), %rdi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_35:                               #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r13d, %esi
	movq	%rcx, (%rbx,%rsi,8)
	leal	(%rbp,%r13), %esi
	movq	%rcx, (%rbx,%rsi,8)
	movq	8(%rsp), %rsi                   # 8-byte Reload
	addl	%r13d, %esi
	movq	%rcx, (%rbx,%rsi,8)
	leal	(%rax,%r13), %esi
	movq	%rcx, (%rbx,%rsi,8)
	leal	(%rdi,%r13), %esi
	movq	%rcx, (%rbx,%rsi,8)
	leal	(%r11,%r13), %esi
	movq	%rcx, (%rbx,%rsi,8)
	leal	(%r8,%r13), %esi
	movq	%rcx, (%rbx,%rsi,8)
	leal	(%rdx,%r13), %esi
	movq	%rcx, (%rbx,%rsi,8)
	addq	$8, %r9
	addl	%r10d, %r13d
	cmpq	%r9, %r12
	jne	.LBB4_35
.LBB4_36:                               #   in Loop: Header=BB4_32 Depth=1
	cmpq	$0, 32(%rsp)                    # 8-byte Folded Reload
	movq	16(%rsp), %rax                  # 8-byte Reload
	je	.LBB4_39
# %bb.37:                               #   in Loop: Header=BB4_32 Depth=1
	imull	%ebp, %r9d
	addl	%eax, %r9d
	movq	32(%rsp), %rsi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_38:                               #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r9d, %edi
	movq	%rcx, (%rbx,%rdi,8)
	addl	%ebp, %r9d
	decq	%rsi
	jne	.LBB4_38
	jmp	.LBB4_39
.LBB4_40:
	movl	%ebp, %eax
	andl	$7, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movl	%ebp, %edx
	andl	$-8, %edx
	leal	(%rbp,%rbp), %r11d
	leal	(%r11,%r11,2), %r8d
	leal	(,%rbp,8), %r13d
	leal	(%rbp,%rbp,4), %r9d
	leal	(%rbp,%rbp,2), %r10d
	movl	%r13d, %esi
	subl	%ebp, %esi
	leal	(,%rbp,4), %eax
	xorl	%ecx, %ecx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB4_41
	.p2align	4, 0x90
.LBB4_48:                               #   in Loop: Header=BB4_41 Depth=1
	movq	8(%rsp), %rcx                   # 8-byte Reload
	incl	%ecx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	cmpl	%ebp, %ecx
	movq	%r12, %rdx
	je	.LBB4_49
.LBB4_41:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_44 Depth 2
                                        #     Child Loop BB4_47 Depth 2
	cmpq	$7, 88(%rsp)                    # 8-byte Folded Reload
	jae	.LBB4_43
# %bb.42:                               #   in Loop: Header=BB4_41 Depth=1
	xorl	%edi, %edi
	jmp	.LBB4_45
	.p2align	4, 0x90
.LBB4_43:                               #   in Loop: Header=BB4_41 Depth=1
	movq	8(%rsp), %r12                   # 8-byte Reload
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB4_44:                               #   Parent Loop BB4_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r12d, %ecx
	movq	$0, (%r15,%rcx,8)
	leal	(%r12,%rbp), %ecx
	movq	$0, (%r15,%rcx,8)
	leal	(%r11,%r12), %ecx
	movq	$0, (%r15,%rcx,8)
	leal	(%r10,%r12), %ecx
	movq	$0, (%r15,%rcx,8)
	leal	(%rax,%r12), %ecx
	movq	$0, (%r15,%rcx,8)
	leal	(%r9,%r12), %ecx
	movq	$0, (%r15,%rcx,8)
	leal	(%r8,%r12), %ecx
	movq	$0, (%r15,%rcx,8)
	leal	(%rsi,%r12), %ecx
	movq	$0, (%r15,%rcx,8)
	addq	$8, %rdi
	addl	%r13d, %r12d
	cmpq	%rdi, %rdx
	jne	.LBB4_44
.LBB4_45:                               #   in Loop: Header=BB4_41 Depth=1
	movq	%rdx, %r12
	cmpq	$0, 16(%rsp)                    # 8-byte Folded Reload
	je	.LBB4_48
# %bb.46:                               #   in Loop: Header=BB4_41 Depth=1
	imull	%ebp, %edi
	addl	8(%rsp), %edi                   # 4-byte Folded Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_47:                               #   Parent Loop BB4_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edi, %edx
	movq	$0, (%r15,%rdx,8)
	addl	%ebp, %edi
	decq	%rcx
	jne	.LBB4_47
	jmp	.LBB4_48
.LBB4_49:
	xorl	%ebp, %ebp
	callq	clock
	movq	%rax, %r12
	.p2align	4, 0x90
.LBB4_50:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_51 Depth 2
                                        #       Child Loop BB4_52 Depth 3
	movq	%r15, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_51:                               #   Parent Loop BB4_50 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_52 Depth 3
	movq	%rcx, %rsi
	shlq	$8, %rsi
	vmovsd	(%r14,%rsi), %xmm0              # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	vmovsd	8(%r14,%rsi), %xmm0             # xmm0 = mem[0],zero
	vmovsd	%xmm0, 88(%rsp)                 # 8-byte Spill
	vmovsd	16(%r14,%rsi), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	vmovsd	24(%r14,%rsi), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	vmovsd	32(%r14,%rsi), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 80(%rsp)                 # 8-byte Spill
	vmovsd	40(%r14,%rsi), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 72(%rsp)                 # 8-byte Spill
	vmovsd	48(%r14,%rsi), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 64(%rsp)                 # 8-byte Spill
	vmovsd	56(%r14,%rsi), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 56(%rsp)                 # 8-byte Spill
	vmovsd	64(%r14,%rsi), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	vmovsd	72(%r14,%rsi), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	vmovsd	80(%r14,%rsi), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 104(%rsp)                # 8-byte Spill
	vmovsd	88(%r14,%rsi), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 168(%rsp)                # 8-byte Spill
	vmovsd	96(%r14,%rsi), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 160(%rsp)                # 8-byte Spill
	vmovsd	104(%r14,%rsi), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, 152(%rsp)                # 8-byte Spill
	vmovsd	112(%r14,%rsi), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, 144(%rsp)                # 8-byte Spill
	vmovsd	120(%r14,%rsi), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, 136(%rsp)                # 8-byte Spill
	xorl	%edx, %edx
	vmovsd	128(%r14,%rsi), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, 128(%rsp)                # 8-byte Spill
	vmovsd	136(%r14,%rsi), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, 120(%rsp)                # 8-byte Spill
	vmovsd	144(%r14,%rsi), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, 112(%rsp)                # 8-byte Spill
	vmovsd	152(%r14,%rsi), %xmm11          # xmm11 = mem[0],zero
	vmovsd	160(%r14,%rsi), %xmm12          # xmm12 = mem[0],zero
	vmovsd	168(%r14,%rsi), %xmm13          # xmm13 = mem[0],zero
	vmovsd	176(%r14,%rsi), %xmm14          # xmm14 = mem[0],zero
	vmovsd	184(%r14,%rsi), %xmm15          # xmm15 = mem[0],zero
	vmovsd	192(%r14,%rsi), %xmm10          # xmm10 = mem[0],zero
	vmovsd	200(%r14,%rsi), %xmm1           # xmm1 = mem[0],zero
	vmovsd	208(%r14,%rsi), %xmm2           # xmm2 = mem[0],zero
	vmovsd	216(%r14,%rsi), %xmm3           # xmm3 = mem[0],zero
	vmovsd	224(%r14,%rsi), %xmm4           # xmm4 = mem[0],zero
	vmovsd	232(%r14,%rsi), %xmm5           # xmm5 = mem[0],zero
	vmovsd	240(%r14,%rsi), %xmm6           # xmm6 = mem[0],zero
	vmovsd	248(%r14,%rsi), %xmm7           # xmm7 = mem[0],zero
	.p2align	4, 0x90
.LBB4_52:                               #   Parent Loop BB4_50 Depth=1
                                        #     Parent Loop BB4_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovsd	(%rbx,%rdx,8), %xmm8            # xmm8 = mem[0],zero
	vmovsd	8(%rsp), %xmm9                  # 8-byte Reload
                                        # xmm9 = mem[0],zero
	vfmadd213sd	(%rax,%rdx,8), %xmm9, %xmm8 # xmm8 = (xmm9 * xmm8) + mem
	vmovsd	88(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	256(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vmovsd	16(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	512(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	768(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vmovsd	80(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	1024(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vmovsd	72(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	1280(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vmovsd	64(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	1536(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vmovsd	56(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	1792(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vmovsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	2048(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vmovsd	40(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	2304(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vmovsd	104(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	2560(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vmovsd	168(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	2816(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vmovsd	160(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	3072(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vmovsd	152(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	3328(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vmovsd	144(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	3584(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vmovsd	136(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	3840(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vmovsd	128(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	4096(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vmovsd	120(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	4352(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vmovsd	112(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vfmadd231sd	4608(%rbx,%rdx,8), %xmm0, %xmm8 # xmm8 = (xmm0 * mem) + xmm8
	vfmadd231sd	4864(%rbx,%rdx,8), %xmm11, %xmm8 # xmm8 = (xmm11 * mem) + xmm8
	vfmadd231sd	5120(%rbx,%rdx,8), %xmm12, %xmm8 # xmm8 = (xmm12 * mem) + xmm8
	vfmadd231sd	5376(%rbx,%rdx,8), %xmm13, %xmm8 # xmm8 = (xmm13 * mem) + xmm8
	vfmadd231sd	5632(%rbx,%rdx,8), %xmm14, %xmm8 # xmm8 = (xmm14 * mem) + xmm8
	vfmadd231sd	5888(%rbx,%rdx,8), %xmm15, %xmm8 # xmm8 = (xmm15 * mem) + xmm8
	vfmadd231sd	6144(%rbx,%rdx,8), %xmm10, %xmm8 # xmm8 = (xmm10 * mem) + xmm8
	vfmadd231sd	6400(%rbx,%rdx,8), %xmm1, %xmm8 # xmm8 = (xmm1 * mem) + xmm8
	vfmadd231sd	6656(%rbx,%rdx,8), %xmm2, %xmm8 # xmm8 = (xmm2 * mem) + xmm8
	vfmadd231sd	6912(%rbx,%rdx,8), %xmm3, %xmm8 # xmm8 = (xmm3 * mem) + xmm8
	vfmadd231sd	7168(%rbx,%rdx,8), %xmm4, %xmm8 # xmm8 = (xmm4 * mem) + xmm8
	vfmadd231sd	7424(%rbx,%rdx,8), %xmm5, %xmm8 # xmm8 = (xmm5 * mem) + xmm8
	vfmadd231sd	7680(%rbx,%rdx,8), %xmm6, %xmm8 # xmm8 = (xmm6 * mem) + xmm8
	vfmadd231sd	7936(%rbx,%rdx,8), %xmm7, %xmm8 # xmm8 = (xmm7 * mem) + xmm8
	vmovsd	%xmm8, (%rax,%rdx,8)
	incq	%rdx
	cmpq	$32, %rdx
	jne	.LBB4_52
# %bb.53:                               #   in Loop: Header=BB4_51 Depth=2
	incq	%rcx
	addq	$256, %rax                      # imm = 0x100
	cmpq	$32, %rcx
	jne	.LBB4_51
# %bb.54:                               #   in Loop: Header=BB4_50 Depth=1
	incl	%ebp
	cmpl	$1000000, %ebp                  # imm = 0xF4240
	jne	.LBB4_50
# %bb.55:
	callq	clock
	subq	%r12, %rax
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
	je	.LBB4_67
# %bb.56:
	cmpb	$0, 56(%r13)
	je	.LBB4_58
# %bb.57:
	movb	67(%r13), %al
	jmp	.LBB4_59
.LBB4_58:
	movq	%r13, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r13), %rax
	movq	%r13, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB4_59:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	28(%rsp), %eax
	testl	%eax, %eax
	je	.LBB4_60
# %bb.61:
	leal	-1(%rax), %ecx
	imull	%eax, %ecx
	addl	%ecx, %eax
	decl	%eax
	vcvttsd2si	(%r15,%rax,8), %ebp
	jmp	.LBB4_62
.LBB4_60:
	xorl	%ebp, %ebp
.LBB4_62:
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
	je	.LBB4_67
# %bb.63:
	cmpb	$0, 56(%r13)
	je	.LBB4_65
# %bb.64:
	movb	67(%r13), %al
	jmp	.LBB4_66
.LBB4_65:
	movq	%r13, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r13), %rax
	movq	%r13, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB4_66:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movq	%r14, %rdi
	callq	free
	movq	%rbx, %rdi
	callq	free
	movq	%r15, %rdi
	callq	free
	xorl	%eax, %eax
	addq	$696, %rsp                      # imm = 0x2B8
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
.LBB4_67:
	.cfi_def_cfa_offset 752
	callq	_ZSt16__throw_bad_castv
.LBB4_11:
.Ltmp14:
	movq	%rax, %r15
	movq	_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rbp
	movq	(%rbp), %rax
	movq	8(%rbp), %rbx
	movq	%rax, 176(%rsp)
	movq	24(%rbp), %rcx
	movq	-24(%rax), %rax
	movq	%rcx, 176(%rsp,%rax)
	movq	%r14, %rdi
	callq	_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev
	movq	%rbx, 176(%rsp)
	movq	16(%rbp), %rax
	movq	-24(%rbx), %rcx
	movq	%rax, 176(%rsp,%rcx)
	movq	$0, 184(%rsp)
	leaq	432(%rsp), %rdi
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

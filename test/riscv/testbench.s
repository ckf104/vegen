	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"testbench.c"
	.globl	saturate_i16                    # -- Begin function saturate_i16
	.p2align	1
	.type	saturate_i16,@function
saturate_i16:                           # @saturate_i16
# %bb.0:                                # %entry
	lui	a1, 1048568
	bge	a1, a0, .LBB0_3
# %bb.1:                                # %entry
	lui	a1, 8
	addiw	a1, a1, -1
	bge	a0, a1, .LBB0_4
.LBB0_2:                                # %entry
	ret
.LBB0_3:                                # %entry
	lui	a0, 1048568
	lui	a1, 8
	addiw	a1, a1, -1
	blt	a0, a1, .LBB0_2
.LBB0_4:                                # %entry
	mv	a0, a1
	ret
.Lfunc_end0:
	.size	saturate_i16, .Lfunc_end0-saturate_i16
                                        # -- End function
	.globl	kernel                          # -- Begin function kernel
	.p2align	1
	.type	kernel,@function
kernel:                                 # @kernel
# %bb.0:                                # %entry279
	addi	sp, sp, -208
	sd	ra, 200(sp)                     # 8-byte Folded Spill
	sd	s0, 192(sp)                     # 8-byte Folded Spill
	sd	s1, 184(sp)                     # 8-byte Folded Spill
	sd	s2, 176(sp)                     # 8-byte Folded Spill
	sd	s3, 168(sp)                     # 8-byte Folded Spill
	sd	s4, 160(sp)                     # 8-byte Folded Spill
	sd	s5, 152(sp)                     # 8-byte Folded Spill
	sd	s6, 144(sp)                     # 8-byte Folded Spill
	sd	s7, 136(sp)                     # 8-byte Folded Spill
	sd	s8, 128(sp)                     # 8-byte Folded Spill
	sd	s9, 120(sp)                     # 8-byte Folded Spill
	sd	s10, 112(sp)                    # 8-byte Folded Spill
	sd	s11, 104(sp)                    # 8-byte Folded Spill
	lh	a3, 0(a0)
	lh	a4, 0(a2)
	lh	a5, 2(a0)
	lh	s1, 2(a2)
	sd	a1, 96(sp)                      # 8-byte Folded Spill
	mulw	a1, a4, a3
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	mulw	a1, s1, a5
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	lh	a6, 4(a0)
	lh	a7, 4(a2)
	lh	t0, 6(a0)
	lh	s1, 6(a2)
	lh	s0, 8(a0)
	lh	a3, 8(a2)
	lh	a4, 10(a0)
	lh	a5, 10(a2)
	mulw	a1, a7, a6
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	mulw	a1, s1, t0
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	mulw	a1, a3, s0
	sd	a1, 72(sp)                      # 8-byte Folded Spill
	mulw	a1, a5, a4
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	lh	a6, 12(a0)
	lh	a7, 12(a2)
	lh	t4, 14(a0)
	lh	s1, 14(a2)
	lh	s0, 16(a0)
	lh	a3, 16(a2)
	lh	a4, 18(a0)
	lh	a5, 18(a2)
	mulw	a1, a7, a6
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	mulw	a1, s1, t4
	sd	a1, 80(sp)                      # 8-byte Folded Spill
	mulw	s9, a3, s0
	mulw	s10, a5, a4
	lh	t4, 20(a0)
	lh	t5, 20(a2)
	lh	s3, 22(a0)
	lh	s1, 22(a2)
	lh	s0, 24(a0)
	lh	a3, 24(a2)
	lh	a4, 26(a0)
	lh	a5, 26(a2)
	mulw	s5, t5, t4
	mulw	s6, s1, s3
	mulw	a1, a3, s0
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	mulw	a1, a5, a4
	sd	a1, 0(sp)                       # 8-byte Folded Spill
	lh	t4, 28(a0)
	lh	t5, 28(a2)
	lh	s7, 30(a0)
	lh	s1, 30(a2)
	lh	s0, 32(a0)
	lh	a3, 32(a2)
	lh	a4, 34(a0)
	lh	a5, 34(a2)
	mulw	a1, t5, t4
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	mulw	a1, s1, s7
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	mulw	ra, a3, s0
	mulw	s11, a5, a4
	lh	s7, 36(a0)
	lh	s8, 36(a2)
	lh	s1, 38(a0)
	lh	a5, 38(a2)
	lh	s0, 40(a0)
	lh	a3, 40(a2)
	lh	a4, 42(a0)
	lh	a1, 42(a2)
	mulw	t6, s8, s7
	mulw	s1, a5, s1
	mulw	s2, a3, s0
	mulw	s3, a1, a4
	lh	s7, 44(a0)
	lh	t0, 44(a2)
	lh	s0, 46(a0)
	lh	a5, 46(a2)
	lh	s8, 48(a0)
	lh	a4, 48(a2)
	lh	a3, 50(a0)
	lh	a1, 50(a2)
	mulw	s4, t0, s7
	mulw	s7, a5, s0
	mulw	t2, a4, s8
	mulw	s8, a1, a3
	lh	t0, 52(a0)
	lh	a7, 52(a2)
	lh	s0, 54(a0)
	lh	a6, 54(a2)
	lh	a5, 56(a0)
	lh	a4, 56(a2)
	lh	a3, 58(a0)
	lh	a1, 58(a2)
	mulw	t3, a7, t0
	mulw	s0, a6, s0
	mulw	t4, a4, a5
	mulw	t5, a1, a3
	lh	t1, 60(a0)
	lh	t0, 60(a2)
	lh	a7, 62(a0)
	lh	a6, 62(a2)
	lh	a5, 64(a0)
	lh	a4, 64(a2)
	lh	a3, 66(a0)
	lh	a1, 66(a2)
	mulw	t0, t0, t1
	mulw	a6, a6, a7
	mulw	a4, a4, a5
	mulw	a1, a1, a3
	ld	a3, 24(sp)                      # 8-byte Folded Reload
	ld	a5, 16(sp)                      # 8-byte Folded Reload
	add	a3, a3, a5
	add	s9, s9, s10
	add	s9, s9, ra
	add	s9, s9, a3
	add	t2, t2, s11
	add	t2, t2, s8
	add	a7, a4, a1
	lh	a4, 68(a0)
	lh	a5, 68(a2)
	lh	a3, 70(a0)
	lh	a1, 70(a2)
	add	a7, a7, t2
	add	a7, a7, s9
	mulw	a4, a5, a4
	mulw	a1, a1, a3
	ld	a3, 56(sp)                      # 8-byte Folded Reload
	ld	a5, 48(sp)                      # 8-byte Folded Reload
	add	a3, a3, a5
	add	s5, s5, s6
	add	t6, t6, s5
	add	a3, a3, t6
	add	t3, t3, s1
	add	t3, t3, s0
	add	a1, a1, a4
	lh	a4, 72(a0)
	lh	a5, 72(a2)
	lh	s1, 74(a0)
	lh	s0, 74(a2)
	add	a1, a1, t3
	add	a1, a1, a3
	mulw	a3, a5, a4
	mulw	a4, s0, s1
	ld	a5, 72(sp)                      # 8-byte Folded Reload
	ld	s1, 64(sp)                      # 8-byte Folded Reload
	add	a5, a5, s1
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	add	s1, s1, s0
	add	s1, s1, s2
	add	a5, a5, s1
	add	t4, t4, s3
	add	t4, t4, t5
	add	a3, a3, a4
	lh	a4, 76(a0)
	lh	s1, 76(a2)
	lh	a0, 78(a0)
	lh	s0, 78(a2)
	add	a3, a3, t4
	add	a5, a5, a3
	mulw	a3, s1, a4
	mulw	a0, s0, a0
	ld	a4, 88(sp)                      # 8-byte Folded Reload
	ld	s1, 80(sp)                      # 8-byte Folded Reload
	add	a4, a4, s1
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	add	s1, s1, s0
	add	s1, s1, s4
	add	a4, a4, s1
	add	t0, t0, s7
	add	a6, a6, t0
	add	a0, a0, a3
	add	a3, a6, a0
	lui	a0, 8
	add	a7, a7, a0
	add	a3, a3, a4
	li	a4, 42
	vsetivli	zero, 3, e64, m1, ta, ma
	vmv.s.x	v8, a4
	li	a4, 44
	vmv.s.x	v9, a4
	vslideup.vi	v10, v9, 2
	vsetivli	zero, 2, e64, m1, tu, ma
	vslideup.vi	v10, v8, 1
	li	a4, 46
	vmv.s.x	v8, a4
	vsetivli	zero, 4, e64, m1, tu, ma
	vslideup.vi	v10, v8, 3
	li	a4, 40
	vmv.s.x	v10, a4
	vsetvli	a4, zero, e64, m1, ta, ma
	vadd.vv	v8, v10, v10
	vsetivli	zero, 4, e16, mf4, ta, ma
	vluxei64.v	v9, (a2), v8
	add	a1, a1, a0
	sraiw	a4, a7, 16
	vsetvli	zero, zero, e32, mf2, ta, ma
	vsext.vf2	v8, v9
	vmv.s.x	v9, a4
	vsetivli	zero, 2, e32, mf2, tu, ma
	vmv1r.v	v10, v9
	vslideup.vi	v10, v9, 1
	vsetivli	zero, 3, e32, mf2, tu, ma
	vslideup.vi	v10, v9, 2
	vsetivli	zero, 4, e32, mf2, tu, ma
	vslideup.vi	v10, v9, 3
	vsetvli	zero, zero, e32, mf2, ta, ma
	vmul.vv	v8, v10, v8
	li	a4, 47
	vsetvli	zero, zero, e64, m1, ta, ma
	vmv.s.x	v9, a4
	li	a4, 41
	vmv.s.x	v10, a4
	vsetvli	zero, zero, e64, m1, tu, ma
	vslideup.vi	v10, v9, 3
	li	a4, 43
	vmv.s.x	v9, a4
	vsetivli	zero, 2, e64, m1, tu, ma
	vslideup.vi	v10, v9, 1
	li	a4, 45
	vmv.s.x	v9, a4
	vsetivli	zero, 3, e64, m1, tu, ma
	vslideup.vi	v10, v9, 2
	vsetvli	a4, zero, e64, m1, ta, ma
	vadd.vv	v9, v10, v10
	vsetivli	zero, 4, e16, mf4, ta, ma
	vluxei64.v	v10, (a2), v9
	add	a5, a5, a0
	sraiw	a1, a1, 16
	vsetvli	zero, zero, e32, mf2, ta, ma
	vsext.vf2	v9, v10
	vmv.s.x	v10, a1
	vsetivli	zero, 2, e32, mf2, tu, ma
	vmv1r.v	v11, v10
	vslideup.vi	v11, v10, 1
	vsetivli	zero, 3, e32, mf2, tu, ma
	vslideup.vi	v11, v10, 2
	vsetivli	zero, 4, e32, mf2, tu, ma
	vslideup.vi	v11, v10, 3
	vsetvli	zero, zero, e32, mf2, ta, ma
	vmul.vv	v9, v11, v9
	li	a1, 50
	vsetvli	zero, zero, e64, m1, ta, ma
	vmv.s.x	v10, a1
	li	a1, 54
	vmv.s.x	v11, a1
	vslideup.vi	v12, v11, 3
	li	a1, 48
	vsetvli	zero, zero, e64, m1, tu, ma
	vmv.s.x	v12, a1
	vsetivli	zero, 2, e64, m1, tu, ma
	vslideup.vi	v12, v10, 1
	li	a1, 52
	vmv.s.x	v10, a1
	vsetivli	zero, 3, e64, m1, tu, ma
	vslideup.vi	v12, v10, 2
	vsetvli	a1, zero, e64, m1, ta, ma
	vadd.vv	v10, v12, v12
	vsetivli	zero, 4, e16, mf4, ta, ma
	vluxei64.v	v11, (a2), v10
	add	a0, a0, a3
	sraiw	a1, a5, 16
	vsetvli	zero, zero, e32, mf2, ta, ma
	vsext.vf2	v10, v11
	vmv.s.x	v11, a1
	vsetivli	zero, 2, e32, mf2, tu, ma
	vmv1r.v	v12, v11
	vslideup.vi	v12, v11, 1
	vsetivli	zero, 3, e32, mf2, tu, ma
	vslideup.vi	v12, v11, 2
	vsetivli	zero, 4, e32, mf2, tu, ma
	vslideup.vi	v12, v11, 3
	vsetvli	zero, zero, e32, mf2, ta, ma
	vmul.vv	v10, v12, v10
	li	a1, 53
	vsetvli	zero, zero, e64, m1, ta, ma
	vmv.s.x	v11, a1
	li	a1, 51
	vmv.s.x	v12, a1
	vsetivli	zero, 2, e64, m1, ta, ma
	vslideup.vi	v13, v12, 1
	vsetivli	zero, 3, e64, m1, tu, ma
	vslideup.vi	v13, v11, 2
	li	a1, 49
	vmv.s.x	v13, a1
	li	a1, 55
	vmv.s.x	v11, a1
	vsetivli	zero, 4, e64, m1, tu, ma
	vslideup.vi	v13, v11, 3
	vsetvli	a1, zero, e64, m1, ta, ma
	vadd.vv	v11, v13, v13
	vsetivli	zero, 4, e16, mf4, ta, ma
	vluxei64.v	v12, (a2), v11
	sraiw	a0, a0, 16
	vsetvli	zero, zero, e32, mf2, ta, ma
	vmv.s.x	v11, a0
	vsext.vf2	v13, v12
	vsetivli	zero, 2, e32, mf2, tu, ma
	vmv1r.v	v12, v11
	vslideup.vi	v12, v11, 1
	vsetivli	zero, 3, e32, mf2, tu, ma
	vslideup.vi	v12, v11, 2
	vsetivli	zero, 4, e32, mf2, tu, ma
	vslideup.vi	v12, v11, 3
	vsetvli	zero, zero, e32, mf2, ta, ma
	vmul.vv	v11, v12, v13
	vadd.vv	v8, v8, v9
	vadd.vv	v9, v10, v11
	vadd.vv	v8, v8, v9
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	vse32.v	v8, (a0)
	ld	ra, 200(sp)                     # 8-byte Folded Reload
	ld	s0, 192(sp)                     # 8-byte Folded Reload
	ld	s1, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s3, 168(sp)                     # 8-byte Folded Reload
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	ld	s5, 152(sp)                     # 8-byte Folded Reload
	ld	s6, 144(sp)                     # 8-byte Folded Reload
	ld	s7, 136(sp)                     # 8-byte Folded Reload
	ld	s8, 128(sp)                     # 8-byte Folded Reload
	ld	s9, 120(sp)                     # 8-byte Folded Reload
	ld	s10, 112(sp)                    # 8-byte Folded Reload
	ld	s11, 104(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 208
	ret
.Lfunc_end1:
	.size	kernel, .Lfunc_end1-kernel
                                        # -- End function
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git e2cd0851faaba39cc04c3059df25d22a02b1e682)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

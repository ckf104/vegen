; ModuleID = 'add.c'
source_filename = "add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global [20 x i32] zeroinitializer, align 16
@a = dso_local global [20 x i32] zeroinitializer, align 16
@c = dso_local global [20 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mul_serial(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b, ptr nocapture noundef writeonly %c, i32 noundef %N) local_unnamed_addr #0 {
entry:
  %cmp9 = icmp sgt i32 %N, 0
  br i1 %cmp9, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %N to i64
  %xtraiter = and i64 %wide.trip.count, 7
  %0 = icmp ult i32 %N, 8
  br i1 %0, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  br label %for.body

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.body, %for.body.preheader
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.7, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.cond.cleanup.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.cond.cleanup.loopexit.unr-lcssa ]
  %arrayidx.epil = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.epil
  %1 = load i32, ptr %arrayidx.epil, align 4, !tbaa !5
  %arrayidx2.epil = getelementptr inbounds i32, ptr %b, i64 %indvars.iv.epil
  %2 = load i32, ptr %arrayidx2.epil, align 4, !tbaa !5
  %mul.epil = mul nsw i32 %2, %1
  %arrayidx4.epil = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.epil
  store i32 %mul.epil, ptr %arrayidx4.epil, align 4, !tbaa !5
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup, label %for.body.epil, !llvm.loop !9

for.cond.cleanup:                                 ; preds = %for.body.epil, %for.cond.cleanup.loopexit.unr-lcssa, %entry
  ret void

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.7, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.7, %for.body ]
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx2 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %mul = mul nsw i32 %4, %3
  %arrayidx4 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv
  store i32 %mul, ptr %arrayidx4, align 4, !tbaa !5
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.next
  %5 = load i32, ptr %arrayidx.1, align 4, !tbaa !5
  %arrayidx2.1 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv.next
  %6 = load i32, ptr %arrayidx2.1, align 4, !tbaa !5
  %mul.1 = mul nsw i32 %6, %5
  %arrayidx4.1 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.next
  store i32 %mul.1, ptr %arrayidx4.1, align 4, !tbaa !5
  %indvars.iv.next.1 = or i64 %indvars.iv, 2
  %arrayidx.2 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.next.1
  %7 = load i32, ptr %arrayidx.2, align 4, !tbaa !5
  %arrayidx2.2 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv.next.1
  %8 = load i32, ptr %arrayidx2.2, align 4, !tbaa !5
  %mul.2 = mul nsw i32 %8, %7
  %arrayidx4.2 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.next.1
  store i32 %mul.2, ptr %arrayidx4.2, align 4, !tbaa !5
  %indvars.iv.next.2 = or i64 %indvars.iv, 3
  %arrayidx.3 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.next.2
  %9 = load i32, ptr %arrayidx.3, align 4, !tbaa !5
  %arrayidx2.3 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv.next.2
  %10 = load i32, ptr %arrayidx2.3, align 4, !tbaa !5
  %mul.3 = mul nsw i32 %10, %9
  %arrayidx4.3 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.next.2
  store i32 %mul.3, ptr %arrayidx4.3, align 4, !tbaa !5
  %indvars.iv.next.3 = or i64 %indvars.iv, 4
  %arrayidx.4 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.next.3
  %11 = load i32, ptr %arrayidx.4, align 4, !tbaa !5
  %arrayidx2.4 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv.next.3
  %12 = load i32, ptr %arrayidx2.4, align 4, !tbaa !5
  %mul.4 = mul nsw i32 %12, %11
  %arrayidx4.4 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.next.3
  store i32 %mul.4, ptr %arrayidx4.4, align 4, !tbaa !5
  %indvars.iv.next.4 = or i64 %indvars.iv, 5
  %arrayidx.5 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.next.4
  %13 = load i32, ptr %arrayidx.5, align 4, !tbaa !5
  %arrayidx2.5 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv.next.4
  %14 = load i32, ptr %arrayidx2.5, align 4, !tbaa !5
  %mul.5 = mul nsw i32 %14, %13
  %arrayidx4.5 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.next.4
  store i32 %mul.5, ptr %arrayidx4.5, align 4, !tbaa !5
  %indvars.iv.next.5 = or i64 %indvars.iv, 6
  %arrayidx.6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.next.5
  %15 = load i32, ptr %arrayidx.6, align 4, !tbaa !5
  %arrayidx2.6 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv.next.5
  %16 = load i32, ptr %arrayidx2.6, align 4, !tbaa !5
  %mul.6 = mul nsw i32 %16, %15
  %arrayidx4.6 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.next.5
  store i32 %mul.6, ptr %arrayidx4.6, align 4, !tbaa !5
  %indvars.iv.next.6 = or i64 %indvars.iv, 7
  %arrayidx.7 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.next.6
  %17 = load i32, ptr %arrayidx.7, align 4, !tbaa !5
  %arrayidx2.7 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv.next.6
  %18 = load i32, ptr %arrayidx2.7, align 4, !tbaa !5
  %mul.7 = mul nsw i32 %18, %17
  %arrayidx4.7 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.next.6
  store i32 %mul.7, ptr %arrayidx4.7, align 4, !tbaa !5
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body, !llvm.loop !11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %i3 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  br label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [20 x i32], ptr @b, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [20 x i32], ptr @a, i64 0, i64 %idxprom1
  store i32 2, ptr %arrayidx2, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond.cleanup
  call void @mul_serial(ptr noundef @a, ptr noundef @b, ptr noundef @c, i32 noundef 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #4
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i3) #4
  store i32 0, ptr %i3, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %4 = load i32, ptr %i3, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, 20
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6

for.cond.cleanup6:                                ; preds = %for.cond4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i3) #4
  br label %for.end12

for.body7:                                        ; preds = %for.cond4
  %5 = load i32, ptr %i3, align 4, !tbaa !5
  %idxprom8 = sext i32 %5 to i64
  %arrayidx9 = getelementptr inbounds [20 x i32], ptr @c, i64 0, i64 %idxprom8
  %6 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %7 = load i32, ptr %sum, align 4, !tbaa !5
  %add = add nsw i32 %7, %6
  store i32 %add, ptr %sum, align 4, !tbaa !5
  br label %for.inc10

for.inc10:                                        ; preds = %for.body7
  %8 = load i32, ptr %i3, align 4, !tbaa !5
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, ptr %i3, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !14

for.end12:                                        ; preds = %for.cond.cleanup6
  %9 = load i32, ptr %sum, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #4
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git e2cd0851faaba39cc04c3059df25d22a02b1e682)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}

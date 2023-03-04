; RUN: %opt --passes=gslp -test-codegen %s
; To see new cfg when original cfg has diamond control flow
;    C1
;   /  \
;  C2  C3
;   \  /
;    C4

; ModuleID = 'diamond-control.ll'
source_filename = "a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @foo(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %0, 3
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp slt i32 %1, 2
  br i1 %6, label %9, label %common.ret

7:                                                ; preds = %3
  %8 = icmp slt i32 %2, 4
  br i1 %8, label %9, label %common.ret

common.ret:                                       ; preds = %7, %5, %9
  %common.ret.op = phi i32 [ %10, %9 ], [ 0, %5 ], [ 1, %7 ]
  ret i32 %common.ret.op

9:                                                ; preds = %7, %5
  %10 = add nsw i32 %1, 3
  br label %common.ret
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git e2cd0851faaba39cc04c3059df25d22a02b1e682)"}

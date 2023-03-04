; RUN: %opt --passes=gslp -test-codegen %s -o /dev/null
; an implicit cycle between vector packs from SLP-2000 paper

; ModuleID = 'cycle2.ll'
source_filename = "cycle2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds i32, ptr %0, i64 0
  %6 = load i32, ptr %5, align 4
  %7 = mul nsw i32 %6, 1
  %8 = getelementptr inbounds i32, ptr %0, i64 1
  %9 = load i32, ptr %8, align 4
  %10 = mul nsw i32 %9, 2
  %11 = getelementptr inbounds i32, ptr %0, i64 2
  %12 = load i32, ptr %11, align 4
  %13 = mul nsw i32 %12, 3
  %14 = getelementptr inbounds i32, ptr %1, i64 0
  %15 = load i32, ptr %14, align 4
  %16 = mul nsw i32 %15, 1
  %17 = getelementptr inbounds i32, ptr %1, i64 1
  %18 = load i32, ptr %17, align 4
  %19 = mul nsw i32 %18, 2
  %20 = getelementptr inbounds i32, ptr %1, i64 2
  %21 = load i32, ptr %20, align 4
  %22 = mul nsw i32 %21, %13
  %23 = getelementptr inbounds i32, ptr %1, i64 3
  %24 = load i32, ptr %23, align 4
  %25 = mul nsw i32 %24, 4
  %26 = getelementptr inbounds i32, ptr %0, i64 3
  %27 = load i32, ptr %26, align 4
  %28 = mul nsw i32 %27, %19
  %29 = add nsw i32 %7, %10
  %30 = add nsw i32 %29, %13
  %31 = add nsw i32 %30, %28
  %32 = add nsw i32 %16, %19
  %33 = add nsw i32 %32, %22
  %34 = add nsw i32 %33, %25
  %35 = mul nsw i32 %31, %34
  ret i32 %35
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git e2cd0851faaba39cc04c3059df25d22a02b1e682)"}

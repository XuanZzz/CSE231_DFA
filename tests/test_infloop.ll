; ModuleID = 'test_infloop.c'
source_filename = "test_infloop.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @foo(i32, i8*, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* %8, i32** %9, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %4
  store i32* %7, i32** %9, align 8
  br label %18

; <label>:18:                                     ; preds = %17, %4
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %18
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  br label %28

; <label>:25:                                     ; preds = %18
  %26 = getelementptr inbounds i32, i32* %7, i64 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  br label %28

; <label>:28:                                     ; preds = %25, %22
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %29, 10
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %28
  %32 = load i32*, i32** %9, align 8
  store i32* %32, i32** %11, align 8
  br label %34

; <label>:33:                                     ; preds = %28
  store i32* %10, i32** %11, align 8
  br label %34

; <label>:34:                                     ; preds = %33, %31
  store i32 0, i32* %13, align 4
  br label %35

; <label>:35:                                     ; preds = %56, %34
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 100
  br i1 %37, label %38, label %59

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %39, %40
  %42 = icmp slt i32 %41, 20
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %38
  store i32* %10, i32** %12, align 8
  br label %56

; <label>:44:                                     ; preds = %38
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %45, %46
  %48 = icmp slt i32 %47, 30
  br i1 %48, label %49, label %52

; <label>:49:                                     ; preds = %44
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32* %51, i32** %12, align 8
  br label %55

; <label>:52:                                     ; preds = %44
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32* %54, i32** %12, align 8
  br label %55

; <label>:55:                                     ; preds = %52, %49
  br label %56

; <label>:56:                                     ; preds = %55, %43
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %35

; <label>:59:                                     ; preds = %35
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 5.0.1 (tags/RELEASE_501/final 322011)"}

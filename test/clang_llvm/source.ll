; ModuleID = 'source.c'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-pc-linux-gnu"

; Function Attrs: nounwind
define i32 @main() #0 !dbg !4 {
  %1 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !11, metadata !12), !dbg !13
  store i32 1, i32* %a, align 4, !dbg !13
  call void @llvm.dbg.declare(metadata i32* %b, metadata !14, metadata !12), !dbg !15
  store i32 2, i32* %b, align 4, !dbg !15
  %2 = load i32, i32* %b, align 4, !dbg !16
  %3 = icmp eq i32 %2, 2, !dbg !18
  br i1 %3, label %4, label %7, !dbg !19

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* %b, align 4, !dbg !20
  %6 = add nsw i32 %5, 1, !dbg !20
  store i32 %6, i32* %b, align 4, !dbg !20
  br label %7, !dbg !22

; <label>:7                                       ; preds = %4, %0
  call void @llvm.dbg.declare(metadata i32* %c, metadata !23, metadata !12), !dbg !24
  store i32 3, i32* %c, align 4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %d, metadata !25, metadata !12), !dbg !26
  store i32 4, i32* %d, align 4, !dbg !26
  br label %8, !dbg !27

; <label>:8                                       ; preds = %11, %7
  %9 = load i32, i32* %a, align 4, !dbg !28
  %10 = icmp slt i32 %9, 5, !dbg !30
  br i1 %10, label %11, label %14, !dbg !31

; <label>:11                                      ; preds = %8
  %12 = load i32, i32* %a, align 4, !dbg !32
  %13 = add nsw i32 %12, 1, !dbg !32
  store i32 %13, i32* %a, align 4, !dbg !32
  br label %8, !dbg !34

; <label>:14                                      ; preds = %8
  call void @llvm.dbg.declare(metadata i32* %e, metadata !36, metadata !12), !dbg !37
  store i32 5, i32* %e, align 4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %f, metadata !38, metadata !12), !dbg !39
  store i32 6, i32* %f, align 4, !dbg !39
  %15 = load i32, i32* %1, align 4, !dbg !40
  ret i32 %15, !dbg !40
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "source.c", directory: "/home/kayas/computer_topics_llvm")
!2 = !{}
!3 = !{!4}
!4 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 4, isOptimized: false, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}
!11 = !DILocalVariable(name: "a", scope: !4, file: !1, line: 5, type: !7)
!12 = !DIExpression()
!13 = !DILocation(line: 5, column: 6, scope: !4)
!14 = !DILocalVariable(name: "b", scope: !4, file: !1, line: 6, type: !7)
!15 = !DILocation(line: 6, column: 6, scope: !4)
!16 = !DILocation(line: 8, column: 6, scope: !17)
!17 = distinct !DILexicalBlock(scope: !4, file: !1, line: 8, column: 6)
!18 = !DILocation(line: 8, column: 8, scope: !17)
!19 = !DILocation(line: 8, column: 6, scope: !4)
!20 = !DILocation(line: 10, column: 3, scope: !21)
!21 = distinct !DILexicalBlock(scope: !17, file: !1, line: 9, column: 2)
!22 = !DILocation(line: 11, column: 2, scope: !21)
!23 = !DILocalVariable(name: "c", scope: !4, file: !1, line: 13, type: !7)
!24 = !DILocation(line: 13, column: 6, scope: !4)
!25 = !DILocalVariable(name: "d", scope: !4, file: !1, line: 14, type: !7)
!26 = !DILocation(line: 14, column: 6, scope: !4)
!27 = !DILocation(line: 16, column: 2, scope: !4)
!28 = !DILocation(line: 16, column: 9, scope: !29)
!29 = !DILexicalBlockFile(scope: !4, file: !1, discriminator: 1)
!30 = !DILocation(line: 16, column: 11, scope: !29)
!31 = !DILocation(line: 16, column: 2, scope: !29)
!32 = !DILocation(line: 18, column: 3, scope: !33)
!33 = distinct !DILexicalBlock(scope: !4, file: !1, line: 17, column: 2)
!34 = !DILocation(line: 16, column: 2, scope: !35)
!35 = !DILexicalBlockFile(scope: !4, file: !1, discriminator: 2)
!36 = !DILocalVariable(name: "e", scope: !4, file: !1, line: 21, type: !7)
!37 = !DILocation(line: 21, column: 6, scope: !4)
!38 = !DILocalVariable(name: "f", scope: !4, file: !1, line: 22, type: !7)
!39 = !DILocation(line: 22, column: 6, scope: !4)
!40 = !DILocation(line: 23, column: 1, scope: !4)

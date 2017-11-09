clang source.c -g -S -emit-llvm
opt --dot-cfg source.ll
dot -Tpng cfg.main.dot > cfg.fun1.png
llc -O0 source.ll o sample-x86.s

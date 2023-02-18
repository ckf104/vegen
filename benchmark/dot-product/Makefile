all: build/dot-clang build/dot-vegen build/dot-clang.ll build/dot-vegen.ll

build/dot-clang: dot.cpp
	clang++ -march=native -O3 dot.cpp -lbenchmark -lbenchmark_main -o build/dot-clang

build/dot-clang.ll: dot.cpp
	clang++ -march=native -S -emit-llvm -O3 dot.cpp -o - | c++filt > build/dot-clang.ll

build/dot-vegen: dot.cpp ../../build/vegen-clang++ 
	../../build/vegen-clang++ -march=native -O3 dot.cpp -lbenchmark -lbenchmark_main -o build/dot-vegen

build/dot-vegen.ll: dot.cpp ../../build/vegen-clang++
	../../build/vegen-clang++ -march=native -S -emit-llvm -O3 dot.cpp -o - | c++filt > build/dot-vegen.ll

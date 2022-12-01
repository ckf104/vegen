gcc -S -O3 -o gcc.S $1
clang -S -O3 -o clang.S $1
build/vegen-clang -S -O3 -o vegen.S $1

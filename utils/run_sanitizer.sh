LD_PRELOAD=/home/ckf104/install/llvm/lib/clang/15.0.7/lib/x86_64-unknown-linux-gnu/libclang_rt.asan.so \
					 /home/ckf104/tmp/install/llvm-git-debug-ext/bin/clang -mllvm -opaque-pointers \
					 -fplugin=./build/gslp/libGSLP.so -fpass-plugin=./build/gslp/libGSLP.so \
					 -Xclang -add-plugin -Xclang gslp -fplugin-arg-gslp-filt=fill_inverse_cmap \
					 -fplugin-arg-gslp-wrappers-dir=/home/ckf104/tmp/rvv/build/ -O3 -S -emit-llvm \
					 /home/ckf104/Downloads/mibench/consumer/jpeg/jpeg-6a/jquant2.c \
					 --target=riscv64-unknown-linux-gnu -march=rv64gcv \
					 -mllvm -riscv-v-vector-bits-min=256 -fno-vectorize -fno-slp-vectorize \
					 --sysroot=/home/ckf104/install/riscv/sysroot \
					 -o sum.ll

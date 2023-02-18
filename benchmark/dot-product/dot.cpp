#include <benchmark/benchmark.h>
#include <immintrin.h>
#include <iostream>
#include <algorithm>

typedef unsigned long size_t;
typedef float FLOAT;
volatile FLOAT f;

extern "C" FLOAT dot_product_scalar(FLOAT* a, FLOAT* b, size_t n) {
  FLOAT sum = 0;
  const FLOAT* limit = a + n;
  for (; a < limit; a++, b++) {
    sum += a[0] * b[0];
  }
  return sum;
}

__attribute__((optnone))
void BM_dot(benchmark::State& state) {
  size_t l = state.range(0);
  FLOAT *a = new FLOAT[l], *b = new FLOAT[l];
  std::fill(a, a + l, 1.2f);
  std::fill(b, b + l, 1.7f);
  FLOAT s = 0;
  for (auto _ : state) s += dot_product_scalar(a, b, l);
	//std::cout << "l= " << l << ", sum=" << s << std::endl;
	f = s;
}
// Register the function as a benchmark
BENCHMARK(BM_dot)->Arg(128)->Arg(256)->Arg(512);

FLOAT dot_product_simd(FLOAT* a, FLOAT* b, size_t n) {
  assert(n % 8 == 0);
  __m256 sum = _mm256_setzero_ps();
  size_t limit = n - 7;

  for (size_t i = 0; i < limit; i += 8) {
    __m256 buf1 = _mm256_loadu_ps(a + i);
    __m256 buf2 = _mm256_loadu_ps(b + i);
    sum = _mm256_fmadd_ps(buf1, buf2, sum);
  }

  FLOAT buffer[8];
  _mm256_storeu_ps(buffer, sum);
  return buffer[0] + buffer[1] + buffer[2] + buffer[3] + buffer[4] + buffer[5] +
         buffer[6] + buffer[7];
}

void BM_dot256(benchmark::State& state) {
  size_t l = state.range(0);
  FLOAT *a = new FLOAT[l], *b = new FLOAT[l];
  std::fill(a, a + l, 1.2f);
  std::fill(b, b + l, 1.7f);
  FLOAT s = 0;
  for (auto _ : state) s += dot_product_simd(a, b, l);
  f = s;
}

BENCHMARK(BM_dot256)->Arg(128)->Arg(256)->Arg(512);

typedef unsigned uint32_t;
typedef unsigned long uint64_t;

void kernel(uint64_t* restrict a, uint32_t* restrict b, uint32_t* restrict c) {
  for (int i = 0; i < 100; i++) {
    a[i] = (uint64_t)b[i] + c[i];
  }
}

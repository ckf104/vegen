#include <stdio.h>

int m[600] = {1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2};
int n[600] = {1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2};

int dot_product(int a[], int b[], int n) {
  int sum = 0;
  for (int i = 0; i < n; ++i) {
    sum += a[i] * b[i];
  }
  return sum;
}

int main() {
  printf("%d\n", dot_product(m, n, 600));
  return 0;
}

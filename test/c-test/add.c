// RUN: %clang-o3 %s -o %t && %t | FileCheck %s

// CHECK: 40
#include <stdio.h>

void mul_serial(int a[], int b[], int c[], int N) {
  for (int i = 0; i < N; i += 1) {
    c[i] = a[i] * b[i];
  }
}

int a[20], b[20], c[20];

__attribute__((optnone))
int main(){
	for(int i=0;i<20;++i){
		b[i] = 1;
		a[i] = 2;
	}
	mul_serial(a, b, c, 20);
	int sum = 0;
	for(int i=0;i<20;++i)
		sum += c[i];
	printf("%d\n", sum);
	return 0;
}

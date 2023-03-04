// RUN: %clang-o3 %s -o %t && %t | FileCheck %s

// CHECK: 50

#include <stdio.h>

int m[20] = {1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2};
int n[20] = {1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2};

int dot_product(int a[], int b[], size_t n){
	int sum = 0;
	for(size_t i=0; i < n;++i){
		sum += a[i] * b[i];
	}
	return sum;
}

__attribute__((optnone))
int main(){
	printf("%d\n", dot_product(m, n, 20));
	return 0;
}

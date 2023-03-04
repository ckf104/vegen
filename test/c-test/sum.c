// RUN: %clang-o3 %s -o %t && %t | FileCheck %s

// CHECK: 210
#include <stdio.h>

int a[20] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};

int foo(int a[], int n){
	int sum = 0;
	for(int i=0;i<n;++i)
		sum += a[i];
	return sum;
}

int main(){
	printf("%d\n", foo(a, 20));
	return 0;
}

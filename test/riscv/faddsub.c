#include <stdio.h>

typedef float FLOAT;
void kernel(FLOAT* restrict arr1, FLOAT* restrict arr2, FLOAT* restrict arr3, int n){
	for(int i=0;i<n;++i){
		if(i % 2 == 0)
			arr3[i] = arr1[i] + arr2[i];
		else
			arr3[i] = arr1[i] - arr2[i];
	}
}

__attribute__((optnone))
int main(){
	FLOAT a[8], b[8],c[8], ret = 0;
	for(int i=0; i < 8; ++i){
		a[i] = i;
		b[i] = i * i;
	}
	kernel(a, b, c, 8);
	for(int i=0; i < 8; ++i){
		if(i % 2 == 0 && c[i] != i * ( i + 1 ))
			ret = 1;
		else if(i % 2 == 1 && c[i] != i - i * i)
			ret = 1;
	}
	if(ret != 1){
		printf("pass\n");
	}
	return ret;
}

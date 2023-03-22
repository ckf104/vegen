#include <stdio.h>
typedef unsigned uint32_t;

void kernel(uint32_t* restrict a, uint32_t* restrict b, int n){
	for(int i=0; i < n; ++i){
		if(i % 2 == 0)
			a[i] = a[i] + b[i];
		else
			a[i] = a[i] - b[i];
	}
}

__attribute__((optnone))
int main(){
	uint32_t a[8], b[8], ret = 0;
	for(int i=0; i < 8; ++i){
		a[i] = i;
		b[i] = i * i;
	}
	kernel(a, b, 8);
	for(int i=0; i < 8; ++i){
		if(i % 2 == 0 && a[i] != i * ( i + 1 ))
			ret = 1;
		else if(i % 2 == 1 && a[i] != i - i * i)
			ret = 1;
	}
	if(ret != 1){
		printf("pass\n");
	}
	return ret;
}

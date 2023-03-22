#include <stdio.h>

typedef unsigned uint32_t;

// saturating add
void kernel(uint32_t* restrict a, uint32_t* restrict b, int n){
	for(int i=0; i < n; ++i){
		uint32_t m = a[i] + b[i];
		if(m < a[i ])m = -1;
		a[i] = m;
	}
}

__attribute__((optnone))
int main(){
	int ret = 0;
	uint32_t a[10];
	uint32_t b[10];
	for(uint32_t i = 0; i < 10; ++i){
		a[i] = -5 + i;
		b[i] = 100 + i;
	}
	kernel(a, b, 10);
	for(uint32_t i = 0; i < 10; ++i){
		if(i < 5 && a[i] != -1){ ret = 1;}
		if(i >= 5 && a[i] != 95 + 2 * i){ ret = 1;}
	}
	if(ret == 0){
		printf("pass!\n");
	}
	return ret;
}
			
			

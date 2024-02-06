#include <stdio.h>

int mask[] = {1,-1,1,-1};
int a[] = {1,2,4,5};
int b[4];
int n = 4;

void kernel(int* __restrict__ a, int* __restrict__ b, int n){
	for(int i=0;i<n;++i){
		if(mask[i] > 0)
			b[i] = a[i];
		else 
			b[i] = 7;
	}
}
/*
int main(){
	ff(a, b, 4);
	return 0;
}
*/

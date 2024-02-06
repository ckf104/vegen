
// To understand how vegen translate multiple exits loop into one exit loop
void foo(int *a, int n, int m){
#pragma clang  loop unroll(disable)
	for(int i=0; i < n;++i){
		if(*a > m) break;
		*a += 1;
	}
}

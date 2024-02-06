typedef float FLOAT;

void kernel(FLOAT* a, FLOAT b, int n){
	for(int i=0;i<n;++i){
		a[i] = a[i]*b;
	}
}

#include <stdio.h>

typedef long BLASLONG;
typedef float FLOAT;
void kernel( BLASLONG n, FLOAT *alpha , FLOAT *x )
{

	BLASLONG i;
	FLOAT da_r = alpha[0];
	FLOAT da_i = alpha[1];
	FLOAT t0;

	for( i=0; i<n; i+=1)
	{
		t0 = da_r *x[0] - da_i *x[1];	
		x[1] = da_r * x[1] + da_i * x[0];
		x[0] = t0;
		x+=2;
	}

}

FLOAT x[400];
FLOAT alpha[2] = {1.0, 2.0};
int main(){
	/*for(int i=0;i<400;++i){
		x[i] = i;
	}*/
	kernel(200, alpha, x);
	/*for(int i=0;i<400;++i){
		printf("%f\n", x[i]);
	}*/
	return 0;
}
	
	
		

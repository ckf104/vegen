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
FLOAT alpha[2] = {1.0, 1.5};
int main(){
	kernel(400, alpha, x);
	return 0;
}
	

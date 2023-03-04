// RUN: %clang-o3 -march=native %s -o %t && %t 

int a = 0;
int c = 0;
int b = 4;

// this test case is used to understand why vegen ignores
// back edges and I have understood now
int main(){
	int i = 0;
#pragma clang loop unroll(disable)
	do{
		if(i > 2){
			goto sig;
		}
		c++;
		i++;
	}while(i < b);
	a = 2;
sig:
	return 0;
}

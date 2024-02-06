
// false example
void foo(int * restrict a, int * restrict b){
	int i = a[0];
	int j = 2;
	if(i < 3){
		j = a[1];
	}
	b[0] = i;
	b[1] = j;
}

__attribute__((optnone))
int main(){
	int a[] = {5,6}, b[] = {7, 8};
	foo(a, b);
	if(b[0] == 2 && b[1] == 6)return 0;
	else return 1;
}

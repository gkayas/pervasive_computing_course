#include <stdio.h>


int sum(int m, int n)
{
	int sum = 0;
	for (int i = m; i <= n; i++){
		sum += i;
	}
		
	return sum;
}


int add(int a, int b)
{
	int num = sum(a, b);
	return num;
}

int main()
{
	int i = 5;
	int j = 10;
	int result = add(i, j);
	printf("sum for %d to %d = %d \n", i, j, result);

	return 0;
}

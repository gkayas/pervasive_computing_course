#include <stdio.h>

int main()
{
	int a = 1;       //Sequential instructions
	int b = 2;       //-----------------------
	
	if (b == 2)      //Jump instruction
	{
		++b;         //Jump target
	}
	
	int c = 3;       //Sequential instructions
	int d = 4;       //-----------------------
	
	while (a < 5)    //Jump instruction and jump target
	{
		++a;         //Jump target
	}
	
	int e = 5;       //Sequential instructions
	int f = 6;       //-----------------------
}

#include <stdio.h>
#include <stdlib.h>


int main()
{
    int num, res = 0;
    int fib[30];
    fib[0] = 1;
    fib[1] = 1;

    for (int i = 2; i < 30; ++i) {
    	fib[i] = fib[i-1] + fib[i-2];
    }    
    
    return 0;

}
#include <stdio.h>
#include <stdlib.h>


int main()
{
    int num, res = 0;
    int fib[20];
    fib[0] = 1;
    fib[1] = 1;

    for (int i = 2; i < 20; ++i) {
    	fib[i] = fib[i-1] + fib[i-2];
    }    
    
    return 0;

}
#include <stdio.h>
#include <stdlib.h>

int fib(int n) {
    if(n == 0 || n == 1) return 1;
    return fib(n-1) + fib(n-2);
}

int main()
{
    int num = 0;
    scanf("%d", &num);

    int sth = num == 0 ? 0 : num+1;

    int x = 0;
    if(sth==0) {
    	x += num;
    }
    else {
    	x += sth;
    }

    printf("%d\n", x);
    return 0;
}
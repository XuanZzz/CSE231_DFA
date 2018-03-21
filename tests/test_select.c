#include <stdio.h>
#include <stdlib.h>

int foo(int a) {
 return a > 0 ? 123: 321; 
}

int main()
{
    int num = 0;
    scanf("%d", &num);

    int sth = 0;
    switch(num) {
        case 0: sth=1;break;
        case 1: sth=-1;break;
        default: break;
    }
    int a = foo(sth);
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
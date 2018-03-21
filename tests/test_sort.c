#include <stdio.h>
#include <stdlib.h>

int main()
{
    int num, i, j, *ptr, sum, swap = 0;
    num = 1000;
    ptr = (int*) malloc(1000 * sizeof(int));  //memory allocated using malloc

    srand(7);
    for(i = 0; i < num; ++i) {
        *(ptr + i) = rand() % 10000;
    }

    for(i = 0; i < num; ++i)
    {
        for(j = 0; j < num - i - 1; ++j) {
        	if (*(ptr + i) > *(ptr + j)) {
        		swap = *(ptr + j);
        		*(ptr + j) = *(ptr + i);
        		*(ptr + i) = swap;
        	}
        }
    }

    free(ptr);
    return 0;
}
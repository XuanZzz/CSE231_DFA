#include <stdlib.h>

// typedef struct NodeN{
// 	int *a;
// 	char *b;
// } node;

int foo(int x, char *ch,int yy,int zz){
	// int i=0;
	// while(i<100){
	// 	if(i<50)
	// 		x=x+1;
	// 	else
	// 		x=x+2;
	// 	i++;
	// }
	// return x;

	// int a[10]={1,2,3,4,5,6,7,8,9,10};

	// for(int i=0;i<10;i++){
	// 	for(int j=0;j<10;j++){
	// 		if(a[i]<a[j]){
	// 			int t=a[i];
	// 			a[i]=a[j];
	// 			a[j]=t;
	// 		}
	// 	}
	// }
	// return a[x];

	// int a[30]={0};
	// a[1]=a[2]=1;
	// for(int i=3;i<30;i++){
	// 	a[i]=a[i-1]+a[i-2];
	// }
	// return a[29];

	// int a[10][10]={0},b[10][10]={0},c[10][10]={0};
	// srand(7);
	// for(int i=0;i<10;i++){
	// 	for(int j=0;j<10;j++){
	// 		a[i][j]=rand()%10;
	// 	}
	// }
	// for(int i=0;i<10;i++){
	// 	for(int j=0;j<10;j++){
	// 		b[i][j]=rand()%10;
	// 	}
	// }
	// for(int i=0;i<10;i++){
	// 	for(int j=0;j<10;j++){
	// 		c[i][j]=0;
	// 		for(int k=0;k<10;k++){
	// 			c[i][j]+=a[i][k]*b[k][j];
	// 		}
	// 	}
	// }
	// return c[5][5];

	// node n;
	// int y=6;
	// n.a=&y;
	// n.b=ch;
	// int res=0;
	// for(int i=0;i<*(n.a);i++){
	// 	res+=n.b[i];
	// }
	// return res;

	int* a=&zz;
	if(x>3)
		a=&yy;
	int b=yy;
	if(x>0)
		b=*a;
	else
		b=*(&yy+1);
	int *n=NULL;
	int *m=NULL;
	if(x>10){
		n=a;
	}else{
		n=&b;
	}
	int i=0;
	while(i<100){
		if((i+x)<20){
			m=&b;
		}else if((i+x)<30){
			m=n+1;
		}else{
			m=m+1;
		}
		i++;
	}
	int res=*m;
	return res;

	// char* n=NULL;
	// int i=0;
	// while(i<100){
	// 	if(i<50)
	// 		n=n+1;
	// 	else
	// 		n=n+2;
	// 	i++;
	// }
	// int res=*n;
	// return res;
}

// struct munger_struct {
//   int f1;
//   int f2;
// };
// int munge(int a, int b) {
//   struct munger_struct x;
//   x.f1 = 0;
//   x.f2 = a;
//   struct munger_struct * y = &x;
//   if(a>5)
//   	y->f1 = b;
//   else
//   	y->f1 = b-1;
//   int z = y->f1 + y->f2;
//   return z;
// }

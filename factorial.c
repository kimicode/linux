#include<stdio.h>
#include<stdlib.h>
int factorial(int n);
int main()

{
printf("%d",factorial(10));
exit(0);

}

int factorial(int n){
if(n==0)
return 1;
else
 return n* factorial(n-1);
}

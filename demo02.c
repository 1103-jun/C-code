#include <stdio.h>
#include <stdlib.h>
int main()
{
    int hour1,minute1;
    int hour2,minute2;
    printf("Enter first time (hour minute): \n");
    fflush(stdout);
    scanf("%d %d",&hour1,&minute1);
    printf("Enter second time (hour minute): \n");
    fflush(stdout);
    scanf("%d %d",&hour2,&minute2);
    int t1=hour1*60+minute1;
    int t2=hour2*60+minute2;
    printf("Difference = %d minutes\n",t1-t2);
    system("pause");
    return 0;
}

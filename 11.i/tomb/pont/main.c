/*TOMB2DIM*/
#include <stdio.h>
#define MERETn 6
#define MERETm 5
int main()
{
 int x[MERETn][MERETm];
 int i, j, osszeg = 0, szorzat = 1;
 srand(time(NULL));

 for (i = 0; i < MERETn; i++)
   for (j = 0; j < MERETm; j++)
   {
     x[i][j]=rand()%10;
   }
 printf("x tomb tartalma\n");
 for (i = 0; i < MERETn; i++)
 {
   for (j = 0; j < MERETm; j++)
     printf("%6d",x[i][j]);
   printf("\n");
 }

 int a=0,p;

 scanf("%d",&p);

 for (j = 0; j < MERETm; j++)

 {
    a=0;
    for (i = 0; i < MERETn; i++)

   {
     if (x[i][j]>p)
     {
       a=a+1;
     }
   }
    if(a==6)
    {
        printf("\nA %d-edik biro mindenkinek %d pontnal tobbet adott.",j,p);
    }

 }
 printf("\nSzorzat: %d\n",szorzat);
 printf("Osszeg : %d\n",osszeg);
 fflush(stdin); getchar();
 return 0;
}

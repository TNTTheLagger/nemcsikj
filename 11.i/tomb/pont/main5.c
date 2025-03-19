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
     x[i][j]=rand()%4;
   }
 printf("x tomb tartalma\n");
 for (i = 0; i < MERETn; i++)
 {
   for (j = 0; j < MERETm; j++)
     printf("%6d",x[i][j]);
   printf("\n");
 }

 int a=0,p;

 for (i = 0; i < MERETn; i++)

 {
    a=0;
    for (j = 0; j < MERETm; j++)

   {
     if (x[i][j]>2)
     {
       a=1;
     }
   }
    if(a==0)
    {
        printf("\nA %d-edik versenyzo mindenhol megbukott.",i);
    }

 }
 printf("\nSzorzat: %d\n",szorzat);
 printf("Osszeg : %d\n",osszeg);
 fflush(stdin); getchar();
 return 0;
}

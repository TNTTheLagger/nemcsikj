/*TOMB2DIM*/
#include <stdio.h>
#define MERET 4
int main()
{
 int x[MERET][MERET];
 int i, j, osszeg = 0, szorzat = 1;
 for (i = 0; i < MERET; i++)
   for (j = 0; j < MERET; j++)
   {
      if (i < j ) x[i][j] = 1;
      else if (i == j) x[i][j] = 2;
      else x[i][j] = 3;
   }
 printf("x tomb tartalma\n");
 for (i = 0; i < MERET; i++)
 {
   for (j = 0; j < MERET; j++)
     printf("%6d",x[i][j]);
   printf("\n");
 }
 for (i = 0; i < MERET; i++)
   for (j = 0; j < MERET; j++)
   {
     if ( i > j) osszeg += x[i][j];
     if ( i == j) szorzat *= x[i][j];
   }
 printf("\nSzorzat: %d\n",szorzat);
 printf("Osszeg : %d\n",osszeg);
 fflush(stdin); getchar();	
 return 0;
}

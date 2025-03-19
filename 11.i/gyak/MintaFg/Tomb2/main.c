/*TOMB2*/
#include <stdio.h>
#include <stdlib.h>

typedef int* tomb;
tomb TOlvas(int *db);
double Szamol(tomb b, int db, int *nagyobb, int *osszeg);
int main()
{
  int  x_db, x_osszege, x_nagyobb;
  double x_atlaga;
  tomb x;
  x = TOlvas(&x_db);
  if (x == NULL) 
  { printf("Memoriafoglalas nem sikerult!\n"); 
    fflush(stdin);getchar(); return 1; 
  }
  x_atlaga = Szamol(x, x_db, &x_nagyobb, &x_osszege);
  printf("\nTomb elemeinek osszege: %d\n",x_osszege);
  printf("Tomb elemeinek atlaga : %8.2lf\n",x_atlaga);
  printf("Atlagnal nagyobb elemek szama: %d\n",x_nagyobb);
  free(x);
  fflush(stdin); getchar();
  return 0;
}
tomb TOlvas(int *db)
{
  int i;
  tomb b = NULL;
  printf("Adatok szama: "); scanf("%d",db);
  b = (tomb)malloc(*db * sizeof(int));
  if (b != NULL)
  {
    for (i = 0; i<*db; i++)
    {
      printf("%2d. adat: ",i); scanf("%d",&b[i]);
    }
  } 
  return b;
}
double Szamol(tomb b, int db, int *nagyobb, int *osszeg)
{ 
  int i;
  double atlag;
  *nagyobb = 0;
  *osszeg = 0;
  for (i = 0; i<db; i++)
  {
    *osszeg += b[i];
  }
  atlag = (double)*osszeg/db;
  for (i = 0; i<db; i++)
  {
    if (b[i] > atlag) (*nagyobb)++;
  }
  return atlag;
}

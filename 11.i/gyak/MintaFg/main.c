/*MINTAFG*/
#include <stdio.h>
#include <stdlib.h>
/* a függvények prototípusai */
double Osszeg1(double x, double y);
void Osszeg2(double x, double y, double *s);
double Szamol(double x, double y, double *s);
void Fejlec1(void);
void Fejlec2(void);
int main()
{
  double a = 1, b = 2, ered1, ered2, ered3, *ered4, 
         atlag1, atlag2;
  ered1 = Osszeg1(a,b);
  Fejlec1();
  printf("Osszeg1 eredmenye: %lf\n",ered1);
  printf("Osszeg1 printf()-ben hivasa: %lf\n",Osszeg1(2,3));
  Fejlec2();
  printf("1.adat: "); scanf("%lf",&a);
  printf("2.adat: "); scanf("%lf",&b);
  Osszeg2(a,b,&ered2);
  printf("Osszeg2 eredmenye: %lf\n",ered2);
  atlag1 = Szamol(a,b,&ered3);
  printf("\nSzamol 1. hivas eredmenye\n");
  printf("atlag1: %9.2e\n",atlag1);
  printf("ered3 : %9.2e\n",ered3);
  printf("\nAz ered4 mutatonak memoriaterulet foglalasa.\n");
  ered4 = (double *)malloc(sizeof(double));
  if (ered4 == NULL)
  {
    printf("Memoriafoglalas nem sikerult!\n");
    fflush(stdin); getchar(); return 1;
  }
  atlag2 = Szamol(a,b,ered4);
  printf("\nSzamol 2. hivas eredmenye\n");
  printf("atlag2: %8.2lf\n",atlag2);
  printf("*ered4: %8.2lf\n",*ered4);
  printf("\nAz ered4 mutato memoriateruletenek felszabaditasa.\n");
  free(ered4); /* memóriaterület felszabadítása */
  fflush(stdin); getchar();
  return 0;
}
double Osszeg1(double x, double y)
{
  return x+y;
}
void Osszeg2(double x, double y, double *s)
{
  *s = x+y;
}
double Szamol(double x, double y, double *s)
{
  *s = x+y;
  return *s/2;
}
void Fejlec1(void)
{
  printf("C fuggveny fajtainak bemutatasa\n\n");
  return; /*ures */
}
void Fejlec2(void)
{
  printf("\nAdatok beolvasasa\n");
}

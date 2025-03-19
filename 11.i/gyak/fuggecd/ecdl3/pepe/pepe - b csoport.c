/* B csoport */
#include <stdio.h>
int tegla(int a,int b);
void paratlan(int a);
double fakt(int a);
int main()
{
int a,b,n;
printf("Add meg a teglalap a oldalat :");scanf("%d",&a);
printf("Add meg a teglalap b oldalat :");scanf("%d",&b);
    if(a==0 || b==0) printf("Ez 1 pont!");
    else    { printf("A teglalap terulete: %d",tegla(a,b));
              paratlan(tegla(a,b));
            }
printf("\nAdd meg a szamot :");scanf("%d",&n);
printf("A szam faktorialisa: %d!= %lf",n,fakt(n));
getchar();getchar();
return 0;
}
int tegla(int a,int b)
{
 return a*b;
}
void paratlan(int a)
{
if(a%2==1) printf("\nA teglalap terulete paratlan");
else printf("\nA teglalap terulete paros");
}
double fakt(int a)
{
    double n=1,i;
            for(i=1;i<=a;i++)
            {
                n=i*n;
            }

return n;
}

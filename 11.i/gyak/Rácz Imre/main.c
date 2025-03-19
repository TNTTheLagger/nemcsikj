#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

int main()
{
FILE *Fuu;
FILE *Fuuu;
int a,i,tomb[5],osszeg=0,b=0,max=-20,c;
double atlag;
srand(time(NULL));

if(!(Fuu=fopen("Be.dat","wb")))
{
    fprintf(stderr,"Nem hozhato letre!\n");
    return -1;
}
for(i=0;i<6;i++)
{
    a=(rand()%30)-10;
    fwrite(&a,sizeof(a),1,Fuu);
}
fclose(Fuu);
 printf("A fajlba levo szamok:");
Fuuu=fopen("Be.dat","rb");
for(i=0;i<6;i++)
{
    fread(&c,sizeof(c),1,Fuu);
    tomb[i]=c;
    b++;
    osszeg=osszeg+c;
    printf("\n  %d",tomb[i]);
}
atlag=osszeg/b;
printf("\n\nA szamok osszege:%d",osszeg);
printf("\n\nA szamok atlaga: %0.1lf",atlag);
for(i=0;i<6;i++)
{
   if(tomb[i]>max)
   {
       max=tomb[i];
   }
}
printf("\n\nA legnagyobb szam: %d\n\n",max);
fclose(Fuuu);
fflush(stdin);
getchar();
return 0;
}

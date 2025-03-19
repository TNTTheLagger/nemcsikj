#include <stdio.h>
#include <stdlib.h>

typedef struct kercz
{
        int nap,fuvar,km;
}ekrecz;
int i=0, db=0;
ekrecz t[50];

int main()
{
   FILE *fp;
   if  (!(fp=fopen("ricsi.txt","rt")))
    {
        printf(stderr,"nem erem el a fajlt");
        return -1;
    }
    while (fscanf(fp,"%d %d %d",&t[i].nap,&t[i].fuvar,&t[i].km)!=EOF)
{
    printf("%d.napon %d.fuvar %d.kilometert ment \n",t[i].nap, t[i].fuvar, t[i].km);
    db++;
    i++;
}
}

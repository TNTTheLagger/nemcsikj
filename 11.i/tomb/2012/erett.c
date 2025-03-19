#include <stdio.h>
#include <stdlib.h>




typedef struct tomi
{
    int nap,fuvar,km;
}etomi;

int i=0,db=0;
etomi t[100];

int main ()
{
   int i=0,k=0,s, max=0;
   etomi t[100];
   FILE *Fp;
    if(!(Fp=fopen("tavok.txt","rt")))
        {
            fprintf(stderr,"A fajt nem lehet megnyitni");
            return -1 ;
        }

        while(fscanf(Fp,"%d %d %d",&t[i].nap,&t[i].fuvar,&t[i].km)!=EOF)
        {

            printf("%d.napon %d.fuvar %d kilometert ment\n",t[i].nap,t[i].fuvar,t[i].km);
            i++;
            db++;
            }
            
for(i=0; i<db; i++)
{
 if(t[i].nap==1 && t[i].fuvar==1)
 {
   printf("\nA heten az elso fuvar %d km-es volt.",t[i].km);
   k++;               
 }
          
          
}
  if(k==0) printf("\nA futar az elso napon nem dolgozott.");





scanf("%d",&s);
for(i=0;i<db;i++)
{
  if(t[i].nap==7) 
   {
     if(t[i].fuvar>max) max=t[i].fuvar;
   }
}



}


#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <cctype>
using namespace std;

char filename[80],kifile[80];
int main(int argc, char *argv[])
{
FILE *finp,*fout;
int i1,i2;

  if (argc == 1) {
      printf("Allomanynev: "); 
      scanf("%s",filename);
   }
   else
     strcpy(filename,argv[1]);

   finp = fopen(filename,"r");
   if (finp == NULL) { 
     printf("A fajl nem letezik!\n"); 
     return 1; 
   }
   i1=0;
   strcpy(kifile,filename);

   while(kifile[i1] && kifile[i1] != '.') 
     i1++;
   if(kifile[i1]) 
      kifile[i1]='\0';
   strcat(kifile,".out");

   fout = fopen(kifile,"w");
   if (fout == NULL) { 
     printf("Hibas nyitas!\n"); 
     return 1;
   }
   i2 = fgetc(finp);
   while( i2 != EOF) {
     i2 = toupper(i2);
     fputc(i2,fout);
     i2 = fgetc(finp);
   }
   fclose(finp);
   fclose(fout);
 return 0;
}


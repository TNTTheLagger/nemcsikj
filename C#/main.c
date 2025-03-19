/*TEXTFILE*/
#include <stdio.h>
#include <string.h>
typedef struct u {
                   char kocsitipus[12];
                   int km;
                   char varos[12];
                 }Uticel;           
int main()
{
  Uticel ut, LegT, LegK;
  char kocsitip[13];
  int ossz_km = 0;
  FILE *inp;
  kocsitip[0] = ' '; 
  inp = fopen("Utvonal.txt","r");
  if (inp == NULL)
  {
    fprintf(stderr,"Utvonal.txt nem letezik!\n");
    getchar();
  }
  else
  {
    printf("100 es 200 km utvonalat megtett autok:\n");
    while (fscanf(inp,"%12s%4d  %12s\n",
                  ut.kocsitipus,&ut.km,ut.varos)!= EOF)
    {  /* az elsõ adattal kezdõértékadás */
       if (ossz_km == 0) { LegT = ut; LegK = ut; }
       ossz_km += ut.km; 
       if (ut.km > LegT.km) LegT = ut;
       if (ut.km < LegK.km) LegK = ut;
       if (ut.km >= 100 && ut.km <=200)
         printf("%-13s  %5d  %-13s\n",
           ut.kocsitipus,ut.km,ut.varos);
       if (strcmp(ut.varos, "Esztergom") == 0)
          strcpy(kocsitip,ut.kocsitipus);
    }
    fclose(inp);
    printf("\nAz autok altal megtett teljes ut [km]: %d\n",ossz_km);
    printf("\nLegtavolabbi utvonal:\n");
    printf("%-13s  %5d  %-13s\n",
           LegT.kocsitipus,LegT.km,LegT.varos);
    printf("\nLegkozelebbi utvonal:\n");
    printf("%-13s  %5d  %-13s\n",
           LegK.kocsitipus,LegK.km,LegK.varos);
    if (kocsitip[0] != ' ')
      printf("\nEsztergom uticelu auto tipusa: %s\n",kocsitip);  
    getchar();
  }  
    return 0;   
}


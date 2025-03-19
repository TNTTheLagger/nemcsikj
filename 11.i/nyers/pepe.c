#include <stdio.h>
int main()
{
int i,ho,hom[31],min=40,max=-30,a;
srand(time(NULL));
FILE *be;
be=fopen("Mar.dat","wb");
if(be== NULL)
    {
    fprintf(stderr, "sikertelen letrehozas\n");
    return -1;
    }
else
    {
    for(i=0;i<31;i++)
        {
        ho=rand()%50-20;
        fwrite(&ho,sizeof(int),i,be);
        printf("%5d",ho);
        }
fclose(be);
getchar;
    }
be=fopen("Mar.dat","rb");
if(be== NULL)
    {
    fprintf(stderr, "sikertelen olvasas\n");
    return -1;
    }
else
    {
     for(i=1;i<=31;i++)
            {

                            fread(&a,sizeof(int),i,be);
                            if (a>max)
                                {
                                    max=a;
                                }
                            if (a<min)
                                {
                                    min=a;
                                }
            }
    }
printf("\nMax: %d \nMin: %d\nhomerseklet K. : %d",max,min,(max-min));
getchar();
return 0;
}
/*HU_NJK_SQL01_Sgyuszika */

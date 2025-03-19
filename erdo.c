#include <stdio.h>
int main()
{
    int a,m,n,i,j,osszeg=0,max=-1,maxi,maxj;
    FILE *be;
    be=fopen("erdok.txt","rt");
    if(be==NULL)
        {
            fprintf(stderr,"sikertelen olvasas\n");
        }
else
{

          fscanf(be,"%d",&m);fscanf(be,"%d",&n); /*m=33*/ /*n=10*/
          printf(" %d %d\n",m,n);

          int x[m][n];
          for(i=0;i<=m;i++)
            {
                fscanf(be,"\n");
                for(j=0;j<n;j++)
                {
                 fscanf(be,"%d",&a);
                 x[i][j]=a;
                 printf("%3d",a);
                 if(x[i][j]>max)
                        {
                         max=x[i][j];
                         maxi=i;
                         maxj=j;
                        }

                }

            printf("\n");
            }
        fclose(be);

printf("\n A legnagyobb ertek: %d. sor %d. oszlopban van, erteke: %d",maxi,maxj,max);
}
getchar();
return 0;
}

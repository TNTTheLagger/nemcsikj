
#include <stdio.h>
#include <stdlib.h>

int tegla(int x, int y);
void paros(int x);
int hatvany(int x, int y);

int main()
{
    int a, b, k, x, y;

    printf("Add meg az A-t! ");
    scanf("%d", &a);
    printf("Add meg az B-t! ");
    scanf("%d", &b);

    k = tegla(a, b);

    printf("\nA teglalap kerulete: %d\n\n", k);

    paros(k);

    printf("Add meg az X-t! ");
    scanf("%d", &x);
    printf("Add meg az Y-t! ");
    scanf("%d", &y);

    printf("Az X szam a Y-on: %d\n", hatvany(x, y));

}

int tegla(int x, int y){
    return (2*x+2*y);
}

void paros(int x){
    if ( x%2 == 0){
        printf("A kerulet paros\n\n");
    }else{
        printf("A kerulet paratlan\n\n");
    }

    return;
}

int hatvany(int x, int y){
    int i, e = x;

    if ( y != 0){
        for (i = 1; i != y; i++){
            x *= e;
        }
    }else{
        x = 1;
    }

    return x;
}

#include "graphics.h"

using namespace std;

void Felkorok(double, int);

int main()
{
    int gd=DETECT,gm;

    initgraph(&gd,&gm,"");
    rectangle(0, 0, 0, 0);
    //arc(getmaxx() / 2, getmaxy(), -90, 180, getmaxx() / 2);

    Felkorok(getmaxx() / 2, 1);
    getch();
    closegraph();
    return 0;
}

void Felkorok(double r, int n)
{
    if(n >= 256)
        return;
    for(int i = 1;i <= n;i++)
    {
        circle(getmaxx() / (n * 2) + (i - 1) *  2 * r, getmaxy(), r);
    }

    Felkorok(r / 2, n * 2);
}

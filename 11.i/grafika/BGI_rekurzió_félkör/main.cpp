#include <graphics.h>
#include <iostream>
#include <math.h>
#include <ctime>
#include <time.h>

using namespace std;

void sleep(long d)
{
    clock_t start=clock();
    while(clock() - start < d);
}

void ablak(int szint)
{
    int n = szint+1;
    if(szint > 0)
    {
        n--;
        ablak(szint-1);
        for(int i=1; i<=pow(2,n); i+=2)
        {
            arc(getmaxx()*i/pow(2,n),getmaxy(),0,180,getmaxx()/pow(2,n));
        }
    }
}

void kor(int db)
{
    if(db > 0)
    {
        kor(db-1);
        circle(getmaxx()/2,getmaxy()/2,db*50);
    }
}

void spiral()
{
    for(int i=1;i<30*360;i++)
    {
        putpixel((getmaxx()/2+150+i/10*sin(2*3.14/180*i/2)),(getmaxy()/2-150+i/10*cos(2*3.14*i/180/2)),10+i);
        sleep(5);
    }
}

int main()
{
    int Gd=DETECT, Gm;
    initgraph(&Gd,&Gm,"");
    circle(0,0,0);
    ablak(8);
    //kor(5);
    //spiral();
    getch();
    closegraph();
    return 0;
}

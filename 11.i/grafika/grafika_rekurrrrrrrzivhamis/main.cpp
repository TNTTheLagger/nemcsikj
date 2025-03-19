#include <conio.h>
#include <stdlib.h>
#include <graphics.h>
#include <time.h>
#include <windows.h>
#include <iostream>
#include <cmath>

int main()
{
  int gd, gm;
  gd=VGA; gm=VGAMAX;
  initgraph(&gd, &gm,"");



for(int i=1;i<500;i++){
        circle(getmaxx()/2-2*i,getmaxy()/2,100);
    line(getmaxx()/2-2*i,getmaxy()/2,(getmaxx()/2+100*sin(2*i))-2*i,(getmaxy()/2-100*cos(2*i)));
    Sleep(20);
    cleardevice();
}
getch();
closegraph();
return 0;
}


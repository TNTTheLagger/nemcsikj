#include <iostream>
#include "G:\prog\c\graphics.h"
#include <windows.h>
#include <time.h>
#include <stdlib.h>
#include <math.h>

using namespace std;

int main()
{
    int gd, gm;
  gd=VGA; gm=VGAMAX;
  initgraph(&gd, &gm, "");

  for(int i=1;i<360;i++)
  {
      circle(getmaxx()/2,getmaxy()/2,150);
      line(getmaxx()/2,getmaxy()/2,(getmaxx()/2+150*sin(2*M_PI/360*i)),(getmaxy()/2-150*cos(2*M_PI*i/360)));
      Sleep(40);
      cleardevice();
  }
  getch();
}

#include <iostream>
#include "G:\C++\c\graphics.h"
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
      putpixel((getmaxx()/2+150*sin(2*M_PI/180*i/2)),(getmaxy()/2-150*cos(2*M_PI*i/180/2)),15);
      Sleep(20);
  }
  getch();
}

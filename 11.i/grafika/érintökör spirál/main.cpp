#include <iostream>
#include "graphics.h"
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
  for(int i=1;i<30*360;i++)
  {
      putpixel((getmaxx()/2+150+i/10*sin(2*3.14/180*i/2)),(getmaxy()/2-150+i/10*cos(2*3.14*i/180/2)),10+i);
      Sleep(5);
  }
  getch();
}

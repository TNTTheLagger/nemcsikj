program kukac;
uses CRT,GRAPh;

type kp=array[0..1,1..10] of byte;
const
  ky:kp=((0,0,10,20,30,30,20,10,0,0),
         (0,0,0,0,0,0,0,0,0,5));
  kx:kp=((0,10,20,20,30,30,40,40,50,60),
         (0,10,20,30,40,50,60,70,80,90));
  szin=15;
var x,y,i,r,gd,gm,xk:integer;
       lap:byte;
begin

  detectgraph(gd,gm);
  initgraph(gd,gm,' ');
  lap:=0;x:=GetMaxX;y:=240;
   repeat
    ClearDevice;
    Circle(x-10,y-3,8);
    PutPixel(x-12,y-4,15);
    for i:=1 to 10 do Circle(x+kx[lap,i],y-ky[lap,i],5);
       SetVisualPage(lap);
       lap:=Ord(lap=0);
       SetActivePage(lap);
       x:=x-20;
       Delay(50000);
  until KeyPressed or (x=0);
   closegraph;
end.




Program pattogolabda;
uses crt,graph;
var gd,gm,r,x,y,u,v:integer;
begin
detectgraph(gd,gm);
initgraph(gd,gm,' ');
cleardevice;
x:=30; y:=20;
r:=40;
u:=10;v:=-10;
setbkcolor(white);
repeat
 setcolor(red);
 circle(x,y,r);
 delay(10000);
 setcolor(getbkcolor);
 circle(x,y,r);
 if (x<=0) or (x>=getmaxx)then u:=-u;
 if (y<=0) or (y>=getmaxy)then v:=-v;
 x:=x+u; y:=y+v;
until Keypressed;
setcolor(red);
readln;
closegraph;
end.

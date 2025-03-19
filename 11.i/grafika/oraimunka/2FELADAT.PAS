program mozog;
uses crt,graph;
var gd,gm,r:integer;
begin
detectgraph(gd,gm);
initgraph(gd,gm,' ');
r:=40;
cleardevice;
setcolor(yellow);
setbkcolor(blue);
setfillstyle(1,red);
fillellipse(getmaxx div 2, getmaxy div 2,r,r);
readln;
setcolor(getbkcolor);
{setfillstyle(0,getbkcolor);}
fillellipse(getmaxx div 2, getmaxy div 2,r,r);
readln;
end.


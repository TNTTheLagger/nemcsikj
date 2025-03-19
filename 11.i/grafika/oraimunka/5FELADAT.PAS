program mozog;
uses crt,graph;
var gd,gm,a,b,i,j:integer;
begin
detectgraph(gd,gm);
initgraph(gd,gm,' ');
a:=40;
b:=40;

setbkcolor(red);
for i:=1 to getmaxy+2*a do begin
cleardevice;
fillellipse(40+i,40+j,a,b);
delay(3000);
j:=trunc(i/1.4);
end;
readln;
closegraph;
end.


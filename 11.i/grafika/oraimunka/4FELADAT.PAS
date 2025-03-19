program mozog;
uses crt,graph;
var gd,gm,a,b,i:integer;
Begin
detectgraph(gd,gm);
initgraph(gd,gm,' ');
a:=40;
b:=40;
setbkcolor(red);
for i:=1 to (480-2*b) do begin
cleardevice;
fillellipse(40,40+i,a,b);
delay(1000);
end;
readln;
closegraph;
end.


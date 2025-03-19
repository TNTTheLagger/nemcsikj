program mozog;
uses crt,graph;
var gd,gm,a,b,i:integer;
begin
detectgraph(gd,gm);
initgraph(gd,gm,' ');
a:=40;
b:=40;
setbkcolor(red);
for i:=1 to (640-2*a) do begin
cleardevice;
fillellipse(40+i,40,a,b);
delay(1000);
end;
readln;
closegraph;
end.


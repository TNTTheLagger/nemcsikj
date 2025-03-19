Program csigavonal;
uses crt,graph;
var gd,gm,i,j,a,b,x,y,n,m:integer;
begin
detectgraph(gd,gm);
initgraph(gd,gm,' ');
cleardevice;
x:=20; y:=20;
a:=20;b:=20;
n:=20;m:=14;
setcolor(red);
for i:=1 to 15 do begin
 for j:=1 to n do begin
 fillellipse(x,y,a,b);
 delay(1000);
 x:=x+(a+10);
 end;
 for j:=1 to m do begin
 fillellipse(x,y,a,b);
 delay(1000);
 y:=y+(b+10);
 end;
 for j:=1 to n do begin
 fillellipse(x,y,a,b);
 delay(1000);
 x:=x-(a+10);
 end;
 for j:=1  to m do begin
 fillellipse(x,y,a,b);
 delay(1000);
 y:=y-(b+10);
 end;
  x:=x+a;
  y:=y+b;
  dec(m);
  dec(n);
end;
readln;
closegraph;
end.

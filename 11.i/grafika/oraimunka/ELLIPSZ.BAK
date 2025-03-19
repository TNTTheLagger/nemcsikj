program ellipszis;
uses graph;

var gd,gm, x,y,ksz,vsz, a,b,i:integer;

BEGIN
detectgraph(gd,gm);
initgraph(gd,gm,'c:\tp7\bgi');
randomize;

x:=getmaxX div 2;
y:=getmaxY div 2;
ksz:=0;
ksz:=360;
a:=10;
for i:=1 to 10 do begin
b:=2*a;
setcolor(random(15));
ellipse(x,y,ksz,vsz,a,b);
a:=a+10;
end;

x:=getmaxX div 2;
y:=getmaxY div 2;
ksz:=0;
ksz:=360;
b:=10;
for i:=1 to 10 do begin
a:=2*b;
setcolor(random(15));
ellipse(x,y,ksz,vsz,a,b);
b:=b+10;
end;

readln;
closegraph;
end.
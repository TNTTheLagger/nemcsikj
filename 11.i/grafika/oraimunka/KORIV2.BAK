program koriv2;

uses graph;

var gd,gm,i,x,y,ksz,vsz,r:integer;

BEGIN
detectgraph(gd,gm);
initgraph(gd,gm,'c:\tp7\bgi');

x:=getmaxX div 2;
y:=getmaxY div 2;
r:=100;
ksz:=0;
vsz:=360;

repeat
arc(x,y,ksz,vsz,r);
r:=r-10;
vsz:=vsz-20;
until r=10;
readln;
closegraph;
end.
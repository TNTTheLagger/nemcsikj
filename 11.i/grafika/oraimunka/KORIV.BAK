program koriv;

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
for i:=1 to 4 do begin
    arc(x,y,ksz,vsz,r);
    vsz:=vsz-90;
    readln;
    cleardevice;
end;
readln;
closegraph;
end.
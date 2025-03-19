program pvonal;
uses crt,graph;
var gd,gm,x,y,i,ksz,vsz,r, a,b:integer;
    szin:word;

begin
randomize;
detectgraph(gd,gm);
Initgraph(gd,gm,'c:\tp7\bgi');
cleardevice;

{korok}
for i:=1 to 100 do begin
    setcolor(random(15));
    x:=random(479);
    y:=random(639);
    r:=random(100);
    szin:=random(15);
    circle(y,x,r);
end;
readln;
cleardevice;

{k”riv}
for i:=1 to 100 do begin
    setcolor(random(15));
    x:=random(479);
    y:=random(639);
    r:=random(100);
    szin:=random(15);
    ksz:=random(360);
    vsz:=random(360);
    arc(y,x,ksz,vsz,r);
end;
readln;
cleardevice;

{ellipszis}
for i:=1 to 100 do begin
    setcolor(random(15));
    x:=random(479);
    y:=random(639);
    r:=random(100);
    szin:=random(15);
    ksz:=0;
    vsz:=360;
    a:=random(50);
    b:=random(50);
    ellipse(y,x,ksz,vsz,a,b);
end;

  readln;
closegraph;
end.
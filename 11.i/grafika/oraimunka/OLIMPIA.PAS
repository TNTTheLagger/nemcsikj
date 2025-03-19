program olimpia;

uses graph;

var gd,gm,x,y,i:integer;

BEGIN
randomize;
detectgraph(gd,gm);
initgraph(gd,gm,'c:\tp7\bgi');
cleardevice;
for i:=1 to 3 do begin
    setcolor(random(15));               {feket‚t hogy lehet kiszûrni?}
    x:=(getmaxX div 4)*i;
    y:=(getmaxY div 2) div 2;
    circle(x,y,110);
end;

for i:=1 to 2 do begin
    setcolor(random(15));
    x:=(getmaxX div 3)*i;
    y:=(getmaxY div 2);
    circle(x,y,110);
end;
readln;
closegraph;
end.
program mozog;
uses crt,graph;
var gd,gm,r,a,b:integer;

Begin
Detectgraph(gd,gm);
Initgraph(gd,gm,'');
a:=40;
b:=40;
cleardevice;
fillellipse(getmaxx div 2 ,getmaxy div 2,a,b);
readln;
cleardevice;
readln;
closegraph;
End.
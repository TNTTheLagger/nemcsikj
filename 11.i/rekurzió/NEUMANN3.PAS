program feladat1;
uses crt,graph;

var gd,gm:integer;

procedure rajzol (ax,ay,bx,by:integer;m:byte);
var fx,fy,r:integer;

Begin
if m<>0 then begin
r:=(bx-ax) div 2;
fx:=(ax+bx) div 2;
fy:=(ay+by) div 2;
arc(fx,fy,0,180,r);
delay(200);
rajzol(ax,ay,fx,fy,m-1);
rajzol(fx,fy,bx,by,m-1);
end;
end;

Begin
clrscr;
gd:=Detect;
Initgraph(gd,gm,'d:\TP7\bgi');
rajzol(30,300,610,300,6);
readln;
End.
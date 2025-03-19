
program labda;
uses crt,graph;
var i,j,x,y,r,n:integer;
    gd,gm: integer;
begin
Detectgraph(gd,gm);
Initgraph(gd,gm,'c:\Bp7\bin');
r:=20;
x:=r;
n:=20;
y:=getmaxx div 2;
  for i := 1 to n do begin
      setfillstyle(1,red);
      setcolor(red);
      pieslice(x,y,0,360,r);
      delay(50);
      setcolor(getbkcolor);
      setfillstyle(1,getbkcolor);
      pieslice(x,y,0,360,r);
      x:=x+(r+10);
  end;
closegraph;
end.
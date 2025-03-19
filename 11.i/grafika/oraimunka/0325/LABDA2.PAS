
program labda;
uses crt,graph;
var i,j,x,y,r,n,m:integer;
    gd,gm: integer;
begin
Detectgraph(gd,gm);
Initgraph(gd,gm,'c:\Bp7\bin');
r:=20;
x:=r;
n:=20;
m:=14;
y:=r;
for i:= 1 to 10 do begin
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
  for i:= 1 to m do begin
      setfillstyle(1,red);
      setcolor(red);
      pieslice(x,y,0,360,r);
      delay(50);
      setcolor(getbkcolor);
      setfillstyle(1,getbkcolor);
      pieslice(x,y,0,360,r);
      y:=y+(r+10);
  end;
  for i:= 1 to n do
  begin
      setfillstyle(1,red);
      setcolor(red);
      pieslice(x,y,0,360,r);
      delay(50);
      setcolor(getbkcolor);
      setfillstyle(1,getbkcolor);
      pieslice(x,y,0,360,r);
      x:=x-(r+10);
  end;
  for i:= 1 to m do begin
      setfillstyle(1,red);
      setcolor(red);
      pieslice(x,y,0,360,r);
      delay(50);
      setcolor(getbkcolor);
      setfillstyle(1,getbkcolor);
      pieslice(x,y,0,360,r);
      y:=y-(r+10);
  end;
  x:=x+r;
  y:=y+r;
  n:=n-2;
  m:=m-2;
end;
  readln;
closegraph;
end.
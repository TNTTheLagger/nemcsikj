program korokfel;
uses crt,graph;

var gd,gm,x,y,r:integer;

procedure korok(x,y,r,n:word);
BEGIN
{randomize;}
if n<>0 then begin
    {setcolor(random(15));}
    circle(x,y,r);
    delay(200);
    r:=r+10;
    korok(x,y,r,n-1);
end;
end;

Begin
clrscr;
detectgraph(gd,gm);
initgraph(gd,gm,'D:\tp7\bgi');
putpixel(getmaxx div 2,getmaxy div 2,white);
korok(getmaxx div 2,getmaxy div 2,50,20);
readln;
closegraph;
END.


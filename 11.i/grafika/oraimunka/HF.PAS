program Ellipszis;
uses crt,graph;

var gd,gm:integer;

procedure Rellipszis(x,y,ksz,vsz,a,b,n:word);
BEGIN
{randomize;}
if n<>0 then begin
    {setcolor(random(15));}
    ellipse(x,y,ksz,vsz,a,b);
    delay(200);
    a:=a+10;
    b:=2*a;
    Rellipszis(x,y,ksz,vsz,a,b,n-1);
end;
end;

Begin
clrscr;
detectgraph(gd,gm);
initgraph(gd,gm,'D:\tp7\bgi');
putpixel(getmaxx div 2,getmaxy div 2,white);
Rellipszis(getmaxx div 2,getmaxy div 2,0,360,10,20,10);
readln;
closegraph;
END.


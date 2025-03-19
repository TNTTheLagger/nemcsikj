program mozog;
uses crt,graph;
var gd,gm,i,j,x,y,a,b:integer;
    ch:char;

Begin
Detectgraph(gd,gm);
Initgraph(gd,gm,'');
setbkcolor(red);
x:=getmaxx div 2;
y:=getmaxy div 2;
a:=40;
b:=40;
repeat
  ch:=readkey;
  cleardevice;
  if ch=#75 then begin fillellipse(x,y,a,b); dec(x);  end;   {balra}
  if ch=#77 then begin fillellipse(x,y,a,b); inc(x);  end;   {jobb}
  if ch=#72 then begin fillellipse(x,y,a,b); dec(y);  end;   {fel}
  if ch=#80 then begin fillellipse(x,y,a,b); inc(y);  end;   {le}
until ch=#27;
closegraph;
End.
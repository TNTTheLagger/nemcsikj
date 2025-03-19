Program tennis;
uses crt,graph;
var gd,gm,r,x,y,u,v,u1x1,u1y1,u1x2,u1y2,u2x1,u2y1,u2x2,u2y2,p1,p2:integer;
    ch:char;

procedure uto1;
begin
setcolor(yellow);
line(u1x1,u1y1,u1x2,u1y2);
delay(1500);
if keypressed then begin
setcolor(getbkcolor);
line(u1x1,u1y1,u1x2,u1y2);
case ch of
'a' : begin
u1y1:=u1y1+20;
u1y2:=u1y2+20;
end;
'd' : begin
u1y1:=u1y1-20;
u1y2:=u1y2-20; end;
end;
ch:=readkey;
end;
end;

procedure uto2;
begin
setcolor(yellow);
line(u2x1,u2y1,u2x2,u2y2);
delay(1500);
if keypressed then begin
setcolor(getbkcolor);
line(u2x1,u2y1,u2x2,u2y2);
case ch of
'j' : begin
u2y1:=u2y1+20;
u2y2:=u2y2+20;
end;
'l' : begin
u2y1:=u2y1-20;
u2y2:=u2y2-20; end;
end;
ch:=readkey;
end;
end;
procedure hang;
begin
sound(440);
delay(20);
nosound;
end;

BEGIN
{clrscr;
gotoxy(10,5);Writeln('A programot kÇsz°tette: Berecz Adrienn!');
gotoxy(10,7);Writeln('A program neve: Tennis');
gotoxy(10,9);Writeln('A j†tÇk szab†ly!');
gotoxy(10,11);Writeln('Az egyik j†tÇkos az A Çs a D billenyty˚vel tudja mozgatni az Åtãt.');
gotoxy(10,12);Writeln('Az egyik j†tÇkos az J Çs az L billenyty˚vel tudja mozgatni az Åtãt.');
gotoxy(10,14);Writeln('Ha labda az Åtã mellÇ esik, vÇge a j†tÇknak.');
gotoxy(10,16);Writeln('A j†tÇkot az Esc lehet megszak°tani!');
gotoxy(10,18);Writeln('A j†tÇk megkezdÇsÇhez nyomja le az Entert!');
gotoxy(10,20);Writeln('A programot szerzãi jogvÇdi, m†solni a szerzã engedÇlye nÇlkÅl tilos!');
readln;}
detectgraph(gd,gm);
initgraph(gd,gm,' ');
cleardevice;
x:=40; y:=12;
r:=10;
u:=1;v:=-1;  p1:=0;p2:=0;
u1x1:=10;u1x2:=10;u1y1:=20; u1y2:=50;
u2x1:=630;u2x2:=630;u2y1:=20; u2y2:=50;
repeat
 uto1;
 uto2;
 setcolor(white);
 circle(x,y,r);
 delay(1000);
 setcolor(getbkcolor);
 circle(x,y,r);
 if (y<=5)  or (y>=getmaxy-5) then begin v:=-v; hang; end;
 {if ((x=u1x1+5) and (getpixel(u1x1,y)<>getbkcolor))  or ((x=u2x1-5) and (getpixel(u2x1,y)<>getbkcolor) )then
 begin
 u:=-u;
 hang;
 end;}
 if (x=u1x1+5) and (getpixel(u1x1,y)<>getbkcolor) then
 begin
 u:=-u;
 hang;
 p1:=p1+1;
 end;
 if (x=u2x1-5) and (getpixel(u2x1,y)<>getbkcolor) then
 begin
 u:=-u;
 hang;
 p2:=p2+1;
 end;
 if (x<0) or (x>getmaxx) then ch:=#27;
 x:=x+u; y:=y+v;
 until ch=#27;
setcolor(white);
closegraph;
gotoxy(20,10);writeln('J†tÇk vÇge!');
gotoxy(20,12); writeln('Az 1-es j†tÇkos ',p1,' pontot szerzett.');
gotoxy(20,14); writeln('Az 2-es j†tÇkos ',p2,' pontot szerzett.');
readln;
end.

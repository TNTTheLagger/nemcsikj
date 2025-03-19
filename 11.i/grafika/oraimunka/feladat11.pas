Program fallabda;
uses crt,graph;
var gd,gm,r,x,y,u,v,x1,x2,y1,y2,pontok:integer;
    ch:char;

procedure uto;
begin
setcolor(yellow);
line(x1,y1,x2,y2);
delay(1500);
if keypressed then begin
setcolor(getbkcolor);
line(x1,y1,x2,y2);
case ch of
#77 : begin
x1:=x1+10;
x2:=x2+10;
end;
#75 : begin
x1:=x1-10;
x2:=x2-10; end;
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
gotoxy(20,10);Writeln('A programot kÇsz°tette: Berecz Adrienn!');
gotoxy(20,12);Writeln('A program neve: Fallabda');
gotoxy(20,14);Writeln('A j†tÇk szab†ly!');
gotoxy(20,15);Writeln('Az Åtãt a jobbra balra nyillal lehet mozgatni.');
gotoxy(20,16);Writeln('Ha labda az Åtã mellÇ esik, vÇge a j†tÇknak.');
gotoxy(20,18);Writeln('A j†tÇkot az Esc lehet megszak°tani!');
gotoxy(20,20);Writeln('A j†tÇk megkezdÇsÇhez nyomja le az Entert!');
gotoxy(10,22);Writeln('A programot szerzãi jogvÇdi, m†solni a szerzã engedÇlye nÇlkÅl tilos!');
readln; }
detectgraph(gd,gm);
initgraph(gd,gm,' ');
cleardevice;
x:=40; y:=12;
r:=10;
u:=1;v:=-1;
x1:=400;x2:=440;y1:=430; y2:=430;
pontok:=0;
repeat
 uto;
 setcolor(white);
 circle(x,y,r);
 delay(1500);
 setcolor(getbkcolor);
 circle(x,y,r);
 if (x<=5) or (x>=getmaxx-5) then begin u:=-u; hang; end;
 if (y<=5)  then begin v:=-v; hang; end;
 if (y=y1-5) and (getpixel(x,y1)<>getbkcolor) then
 begin
 v:=-v;
 hang;
 pontok:=pontok+1;
 end;
 if y>getmaxy then ch:=#27;
 x:=x+u; y:=y+v;
until ch=#27;
setcolor(white);
closegraph;
gotoxy(20,10);writeln('J†tÇk vÇge!');
 if pontok>0 then begin gotoxy(20,12);writeln('Pontok sz†ma: ',pontok); end
             else begin gotoxy(20,12);writeln('Nem szerzett pontot!'); end;
readln;
end.

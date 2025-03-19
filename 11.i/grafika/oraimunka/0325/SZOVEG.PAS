program  iras;
uses crt,graph;
var x,y:integer;
    gd,gm: integer;
begin
Detectgraph(gd,gm);
Initgraph(gd,gm,'c:\Bp7\Bin');
cleardevice;
            setfillstyle(1,red);
            bar(0,0,getmaxx,getmaxy);
            readln;
x:=getmaxx div 2;
y:= getmaxy div 2;
    settextstyle(2,0,10);
    outtextxy(x,y,'grafikus m¢d');
    readln;
cleardevice;
            settextstyle(2,1,10);
            setbkcolor(blue);
            x:=600;
            y:=400;
outtextxy(x,y,'grafikus m¢d');
readln;
closegraph;
end.
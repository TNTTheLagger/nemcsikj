
program  negyzet;
uses crt,graph;
var i,j,x1,x2,y1,z,s,
y2,y3,y4,x3,x4,x5,tav,y5,x6,y6:integer;
    gd,gm,n,m: integer;
begin
writeln('h ny n‚gyzetet rajzoljunk');
readln(n);
Detectgraph(gd,gm);
Initgraph(gd,gm,'c:\Bp7\Bin');
cleardevice;
            x2:=30+(getmaxx div 2);
            x1:=(getmaxx div 2) -30;
            y1:=(getmaxy div 2) -20;
            y2:=(getmaxy div 2)+20;
            m:= 20;
            i:=0;
            while  x2<getmaxx do
            begin
                 z:=y1;
                 s:=y2;
                 tav:= y1-y2;
                 setfillstyle(1, red);
                 bar(x1,y1,x2,y2);
                 setfillstyle(1,white);
                 y1:=y2;
                 y2:=y1+((tav) div 3);
                 bar(x1,y1,x2,y2);
                 setfillstyle(1,green);
                 y1:=y2;
                 y2:= y1+((tav) div 3);
                 bar(x1,y1,x2,y2);
                 x2:=x2+20  ;
                 x1:=x1-20;
                 y1:=z-20;
                 y2:=s+20;
                 i:=i+1;
                 readln;
            end;

closegraph;
end.

program  negyzet;
uses crt,graph;
var i,j,x1,x2,y1,y2,y3,y4,x3,x4,x5,y5,x6,y6:integer;
    gd,gm,n,m: integer;
begin
writeln('h ny n‚gyzetet rajzoljunk');
readln(n);
Detectgraph(gd,gm);
Initgraph(gd,gm,'c:\Bp7\Bin');
cleardevice;
            x2:=200+(getmaxx div 2);
            x1:=(getmaxx div 2) -200;
            y1:=(getmaxy div 2) -200;
            y2:=(getmaxy div 2) + 200;
            m:= 20;
            i:=0;
            while  (i<= n) do
            begin
                 setfillstyle(1, random(15)+2);
                 bar(x1,y1,x2,y2);
                 x2:=x2-m  ;
                 x1:=x1+m;
                 y1:=y1+2*m;
                 i:=i+1;
                 readln;
            end;

closegraph;
end.
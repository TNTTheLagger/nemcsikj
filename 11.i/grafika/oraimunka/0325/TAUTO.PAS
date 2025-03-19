program tauto ;
uses crt,graph;
var i,j,x1,x2,y1,y2,y3,y4,x3,x4,x5,y5,x6,y6:integer;
    gd,gm: integer;
begin
Detectgraph(gd,gm);
Initgraph(gd,gm,'c:\Bp7\Bin');
cleardevice;
{k‚k t‚glalap }
     x1:=getmaxx div 5;
     y1:= getmaxy div 9;
     x2:= x1*4;
     y2:=y1*8;
setfillstyle(1,blue);
bar(x1,y1,x2,y2);
{fels‹ fef‚r t‚glalap}
       x3:=x1+((x2-x1) div 7);
       x4:=x1+6*((x2-x1) div 7);
       y3:=y1+((y2-y1) div 6);
       y4:=y1+2*((y2-y1) div 6)    ;
setfillstyle(1,white);
bar(x3,y3,x4,y4);
{als¢ feh‚r t‚glalap}
setfillstyle(1,white);
        y5:=y4;
        y6:=y1+5*((y2-y1) div 6);
        x5:=x3+2*((x2-x1) div 7);
        x6:=x5+((x2-x1) div 7);
bar(x5,y5,x6,y6);
readln;
closegraph;
end.


program  negyzet;
uses crt,graph;
var i,j,x1,x2,y1,y2,y3,y4,x3,x4,x5,y5,x6,y6:integer;
    gd,gm,n,m: integer;
begin
{writeln('h ny n‚gyzetet rajzoljunk');
readln(n);}
Detectgraph(gd,gm);
Initgraph(gd,gm,'c:\Bp7\Bin');
cleardevice;
n:=1;
x1:=(getmaxx div 8);
x2:=x1+50 ;
y1:=(getmaxy div 6) ;
y2:=y1+50 ;
while j<=n do begin
    i:=1;
while  i<= 10 do
begin
setfillstyle(1, random(15));

x2:=x2+20;
x1:=x1+20;
bar(x1,y1,x2,y2);
delay(50);
setfillstyle(1,getbkcolor);
bar(x1,y1,x2,y2);

i:=i+1;
end;
for i:= 1 to 10 do begin
setfillstyle(1,random(15));
y1:=y1+20;
y2:=y2+20;
bar(x1,y1,x2,y2);
delay(50);
setfillstyle(1,getbkcolor);
bar(x1,y1,x2,y2);
end;
for i:= 1 to 10 do begin
setfillstyle(1,random(15));
x1:=x1-20;
x2:=x2-20;
bar(x1,y1,x2,y2);
delay(50);
setfillstyle(1,getbkcolor);
bar(x1,y1,x2,y2);
end;
for i:= 1 to 10 do begin
setfillstyle(1,random(15));
y1:=y1-20;
y2:=y2-20;
bar(x1,y1,x2,y2);
delay(50);
setfillstyle(1,getbkcolor);
bar(x1,y1,x2,y2);
end;
inc(j);
for i:= 1 to 10 do begin
setfillstyle(1,random(15));
y1:=y2;
y2:=y1+10;
x1:=x2;
x2:=x1+10;
bar(x1,y1,x2,y2);
delay(150);
setfillstyle(1,getbkcolor);
bar(x1,y1,x2,y2);
end;
end;
readln;
closegraph;
end.
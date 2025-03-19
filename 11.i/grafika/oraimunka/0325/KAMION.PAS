program kamion;
uses crt,graph;
var i,j,x,y,x1,x2,y1,y2,y3,y4,x3,x4,x5,y5,xvon1,xvon2,yvon1,yvon2:integer;
    gd,gm,n,m: integer;
begin
Detectgraph(gd,gm);
Initgraph(gd,gm,'c:\Bp7\Bin');
cleardevice;
{rakt‚r}
        x1:=(getmaxx div 2)- 200;
        x2:=(getmaxx div 2) +200;
        y1:=(getmaxy div 2) -150;
        y2:=(getmaxy div 2) + 150;
        setfillstyle(1, random(15)+2);
        bar(x1,y1,x2,y2);
{motor}
       n:=(x2-x1) div 4;
       m:=(y2-y1) div 4;
       x3:=x1-n ;
       y3:= y2-m;
       x4:=x1;
       y4:=y2;
       bar(x3,y3,x4,y4);
{kerekek}          {els”}
                   x:=x3+((x4-x3) div 2);
                   y:=y4;
{h ts¢}
       setfillstyle(1, white);
       for i:= 1 to 2 do begin
           pieslice(x,y,180,360, n div 3);
           x:=x+(4*x) ;
       end;
       x:=x+((2*n) div 5) ;
       setfillstyle(1,red);
       pieslice(x,y,180,360 , n div 3);
{sz‚lv‚d‹}
          setcolor(green);
          line(x3,y3+5,x1,y1+5);
{vontato}
         line(x2,y2, x2+10,y2);
         xvon1:=x2+10;
         yvon1:=y2-((y2-y1) div 20);;
         xvon2:=x2+((y2-y1) div 10);
         yvon2:=yvon1+((y2-y1) div 20);
         bar(xvon1,yvon1,xvon2,yvon2);
readln;
closegraph;
end.
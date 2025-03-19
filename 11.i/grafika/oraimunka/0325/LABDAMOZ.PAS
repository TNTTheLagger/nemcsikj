program csiga;
uses Graph,crt;
var
 Gd, Gm,i,j,r,r0,x,k,y,x1,y1,n,szin,x0,y0,paros: Integer;
 b,d,m:integer;
 alfa,beta:real;
 a,c:real;
begin
 Gd := Detect;
 InitGraph(Gd, Gm, ' ');
 x0:=getmaxx div 2;
 y0:= getmaxy div 2;
 setcolor(yellow);
 r:=50;
 circle(x0,y0,r);
 j:=1;
 m:=20;

 x1:=x0+r;           setfillstyle(1,red);
 y1:=y0;

             n:=180;
             for i:= 1 to n do begin
             x1:=trunc(x0+r*sin(2*pi*i/n));
             y1:=trunc(y0+r*cos(2*pi*i/n));
           {   setcolor(red);  }
                         setfillstyle(1,red);
                         pieslice(x1,y1,0,360,10);
                         delay(10);
             {            setcolor(getbkcolor);   }
                         setfillstyle(1,getbkcolor);
                         pieslice(x1,y1,0,360,10);
                         j:=j+1;
              end;


        readln;
     closegraph;
 end.





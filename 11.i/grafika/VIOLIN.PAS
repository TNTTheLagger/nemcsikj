program csiga;
uses Graph,crt;
var
 Gd, Gm,i,j,r,r1,x,k,y,x1,y1,n,szin,x0,y0,paros: Integer;
 b,d,m,valt:integer;
 alfa,beta:real;
 a,c:real;
begin
 Gd := Detect;
 InitGraph(Gd, Gm, ' ');
 x0:=getmaxx div 2;
 y0:= getmaxy div 2 +20;
 setcolor(red);
 r:=50;
 x1:=x0+r;
 setfillstyle(1,red);
 y1:=y0+r;
 n:=180;
             for i:= 90 to 270 do begin
             x1:=trunc(x0+r*sin(2*pi*i/n/2));
             y1:=trunc(y0-r*cos(2*pi*i/n/2));
           {   setcolor(red);  }
                         setfillstyle(1,red);
                         putpixel(x1,y1,10);
                         delay(10);
             {            setcolor(getbkcolor);   }
                         setfillstyle(1,getbkcolor);
                         putpixel(x1,y1,10);
              end;

              r:=r+20;
              x0:=x0+20;
              for i:= 90 to 270 do begin
             x1:=trunc(x0-r*sin(2*pi*i/n/2));
             y1:=trunc(y0+r*cos(2*pi*i/n/2));
              setcolor(red);
                         setfillstyle(1,red);
                         putpixel(x1,y1,10);
                         delay(10);
                         {setcolor(getbkcolor);  }
                         setfillstyle(1,getbkcolor);
                         putpixel(x1,y1,10);
              end;
              r:=r+20;
              x0:=x0-20;   valt:=x1;
             for i:= 90 to 270 do begin
             x1:=trunc(x0+r*sin(2*pi*i/n/2));
             y1:=trunc(y0-r*cos(2*pi*i/n/2));
           {   setcolor(red);  }
                         setfillstyle(1,red);
                         putpixel(x1,y1,10);
                         delay(10);
             {            setcolor(getbkcolor);   }
                         setfillstyle(1,getbkcolor);
                         putpixel(x1,y1,10);
              end;
             for i:= 270 to 300 do begin
             x1:=trunc(x0+r*sin(2*pi*i/n/2));
             y1:=trunc(y0-r*cos(2*pi*i/n/2));
           {   setcolor(red);  }
                         setfillstyle(1,red);
                         putpixel(x1,y1,10);
                         delay(10);
             {            setcolor(getbkcolor);   }
                         setfillstyle(1,getbkcolor);
                         putpixel(x1,y1,10);
              end;

              r:=r+20;
              x0:=x0+20;
              x:=valt-15;
              y:=y0-2*r;
              setcolor(green);
line(x1,y1,x,y);
r1:=40;
for i:= 90 to 270 do begin
             x1:=trunc(x-r1+r1*sin(2*pi*i/n/2));
             y1:=trunc(y+r1*cos(2*pi*i/n/2));
           {   setcolor(red);  }
                         setfillstyle(1,red);
                         putpixel(x1,y1,10);
                         delay(10);
             {            setcolor(getbkcolor);   }
                         setfillstyle(1,getbkcolor);
                         putpixel(x1,y1,10);
             end;
             y:=y0+3*(r div 2);
             setcolor(green);
line(x1,y1,x1,y);
r:=20;
x:=x1-r;
for i:= 90 to 270 do begin
             x1:=trunc(x+r*sin(2*pi*i/n/2));
             y1:=trunc(y-r*cos(2*pi*i/n/2));
           {   setcolor(red);  }
                         setfillstyle(1,red);
                         putpixel(x1,y1,10);
                         delay(10);
             {            setcolor(getbkcolor);   }
                         setfillstyle(1,getbkcolor);
                         putpixel(x1,y1,10);
              end;

        readln;
     closegraph;
 end.





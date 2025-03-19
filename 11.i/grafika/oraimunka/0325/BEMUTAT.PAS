program bemutat;
uses Graph;
type
    pointype = record
             x,y: integer;
    end;
var
 Gd, Gm,i,j,r,x2,y2,x1,y1,szin,a,b: Integer;
const
     p:array[1..4] of pointype=((x:20;y:400), (x:320; y:20), (x: 620; y: 400), (x: 20; y: 400)) ;
procedure kor;
 begin
    x1:=getmaxx div 2;
    y1:= getmaxy div 2;
    r:= y1;
    setfillstyle(1,red);
    setcolor(red);
    pieslice(x1,y1,0, 360, r);
    readln;
    cleardevice;
 end;
procedure teglalap;
 begin
      x1:=10;
      x2:=getmaxx-10;
      y1:=10;
      y2:=getmaxy-10;
      setfillstyle(1,blue);
      setcolor(blue);
      bar(x1,y1,x2,y2);
      readln;
      cleardevice;
 end;
procedure haromszog;
 begin
      setfillstyle(1,yellow);
      fillpoly(4,p);
      readln;
      cleardevice;
 end;
begin
 Gd := Detect;
 InitGraph(Gd, Gm, ' ');
 kor;
 teglalap;
 haromszog;
  closegraph;
  end.
program pattogas_grafika;
uses CRT,GRAPH,GRAFIKA;
type kep=ViewPortType;
const x:integer=30;y:integer=20;
      u:integer=10;v:integer=-10;
      r=10;
 hatter=White;
   rajz=Red;
var xt,yt:integer;
        k:kep;
begin
  GrBe;
  with k do
    begin
      SetBkColor(Black);
      x1:=GetMaxX div 4;y1:=GetMaxY div 4;
      x2:=3*GetmaxX div 4;y2:=3*GetMaxY div 4;
      Clip:=true;
      SetColor(hatter);
      Bar(x1-1,y1-1,x2+1,y2+1);
      SetViewPort(x1,y1,x2,y2,ClipOn);  {ClipOff}
      repeat
        xt:=x;yt:=y;
        SetColor(rajz);Circle(x,y,r);
        Delay(100);
        SetColor(hatter);Circle(x,y,r);
        if (x<=0) or (x>x2-x1) then u:=-u;
        if (y<=0) or (y>y2-y1) then v:=-v;
        x:=x+u;y:=y+v;
      until KeyPressed;
    end;
  GrKi;
end.


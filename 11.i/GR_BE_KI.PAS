program grafika_be_ki;
uses GRAPH;
var gd,gm,u,v:integer;
       szov:string;
begin
  gd:=Detect;
  InitGraph(gd,gm,'c:\tp\bgi');
  OutTextXY(10,20,'Grafika!');
  PutPixel(300,40,Cyan);
  u:=GetMaxX;v:=GetMaxY;
  Line(0,0,u,v);
  Rectangle(30,30,u-30,v-30);
  Circle(u div 2,v div 2,60);
  Bar(200,50,450,100);
  ReadLn;
  CloseGraph;
end.

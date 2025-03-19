uses Crt, Graph;

var gd,gm: Integer;

procedure Rajzol(ax,ay,bx,by: Integer; m: Byte);

var a,b,magy,magx,px,py,qx,qy,cx,cy,ox,oy:Integer;
    xthatod,ythatod: Real;

Begin
     if m<>0 then begin
        xthatod:=(bx-ax)/16;
        ythatod:=(by-ay)/16;
        ox:=Trunc(10*xthatod+0.5)+ax;
        oy:=Trunc(10*ythatod+0.5)+ay;
        qx:=Trunc(9*xthatod+0.5)+ax;
        qy:=Trunc(9*ythatod+0.5)+ay;
        px:=Trunc(7*xthatod+0.5)+ax;
        py:=Trunc(7*ythatod+0.5)+ay;
        a:=Trunc(7*xthatod+0.5);
        b:=Trunc(7*ythatod+0.5);
        magx:=a+a div 2;
        magy:=a+b div 2;
        cx:=magy+ax;
        cy:=-magx+ay;
        SetColor(0);
        Line(qx,qy,ox,oy);
        SetColor(White);
        Line(qx,qy,cx,cy);
        Line(cx,cy,ox,oy);

        Rajzol(ax,ay,ox,oy,m-1);
        Rajzol(cx,cy,ox,oy,m-1);
        Rajzol(qx,qy,cx,cy,m-1);
        Rajzol(ox,oy,bx,by,m-1);
     end;
end;

Begin
     gd:=Detect;
     InitGraph(gd,gm,'d:\TP7\bgi ');
     ClearDevice;
     Line(1,GetMaxY+1,GetMaxX+1,2);
     Rajzol(0,GetMaxY,GetMaxX+1,0,10);
     ReadKey;
end.



Program Negyzet_forgatas;
Uses Crt, Graph;
Var
 Alfa: Real;
 Gd, Gm, OX, OY, R: Integer;
 I: Byte;
Begin
  InitGraph(Gd, Gm, '');
  SetColor(Green);
  OX:=320;OY:=240;
  R:=100;Alfa:=0;
 Repeat
  For I:= 0 To 3 Do
   Line(OX+Round(R*Cos((Alfa+I*90)*Pi/180)), OY+Round(R*Sin((Alfa+I*90)*Pi/180)),
   OX+Round(R*Cos((Alfa+((I+1) Mod 4)*90)*Pi/180)), OY+Round(R*Sin((Alfa+((I+1) Mod 4)*90)*Pi/180)) );
   Alfa:= Alfa+8;
  Delay(65000); Delay(65000); Delay(65000); Delay(65000);
 Until KeyPressed;
End.
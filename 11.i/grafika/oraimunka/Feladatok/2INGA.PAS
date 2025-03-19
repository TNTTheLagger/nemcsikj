Program elso;
Uses Crt, Graph;
Const S = 20;
Var Gd, Gm, I, J, X0, Y0, X1, Y1, R, N, X2, Y2 : Integer;


Begin
 Gd := Detect;
 Initgraph(Gd, Gm, '');
 If GraphResult <> GrOk Then Begin
  ClrScr;
  Write('Hiba a grafikus k‚perny‹ megnyit s sban');
  ReadKey;
 End;

 X0 := GetMaxX Div 2;
 Y0 := GetMaxY Div 2;
 R := 150;
 SetBkColor(White);
 Circle(X0, Y0, R);
 N := 180;

 Repeat

  For I:= 0 To 180 Do Begin
   SetColor(Blue);
   X1 := Trunc(X0 - R * Cos(2 * Pi * I / N / 2));
   Y1 := Trunc(Y0 + R * Sin(2 * Pi * I / N / 2));
   SetFillStyle(1, Blue);
   PieSlice(X1, Y1, 0, 360, S);
   Line(X0, Y0, X1, Y1);
   X2 := Trunc(X0 + R * Cos( 2 * Pi * I / N / 2));
   Y2 := Trunc(Y0 + R * Sin( 2 * Pi * I / N / 2));
   SetFillStyle(1, Blue);
   PieSlice(X2, Y2, 0, 360, S);
   Line(X0, Y0, X2, Y2);
{   Delay(1000);}
   SetColor(GetBkColor);
   SetFillStyle(1, GetBkColor);
   PieSlice(X2, Y2, 0, 360, S);
   PieSlice(X1, Y1, 0, 360, S);
   Line(X0, Y0, X2, Y2);
   Line(X0, Y0, X1, Y1);
   If KeyPressed Then Begin
    CloseGraph;
    Halt;
   End;
  End;

 Until KeyPressed;

End.
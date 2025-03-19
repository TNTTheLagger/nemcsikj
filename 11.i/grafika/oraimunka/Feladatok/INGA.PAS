Program Inga;
Uses Crt, Graph;
Const S = 10;

Var Gd, Gm, I, X0, Y0, N, R, X1, Y1 : Integer;

Begin
 Gd := Detect;
 Initgraph(Gd, Gm, '');
 If GraphResult <> GrOk Then Begin
  ClrScr;
  Write('Hiba a grafikus k‚perny‹ megnyit s ban');
  ReadKey;
 End;

 X0 := GetMaxX Div 2;
 Y0 := GetMaxY Div 2;
 R := 1;
 SetBkColor(White);
 Circle(X0, Y0, R);
 N := 180;
 R := 150;

 Repeat
  For I:= 1 To N Do Begin
   SetColor(Blue);
   X1 := Trunc(X0 - R * Cos(Pi * I / N));
   Y1 := Trunc(Y0 + R * Sin(Pi * I / N));
   SetFillStyle(1, Blue);
   PieSlice(X1, Y1, 0, 360, S);
   Line(X0, Y0, X1, Y1);
   Delay(600);
   SetColor(GetBkColor);
   SetFillStyle(1, GetBkColor);
   PieSlice(X1, Y1, 0, 360, S);
   Line(X0, Y0, X1, Y1);
   If KeyPressed Then
    Halt;
  End;

  For I:= 1 To N Do Begin
   SetColor(Blue);
   X1 := Trunc(X0 + R * Cos(Pi * I / N));
   Y1 := Trunc(Y0 + R * Sin(Pi * I / N));
   SetFillStyle(1, Blue);
   PieSlice(X1, Y1, 0, 360, S);
   Line(X0, Y0, X1, Y1);
   Delay(600);
   SetColor(GetBkColor);
   SetFillStyle(1, GetBkColor);
   PieSlice(X1, Y1, 0, 360, S);
   Line(X0, Y0, X1, Y1);
   If KeyPressed Then
    Halt;
  End;

 Until KeyPressed;
 CloseGraph;
End.
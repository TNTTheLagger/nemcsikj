Program legyezo;
Uses Crt, Graph;
Const R = 150;
      N = 180;
      Varj = 1000;

Var Gd, Gm, I, J, K, V   : Integer;
    X0, Y0, X1, Y1       : Integer;


Begin
 Gd := Detect;
 Initgraph(Gd, Gm, '');
 X0 := GetMaxX Div 2;
 Y0 := GetMaxY Div 2;
 K := 90;
 V := 180;

 Repeat

  K := K + 90;
  V := V + 90;
  If K = 360 Then
   K := 0;
  If V > 360 Then
   V := 90;

  For I := K To V Do Begin
   SetColor(Red);
   X1 := Trunc(X0 + R * Cos(2 * Pi * I / N / 2));
   Y1 := Trunc(Y0 - R * Sin(2 * Pi * I / N / 2));
   Arc(X0, Y0, K, I, R);
   Line(X0, Y0, X1, Y1);
   Delay(Varj);
   If KeyPressed Then Begin
    CloseGraph;
    Halt;
   End;
  End;

  For I := K To V Do Begin
   J := J - 1;
   X1 := Trunc(X0 + R * Cos(2 * Pi * I / N / 2));
   Y1 := Trunc(Y0 - R * Sin(2 * Pi * I / N / 2));
   SetColor(GetBkColor);
   Arc(X0, Y0, K, I, R);
   Line(X0, Y0, X1, Y1);
   Delay(Varj);
   If KeyPressed Then Begin
    CloseGraph;
    Halt;
   End;
  End;

 Until KeyPressed;
End.
Program Libikoka;
Uses Crt, Graph;
Const N    = 180;
      Varj = 6000;

Var Gd, Gm, I, Y1, Y2, X1, X2, X0, Y0, R : Integer;

Begin
 Gd := Detect;
 InitGraph(Gd, Gm, '');
 If GraphResult <> GrOk Then Begin
  ClrScr;
  Write('Hiba a grafikus k‚perny‹ megnyit s sban');
  ReadKey;
 End;


 X0 := GetMaxX Div 2;
 Y0 := GetMaxY Div 2;
 R := 150;

 Line(X0, Y0, GetMaxX-300, GetMaxY-200);
 Line(X0, Y0, 300, GetmaxY-200);
 Line(GetMaxX-300, GetMaxY-200, 300, GetmaxY-200);

 X1 := X0 + R;
 Y1 := Y0 + R;
{ Circle(X0, Y0, R);}

 Repeat

  For I:= 260 To 280 Do Begin
   SetColor(Green);
   X1 := Trunc(X0 + R * Sin(2 * Pi * (I - 180) / N / 2));
   Y1 := Trunc(Y0 - R * Cos(2 * Pi * (I - 180) / N / 2));
   X2 := Trunc(X0 + R * Sin(2 * Pi * I / N / 2));
   Y2 := Trunc(Y0 - R * Cos(2 * Pi * I / N / 2));
   Line(X1, Y1, X2, Y2);
   Delay(Varj);
   SetColor(GetBkColor);
   Line(X1, Y1, X2, Y2);
   If KeyPressed Then Begin
    CloseGraph;
    Halt;
   End;
  End;

  For I := 170 To 190 Do Begin
   SetColor(Green);
   X1 := Trunc(X0 - R * Cos(2 * Pi * (I + 180) / N / 2));
   Y1 := Trunc(Y0 + R * Sin(2 * Pi * (I + 180) / N / 2));
   X2 := Trunc(X0 - R * Cos(2 * Pi * I / N / 2));
   Y2 := Trunc(Y0 + R * Sin(2 * Pi * I / N / 2));
   Line(X1, Y1, X2, Y2);
   Delay(Varj);
   SetColor(GetBkColor);
   Line(X1, Y1, X2, Y2);
   If KeyPressed Then Begin
    CloseGraph;
    Halt;
   End;
  End;

 Until Keypressed;
End.
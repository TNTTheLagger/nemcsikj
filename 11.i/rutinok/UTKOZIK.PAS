Program golyok;
Uses Crt, Graph;
Const R = 20;
Var Gd, Gm, I, J, Y : Integer;

Begin
 Gd := Detect;
 Initgraph(Gd, Gm, '');
 If GraphResult <> GrOk Then Begin
  ClrScr;
  Write('Hiba a grafikus k‚perny‹ megnyit s sban');
  ReadKey;
 End;

 Y := GetMaxY Div 2;
 Line(0, Y, GetMaxX, Y);

 For I := R To (GetMaXX Div 2 - R) Do Begin
  SetColor(Green);
  Circle(I, Y - R - 1, R);
  SetColor(Yellow);
  Circle(GetMaxX - I, Y - R - 1, R);
  Delay(1000);
  SetColor(GetBkColor);
  Circle(I, Y - R - 1, R);
  Circle(GetmaxX - I, Y - R - 1, R);
 End;

 For I := R To (GetMaxX Div 2 - R) Do Begin
  SetColor(Green);
  Circle((GetMaxX Div 2) - I, Y - R - 1, R);
  SetColor(Yellow);
  Circle((GetMaxX Div 2) + I, Y - R - 1, R);
  Delay(1000);
  SetColor(GetBkColor);
  Circle((GetMaxX Div 2) - I, Y - R - 1, R);
  Circle((GetMaxX Div 2) + I, Y - R - 1, R);
 End;

 ReadKey;
 CloseGraph;
End.
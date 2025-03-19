{$A+,B-,D+,E+,F-,G-,I+,L+,N-,O-,P-,Q-,R-,S+,T-,V+,X+,Y+}
{$M 16384,0,655360}
Program Verseny;
Uses Crt, Graph;

Const R = 20;
      C = 5;

Var Gd, Gm, I, J           : Integer;
    X1, X2, X3, Y1, Y2, Y3 : Integer;

Begin
 Gd := Detect;
 InitGraph(Gd, Gm, '');
 If GraphResult > GrOk Then Begin
  ClrScr;
  Write('Hiba a grafikus kÇpernyã megnyit†s†ban');
  ReadKey;
  Halt(1);
 End;
 Rectangle(0, 0, GetMaxX, GetMaxY);
 Line(0, GetMaxY Div 3, GetMaxX, GetMaxY Div 3);
 Line(0, 2 * (GetMaxY Div 3), GetMaxX, 2 * (GetMaxY Div 3));
 Randomize;
 X1 := R + 1;
 X2 := X1;
 X3 := X1;
 Y1 := GetMaxY Div 3;
 Y2 := 2 * Y1 - R - 1;
 Y3 := GetMaxY - 1 - R;
 Y1 := Y1 - R - 1;
 Repeat
  X1 := X1 + Random(C);
  SetColor(Green);
  Circle(X1, Y1, R);
  X2 := X2 + Random(C);
  SetColor(White);
  Circle(X2, Y2, R);
  X3 := X3 + Random(C);
  SetColor(Yellow);
  Circle(X3, Y3, R);
  Delay(6000);
  If ((X1 + R + 1) >= GetMaxX) Or ((X2 + R + 1) >= GetMaxX)
  Or ((X3 + R + 1) >= GetMaxX) Then Begin
   ReadKey;
   CloseGraph;
   If X1 + R + 1 >= GetMaxX Then Begin
    ClrScr;
    TextColor(Green);
    Write('A nyertes a ZôLD goly¢!');
    Readkey;
   End Else Begin
    If X2 + R + 1 >= GetMaxX Then Begin
     ClrScr;
     Write('A nyertes a FEHêR goly¢!');
     ReadKey;
    End Else Begin
     ClrScr;
     TextColor(Yellow);
     Write('A nyertes a SµRGA goly¢!');
     ReadKey;
    End;
   End;
   Halt(1);
  End;
  SetColor(GetBkColor);
  Circle(X1, Y1, R);
  Circle(X2, Y2, R);
  Circle(X3, Y3, R);
 Until KeyPressed;
 ReadKey;
 CloseGraph;
End.
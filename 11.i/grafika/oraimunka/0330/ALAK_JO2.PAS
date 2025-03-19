Program Alak;
Uses Graph, Crt;
Const S = 30;
      H = 10;
Var I, J, Gd, Gm : Integer;
Begin
 Gd := Detect;
 InitGraph(Gd, Gm, '');
 If GraphResult <> GrOk Then Begin
  ClrScr;
  Write('Hiba a grafikus k‚perny‹ megnyit s ban');
  ReadKey;
 End;
{ Line(120, 240, 520, 240);
 Line(320, 40, 320, 440);}
 For I := 1 To H Do Begin
  Ellipse(120, 20+I*S, 270, 0, 200, 220-I*S);
  Ellipse(120, 460-I*S, 0, 90, 200, 220-I*S);
  Ellipse(520, 20+I*S, 180, 270, 200, 220-I*S);
  Ellipse(520, 460-I*S, 90, 180, 200, 220-I*S);
  delay(30000);
 End;
 ReadKey;
 CloseGraph;
End.
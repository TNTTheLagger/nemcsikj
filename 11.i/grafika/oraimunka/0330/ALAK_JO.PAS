Program Alak;
Uses Graph, Crt;
Var I, J, Gd, Gm: Integer;
Begin
   gd := detect;
 initgraph(gd, gm, '');
 if GraphResult <> GrOk then begin
  clrscr;
  write('Hiba a grafikus k‚perny‹ megnyit s ban');
  readkey;
 End;
 Line(120, 240, 520, 240);
 Line(320, 40, 320, 440);
 For I := 1 To 10 Do Begin
  Ellipse(120, 20+I*20, 270, 0, 200, 220-I*20);
  Ellipse(120, 460-I*20, 0, 90, 200, 220-I*20);
  Ellipse(520, 20+I*20, 180, 270, 200, 220-I*20);
  Ellipse(520, 460-I*20, 90, 180, 200, 220-I*20);
 End;
 ReadKey;
End.
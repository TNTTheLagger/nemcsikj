Program kerek;
 Uses  Crt,Graph ;
Const
  KullokSzama = 5 ;
  Fordulat : Real = 0.1 ;
Var
  i,gd,gm,r,y: Integer ;
  x,  alfa: Real ;
  Ch : Char ;

Procedure KulloRajz(X,Y:integer;Szog: Real) ;
    Begin
      Line(X,Y,X + Trunc(R * Cos(Szog)),Y + Trunc(R * Sin(Szog))) ;
      delay(200);
    End;

Procedure KerekRajz(X,Y: integer ; Szin: Word) ;
  Begin
    SetColor(Szin) ;
    Circle(X,Y,R) ;
  For I := 1 To KullokSzama Do
      KulloRajz(x,y,Alfa + (I - 1) / KullokSzama * 2 * Pi) ;
  End ;

Begin
  Detectgraph(gd,gm) ;
  InitGraph(gd,gm,'') ;
  R := 20 ;
  X := R ;
  Y := GetMaxY Div 2 ;
  Alfa := 0 ;
  Line(0,Y+1,GetMaxX,Y+1) ;
 Repeat
      KerekRajz(trunc(X),Y - R,GetMaxColor) ;
         If (X < R) And (Fordulat < 0) Then
            Fordulat := Abs(Fordulat) ;
         If (X > GetMaxX - R) And (Fordulat > 0) Then
            Fordulat := -Abs(Fordulat) ;
            KerekRajz(trunc(X),Y - R,GetBkColor) ;
            Alfa := Alfa + Fordulat ;
            X := X + Fordulat * R ;
  Until KeyPressed;
  CloseGraph ;
End.
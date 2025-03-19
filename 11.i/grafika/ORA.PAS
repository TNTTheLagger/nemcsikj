Program Graf9 ;

Uses
  Crt,
  Dos,
  Graph ;

Const
  PiPer180 = 0.01745329252 ;

  Hang : Boolean = True ;
Type
  MutatoTipus = (Ora,Perc,MasodPerc) ;

Var
  Meghajto,
  Uzemmod,
  GrafHiba : Integer ;
  XYAsp    : Real ;
  XAsp,
  YAsp,
  Oszto,
  KozepX,
  KozepY,
  Sugar,
  Ev,
  Ho,
  Nap,
  HetNap   : Word ;
  Ora1,
  Ora2,
  Perc1,
  Perc2,
  MPerc1,
  MPerc2,
  SzPerc   : Integer ;
  Vektor   : Pointer ;
  C1,
  C2       : Char ;

{$IFOPT F-}
  {$DEFINE FMINUSZ}
  {$F+}
{$ENDIF}

Procedure OraMegszakitas ; Interrupt ;
  Begin
    Inc(Oszto) ;
    If Oszto = 18 Then
      Begin
        Oszto := 0 ;
        Inc(MPerc2) ;
        If MPerc2 = 60 Then
          Begin
            MPerc2 := 0 ;
            Inc(Perc2) ;
            If Perc2 = 60 Then
              Begin
                Perc2 := 0 ;
                Inc(Ora2) ;
                If Ora2 = 24 Then
                  Begin
                    Ora2 := 0 ;
                    Inc(Nap) ;
                    If Nap = 32 Then
                      Nap := 1 ;
                  End ;
              End ;
          End ;
      End ;
  End ;

{$IFDEF FMINUSZ}
  {$UNDEF FMINUSZ}
  {$F-}
{$ENDIF}

Procedure Vonal(Szog : Integer ; Hossz1, Hossz2 : Word) ;
  Begin
    MoveTo(KozepX + Trunc(Cos(PiPer180 * (Szog - 90)) * Hossz1),
           KozepY + Trunc(Sin(PiPer180 * (Szog - 90)) * XYAsp *
           Hossz1)) ;
    LineTo(KozepX + Trunc(Cos(PiPer180 * (Szog - 90)) * Hossz2),
           KozepY + Trunc(Sin(PiPer180 * (Szog - 90)) * XYAsp *
           Hossz2)) ;
  End ;

Procedure OraLap ;
  Var
    I : Integer ;
    S : String ;
  Begin
    SetColor(GetMaxColor) ;
    Circle(KozepX,KozepY,Sugar) ;
    I := 0 ;
    While I < 360 Do
      Begin
        If I Mod 30 = 0
        Then
          Begin
            SetLineStyle(SolidLn,0,ThickWidth) ;
            Vonal(I,Sugar - 8,Sugar + 8) ;
            If I Div 30 = 0
            Then
              S := '12'
            Else
              Str(I Div 30,S) ;
            SetTextJustify(CenterText,CenterText) ;
            MoveTo(KozepX + Trunc(Cos(PiPer180 * (I - 90)) *
                   (Sugar + 30)),
                   KozepY + Trunc(Sin(PiPer180 * (I - 90)) *
                   XYAsp * (Sugar + 30))) ;
            SetTextStyle(DefaultFont,HorizDir,2) ;
            OutText(S) ;
          End
        Else
          Begin
            SetLineStyle(SolidLn,0,NormWidth) ;
            Vonal(I,Sugar - 4,Sugar + 4) ;
          End ;
        Inc(I,6) ;
      End ;
  End ;

Procedure Mutato(Mutat: MutatoTipus ; Szog: Word ;
                 Lathato: Boolean) ;
  Var
    VonalStilus : Byte ;
    Hossz       : Word ;
  Begin
    Case Mutat Of
      Ora       : Begin
                    VonalStilus := ThickWidth ;
                    Hossz := Sugar * 2 Div 3 - 10 ;
                  End ;
      Perc      : Begin
                    VonalStilus := ThickWidth ;
                    Hossz := Sugar * 5 Div 6 ;
                   End ;
      MasodPerc : Begin
                    VonalStilus := NormWidth ;
                    Hossz := Sugar - 15 ;
                  End ;
    End ;
    SetLineStyle(SolidLn,0,VonalStilus) ;
    Case Lathato Of
      True  : SetColor(GetMaxColor) ;
      False : SetColor(GetBkColor) ;
    End ;
    Vonal(Szog,0,Hossz) ;
  End ;

Procedure NapKiir ;
  Var
    S : String ;
  Begin
    SetViewPort(KozepX + Sugar * 2 Div 3 - 10,KozepY - 6,
                KozepX + Sugar * 2 Div 3 + 10,KozepY + 6,ClipOn) ;
    ClearViewPort ;
    SetViewPort(0,0,GetMaxX,GetMaxY,ClipOn) ;
    SetLineStyle(SolidLn,0,NormWidth) ;
    SetColor(GetMaxColor) ;
    Rectangle(KozepX + Sugar * 2 Div 3 - 10,KozepY - 6,
              KozepX + Sugar * 2 Div 3 + 10,KozepY + 6) ;
    Str(Nap:2,S) ;
    SetTextJustifY(CenterText,CenterText) ;
    SetTextStyle(DefaultFont,HorizDir,1) ;
    OutTextXY(KozepX + Sugar * 2 Div 3,KozepY,S) ;
  End ;

Procedure Mutatok ;
  Var
    OraMut1,
    OraMut2,
    PercMut1,
    PercMut2,
    MPercMut1,
    MPercMut2  : Integer ;
    S          : String ;
  Begin
    MpercMut1 := Mperc1 * 6 ;
    PercMut1 := Perc1 * 6 + MpercMut1 Div 60 ;
    OraMut1 := Ora1 * 30 + PercMut1 Div 12 ;

    MpercMut2 := Mperc2 * 6 ;
    PercMut2 := Perc2 * 6 + MpercMut2 Div 60 ;
    OraMut2 := Ora2 * 30 + PercMut2 Div 12 ;

    If OraMut1 <> OraMut2 Then
      Mutato(Ora,OraMut1,False) ;
    If PercMut1 <> PercMut2 Then
      Mutato(Perc,PercMut1,False) ;
    If MPerc1 <> MPerc2 Then
      Mutato(MasodPerc,MPercMut1,False) ;
    NapKiir ;

    Mutato(Ora,OraMut2,True) ;
    Mutato(Perc,PercMut2,True) ;
    Mutato(MasodPerc,MPercMut2,True) ;

    SetFillStyle(SolidFill,GetMaxColor) ;
    Sector(KozepX,KozepY,0,360,Sugar Div 40,Sugar Div 40) ;
  End ;

Procedure HangjegyRajzolas ;
  Begin
    If Hang
    Then
      SetColor(GetMaxColor)
    Else
      SetColor(GetBkColor) ;
    SetTextJustify(RightText,TopText) ;
    SetTextStyle(DefaultFont,HorizDir,2) ;
    OutTextXY(GetMaxX,0,#13) ;
  End ;

Begin
  Meghajto := Detect ;
  InitGraph(Meghajto,Uzemmod,'') ;
  GrafHiba := GraphResult ;
  If GrafHiba <> grOk Then
    Begin
      WriteLn(GraphErrorMsg(GrafHiba)) ;
      ReadLn ;
      Halt ;
    End ;

  GetAspectRatio(XAsp,YAsp) ;
  XYAsp := XAsp / YAsp ;
  KozepX := GetMaxX Div 2 ;
  KozepY := GetMaxY Div 2 ;
  Sugar := Trunc(GetMaxY Div 3 / XYAsp) ;
  OraLap ;
  GetDate(Ev,Ho,Nap,HetNap) ;
  GetTime(Word(Ora1),Word(Perc1),Word(MPerc1),Word(SzPerc)) ;
  GetTime(Word(Ora2),Word(Perc2),Word(MPerc2),Word(SzPerc)) ;
  GetIntVec($1C,Vektor) ;
  Mutatok ;
  HangjegyRajzolas ;
  Oszto := 0 ;
  SetIntVec($1C,@OraMegszakitas) ;

  C1 := #0 ;
  Repeat
      Repeat
      Until (MPerc2 <> Mperc1) Or KeyPressed ;

      If KeyPressed Then
        Begin
          C1 := ReadKey ;
          Case C1 Of
            #0  : Begin
                    C2 := ReadKey ;
                    If C2 In [#75,#77] Then
                      Begin
                        Case C2 Of
                          #77 : Begin
                                  Inc(Perc2) ;
                                  If Perc2 = 60 Then
                                    Begin
                                      Perc2 := 0 ;
                                      Inc(Ora2) ;
                                      If Ora2 = 24 Then
                                        Begin
                                          Ora2 := 0 ;
                                          Inc(Nap) ;
                                          If Nap = 32 Then
                                            Nap := 1 ;
                                        End ;
                                    End ;
                                End ;
                          #75 : Begin
                                  Dec(Perc2) ;
                                  If Perc2 = -1 Then
                                    Begin
                                      Perc2 := 59 ;
                                      Dec(Ora2) ;
                                      If Ora2 = -1 Then
                                        Begin
                                          Ora2 := 23 ;
                                          Dec(Nap) ;
                                          If Nap = 0 Then
                                            Nap := 31 ;
                                        End ;
                                    End ;
                                End ;
                        End ;
                        MPerc2 := 0 ;
                        Oszto := 0 ;
                        Mutatok ;
                        Ora1 := Ora2 ;
                        Perc1 := Perc2 ;
                        MPerc1 := MPerc2 ;
                      End ;
                  End ;
            ^M  : Begin
                    Hang := Not Hang ;
                    HangjegyRajzolas ;
                  End ;
          End ;
        End ;
      If MPerc2 <> MPerc1 Then
        Begin
          Mutatok ;
          Ora1 := Ora2 ;
          Perc1 := Perc2 ;
          MPerc1 := MPerc2 ;
        End ;

      If Hang And (Perc1 = 0) And (MPerc1 = 0) Then
        Begin
          Sound(4000) ;
          Delay(10000) ;
          NoSound ;
        End ;

  Until C1 = ^[ ;

  CloseGraph ;
  SetIntVec($1C,Vektor) ;
End.

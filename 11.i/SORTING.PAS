Program Rendezesek;
Uses Crt, Dos;
Const N = 1000;
Type Tomb = Array[1..N] Of ShortInt;
Var T, T1, T2 : Tomb;
    H1, H2, M1, M2, S1, S2, S1001, S1002 : Word;

Procedure Feltolt(Var T : Tomb);
Var i : Integer;
    p : Word;
Begin
     For i := 1 To N Do
         Begin
              T[i] := Random(101);
              p := Random(2);
              If p = 1 Then T[i] := T[i] * (-1);
         End;
End;
Procedure Kiir(Var T : Tomb);
Var i : Integer;
Begin
     For i := 1 To N -1 Do
         Begin
              Write(T[i],',');
         End;
     Write(T[N]);
End;
Procedure Csere(Var Mit, Mire : ShortInt);
Var s : ShortInt;
Begin
     s := Mit;
     Mit := Mire;
     Mire := s;
End;
Procedure EgyszCseresRend(Var T : Tomb);
Var i : Integer;
Begin
     i := 1;
     While i <= N -1 Do
           Begin
                If T[i] > T[i+1] Then
                   Begin
                        Csere(T[i],T[i+1]);
                        i := 0;
                   End;
                i := i + 1;
           End;
End;
Procedure BuborekRend(Var T : Tomb);
Var i, j : Integer;
Begin
     For i := 1 To N - 1 Do
         Begin
              For j := 1 To N - i Do
                  Begin
                       If T[j] > T[j+1] Then Csere(T[j],T[j+1]);
                  End;
         End;
End;
Procedure KozvKivRend(Var T : Tomb);
Var i, j : Integer;
Begin
     For i := 1 To N - 1 Do
         Begin
              For j := i + 1 To N Do
                  Begin
                       If T[i] > T[j] Then Csere(T[i],T[j]);
                  End;
         End;
End;
Procedure TimeCheck(M1,M2,S1,S2,S1001,S1002 : Word);
Var M, S, S100 : Word;
Begin
     If M2 < M1 Then M := (60 - M1) + M2
     Else M := M2 - M1;
     If S2 < S1 Then S := (60 - S1) + S2
     Else S := S2 - S1;
     If S1002 < S1001 Then S100 := (100 - S1001) + S1002
     Else S100 := S1002 - S1001;
     WriteLn(M,' perc, ',S,' masodperc, ',S100,' szazadmasodpercig tartott.');
     WriteLn;
End;

BEGIN
     ClrScr;
     Randomize;
     Feltolt(T);
     T1 := T;
     T2 := T;
     WriteLn('                              RENDEZESEK IDOTARTAMA');
     WriteLn;
     WriteLn;
     WriteLn;
     WriteLn('Egyszeru cseres rendezes ',N,' elemre: ');
     GetTime(H1,M1,S1,S1001);
     EgyszCseresRend(T1);
     GetTime(H2,M2,S2,S1002);
     TimeCheck(M1,M2,S1,S2,S1001,S1002);
     WriteLn;
     WriteLn;
     WriteLn('Buborek rendezes ',N,' elemre: ');
     GetTime(H1,M1,S1,S1001);
     BuborekRend(T2);
     GetTime(H2,M2,S2,S1002);
     TimeCheck(M1,M2,S1,S2,S1001,S1002);
     WriteLn;
     WriteLn;
     WriteLn('Kozvetlen kivalsztasos rendezes ',N,' elemre: ');
     GetTime(H1,M1,S1,S1001);
     KozvKivRend(T);
     GetTime(H2,M2,S2,S1002);
     TimeCheck(M1,M2,S1,S2,S1001,S1002);
     ReadKey;
END.
Program csonkit;
Uses CRT;
Function Rovid(S:string):byte;
Var A:string;
    hely:byte;
Begin
  Hely:=Pos('.', A);
  If Hely <> 0
  then Rovid:=(A+1, Hely-1);
  else Rovid:=A;
End;
Var S:string;
Begin
  ClrScr;
  WriteLn('Irj be valamit!');
  ReadLn(A);
  WriteLn(Copy(Rovid));
  Readkey;
End.

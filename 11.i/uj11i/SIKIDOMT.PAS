Program sikidomt;
Uses CRT;
Function Ter(S:string):byte;
Var Korter, Tter:real;
    Sz,M,R:real;
    A:char;
Begin
  Korter:=0;
  Tter:=0;
  Korter:=R*R*Pi;
  Tter:=Sz*M;
    If Korter>Tter
       then A:='K'
       else A:='T';
  Ter:=A;
End;
Var S:string;
Begin
  ClrScr;
  Write('Ird be a t‚glalap sz‚less‚g‚t!'); ReadLn(Sz);
  Write('Ird be a t‚glalap magass g t!'); ReadLn(M);
  Write('Ird be a k”r sugar t!'); ReadLn(R);
  ReadLn(S);
  WriteLn(Ter(Sz, M, R, A):6:2,A:3);
  Readkey;
End.
  Readkey;
End.
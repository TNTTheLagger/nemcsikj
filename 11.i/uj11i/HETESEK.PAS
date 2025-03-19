Program hetesek;
Uses CRT;
Function Ttomb(S:string):byte;
Var A,B:real;
    C,DB:byte;
    I,J:integer;
Type A:=array(1..10) of byte;
     B:=array(1..10) of byte;
Begin
  B:=A(DIV7);
  DB:=0;
     For I:=0 to 10 do
         begin
             if A(DIV7)>0;
             then B[I]:=A[I];
             I:=I+1;
         end;
     For J:=0 to 10 do
         begin
             if B[J]<>0
             then DB:=DB+1;
             else DB:=DB;
             J:=J+1;
         end;
Ttomb:=(A, B, C);
End;
Var S:string;
Begin
  ClrScr;
  WriteLn('Add meg az a t”mb elemeit!');
  ReadLn(A);
  WriteLn('A b t”mb elemei: ', B);
  WriteLn('A h‚ttel oszthat¢ sz mok sz ma: ', C);
  Readkey;
End.

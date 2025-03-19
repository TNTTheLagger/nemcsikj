Program paratlan;
Uses crt;
Var a:byte;
    q:array [1..10] of byte;

Procedure Veltlen;
Begin
Randomize;
For a:=1 to 10 do
Begin
q[a]:=random(100)+1;

writeln(q[a]);
End;
End;

Procedure Partlan;
Begin
For a:=1 to 10 do
    Begin
    If q[a] mod 2 <> 0 then
    writeln(q[a]);
    End;
End;

Begin
clrscr;
Veltlen;
Partlan;

Readkey;
End.
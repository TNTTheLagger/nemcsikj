program ludasmatyi;
uses crt;
var ketrec:array[1..1000] of integer; nyitva:array[1..1000] of boolean; i:integer;
Begin;
clrscr;
 for i:=1 to 1000 do nyitva[i]:=false;
 for i:=1 to 1000 do nyitva[i]:=not(nyitva[i]);
 i:=2;
 while i<1001 do
 Begin
 nyitva[i]:=not(nyitva[i]);
 i:=i+2
 End;
 i:=3;
 while i<1001 do
 Begin
 nyitva[i]:=not(nyitva[i]);
 i:=i+3
 End;
 for i:=1 to 1000 do
 Begin
 if nyitva[i] then Write(i,'; ');
 End;
readkey;
end.

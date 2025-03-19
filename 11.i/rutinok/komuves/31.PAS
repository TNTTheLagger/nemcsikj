program szetvall;
uses crt;
var i,j,x:byte;
    szoveg:string;

procedure szetvalogat(szov:string);
var szov2:array[1..255] of char;
Begin
  j:=1;
  x:=length(szoveg);
  for i:=1 to length(szoveg) do
  begin
    if szoveg[i] in ['A','E','U','I','O']  then
    begin
      szov2[j]:=szoveg[i];
      inc(j);
    end else
    begin
      szov2[x]:=szoveg[i];
      dec(x);
    end;
  end;
  for j:=1 to length(szoveg) do
  szoveg[j]:=szov2[j];
end;

Begin
clrscr;
  readln(szoveg);
  szetvalogat(szoveg);
  writeln(szoveg);
  readln;
end.

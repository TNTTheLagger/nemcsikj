program ludas;
uses crt;
var lud:array[1..1000] of boolean;
i,j:integer; ketrec:boolean;
begin
  clrscr;
  for j:=1 to 1000 do
  begin
  lud[j]:=false;
  End;



  for i:=1 to 999 do
  begin
    for j:=1 to 1000 do
    begin
      if j mod i = 0 then lud[j]:= Not(lud[j]);
    end;
  end;



  for j:=1 to 1000 do
  if lud[j] then Writeln('A(z)',j,' . ketrec van nyitva');
  Readkey;
End.
uses crt;
var k,l:byte;
    s:string;

function kicsi(s:string):string;
Begin
  for k:=1 to length(s) do
    if s[k] in ['a'..'z'] then lowercase(s[k]);
  kicsi:=s;
end;

Begin
  readln(s);
  writeln(kicsi);
  readln;
end;
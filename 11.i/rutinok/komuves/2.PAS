program egyenlo;
uses crt;
var i,j:byte;
    s:string;

Function egy:byte;
Begin
  j:=0;
  for i:=2 to length(s) do
    if s[i]<>s[i-1] then inc(j);
  egy:=j;
end;

Begin
  clrscr;
  readln(s);
  writeln(egy);
  readkey;
end.
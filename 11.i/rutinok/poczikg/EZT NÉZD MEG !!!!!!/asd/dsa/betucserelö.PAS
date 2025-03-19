program Betus;
uses crt;
var k,l:byte;
    s:string;

function Csere(s:string):string;
Begin
  for k:=1 to length(s) do
    if s[k]=' ' then s[k]:='a';
  csere:=s;
end;

Begin
  clrscr;
  readln(s);
  writeln(csere(s));
  readkey;
end.
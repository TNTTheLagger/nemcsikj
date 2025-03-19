program es;
uses crt;
var s:string;
    i,o:integer;

Begin
clrscr;
readln(s);
For i:=1 to length(s) do
    if s[i] in ['a',' ','e','‚'] then
    s[i]:='_';
    writeln(s);
o:=0;
for i:=1 to length(s) do
    if s[i]=' ' then
    o:=o+1;
writeln(o+1);
readln(i,o);






readln;
End.
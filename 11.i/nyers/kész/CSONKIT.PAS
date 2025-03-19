program csonkit;
uses crt;
var st:string;
procedure rovid(var s:string);
begin
if pos('.',s)>0 then delete(s, Pos('.',s), length(s));
end;

begin
clrscr;

writeln('szoveg');
readln(st);
rovid(st);
writeln('csonkitva');
writeln(st);

 readkey;
 clrscr;
end.
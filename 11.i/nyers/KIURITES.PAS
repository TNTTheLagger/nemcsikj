program kiurites;
uses crt;
var a:string;
procedure ClearBuffer(b:char);
begin
while keypressed do
readkey;
end;
begin
ClrScr;
writeln('�rd be a sz�veget');Readln(a);
ClearBuffer('r');
end.
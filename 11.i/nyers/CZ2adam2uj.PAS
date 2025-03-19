program cz2;
uses crt;
var a, i :longint;
 BEGIN
  clrscr;
  writeln('2 els‹ 30 hatv nya: ');
  a:=1;
  for i := 1 to 30 do
   begin
   a:=a*2;
   write(a,' ');
   end;
  readkey
 end.
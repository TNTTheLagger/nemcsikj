program faktorialis;
uses crt;

var a:byte;
    v:char;

function fakt(n:byte):longint;
begin
if n=0 then fakt:=1
   else fakt:=n*fakt(n-1);
   end;

begin
repeat
clrscr;
Writeln('n! meghatarozas');
write('n=');
readln(a);
writeln('n!=',fakt(a));
write('Van ujabb adat?');
v:=readkey
until v='n'end.
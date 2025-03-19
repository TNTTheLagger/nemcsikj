program fibonacci;
uses crt;
var szam,j:word;
    fibon:longint;
    ch:char;

function fib1(n:word):longint;
var f:array[0..100] of longint;
    i:longint;
begin
 f[0]:=0;f[1]:=1;
 for i:=2 to n do
 begin
  f[i]:=f[i-1]+f[i-2];
 end;
fib1:=f[n];
end;

function fib2(n:word):longint;
begin
  if n<2 then fib2:=n
  else fib2:=(fib2(n-1) + fib2(n-2));
  end;

begin
clrscr;
writeln('Melyik sz m fibonacci sorozat t szeretn‚d?');
readln(szam);
writeln('Milyen m¢don?');
writeln('1  iter ci¢val');
writeln('2  rekurz¡van');
ch:=readkey;
for j:=0 to szam do
begin
if ch='1' then fibon:=fib1(j);
if ch='2' then fibon:=fib2(j);
writeln('Az',j,'. eredm‚ny:',fibon);
end;
readln;
end.
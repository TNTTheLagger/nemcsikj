program Evszam;
uses crt;
var ev:array[1..19] of string=(1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997);
function JoEvszam(b:ev):boolean;
var i:integer;
begin
for i:=1 to 19 do ev[i]=false
      if ev[i]=true
      then writeln('J¢ ‚vsz m');
      else writeln('Rossz ‚vsz m');
    end;
begin
ClrScr;
writeln('Add meg az ‚vsz mot');readln(b);
JoEvszam(b);
Readkey
end.
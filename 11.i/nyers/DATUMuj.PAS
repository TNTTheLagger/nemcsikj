Program Datum;

uses Crt;

var a,b,c,d,e,f:Word;

function Compare(y1,m1,d1,y2,m2,d2:Word):Boolean;
var result:Boolean;
begin
if y1 > y2 then result:=false else
  if m1 > m2 then result:=false else
     if d1 >= d2 then result:=false else result:=true;
compare := result;
end;

begin
Clrscr;
Writeln('adj meg egy d tumot ‚v, h¢, nap form ban:');
Write('‚v: '); Readln(a);
Write('h¢nap: '); Readln(b);
Write('nap: '); Readln(c);
Writeln('adj meg m‚gegy d tumot ‚v, h¢, nap form ban:');
Write('‚v: '); Readln(d);
Write('h¢nap: '); Readln(e);
Write('nap: '); Readln(f);
Writeln;
if Compare(a,b,c,d,e,f) then Write('az els‹ d tum kor bbi') else Write('a m sodik d tum kor bbi');
readkey;
Clrscr;
end.
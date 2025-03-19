program szgep;
uses crt;
var a,b,c:integer;

procedure adatbekeres;
begin
clrscr;
write('K‚rem az els‹ sz mot: ');
readln(a);
write('K‚rem a m sodik sz mot: ');
readln(b);
end;

procedure osszead(x:integer);
begin
     x:=a+b;
     write('Az eredm‚ny: ',x);
end;

procedure kivon(x:integer);
begin
     x:=a-b;
     write('Az eredm‚ny: ',x);
end;

procedure szoroz(x:integer);
begin
     x:=a*b;
     write('Az eredm‚ny: ',x);
end;

procedure oszt(x:integer);
var y:real;
begin
     y:=a/b;
     write('Az eredm‚ny: ',y:2:2);
end;

BEGIN
adatbekeres; writeln;
writeln('1.™sszead s');
writeln('2.Kivon s');
writeln('3.Szorz s');
writeln('4.Oszt s'); writeln;
write('Mi legyen a mûvelet? '); readln(c);
case c of
     1:osszead(b);
     2:kivon(b);
     3:szoroz(b);
     4:oszt(b);
end;
readln;
END.

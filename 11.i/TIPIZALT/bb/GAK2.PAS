program korido;
uses crt;
var r:real;
    t:array[1..10] of real;
    i,a:integer;
Begin
Clrscr;
randomize;
a:=0;
i:=1;
 repeat

 readln(r);
 if r<>0 then
 begin
 t[i]:=r;
 a:=a+1;
 inc(i);
 end;
 until r=0;

writeln(t[i-1],' ',a);
readln;
end.
program parameter;
uses crt;
var a,b:integer;

procedure valtozik(x:integer; var y:integer);
begin
     x:=x*2;
     y:=y*2;
     writeln('Elj r sban: ',x:4,y:4);
end;

BEGIN
clrscr;
a:=2;
b:=2;
writeln('H¡v s el‹tt:',a:4,b:4);
valtozik(a,b);
writeln('H¡v s ut n: ',a:4,b:4);
readln;
END.

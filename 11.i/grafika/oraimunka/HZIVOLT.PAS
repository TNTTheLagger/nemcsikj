program hzivolt;
uses crt;
var i:integer;
    s:byte;
    k:char;

procedure teleir(x:byte);
begin
clrscr;
gotoxy(1,x);
for i:=1 to 80 do begin
       write(k);
       delay(20);
end;
end;

BEGIN
clrscr;
write('Milyen karaktert ¡rjak? ');
readln(k); writeln;
repeat
write('Hanyadik sort irjam tele? ');
      readln(s);
until s<25;
teleir(s);
readln;
END.
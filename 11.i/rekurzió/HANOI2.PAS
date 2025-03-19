uses crt;
procedure hanoi(n:integer;a,b,c:char);
begin
if n>0 then
begin
     hanoi(n-1,c,a,b);
     writeln(n,'. korongot tedd ',a,' r£dr¢l ',c);
     hanoi(n-1,b,c,a);
end;
end;
begin
clrscr;
hanoi(3,'A','B','C');
readkey;
end.
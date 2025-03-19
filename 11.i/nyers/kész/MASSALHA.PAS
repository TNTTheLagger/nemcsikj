program massalh;
uses crt;
var k:string;
    a,b:byte;
procedure msh (s:string;var W,c:byte);
var i:byte;
begin
W:=0;
c:=0;
for i:= 1 to length(s) do
if s[i] in ['A', 'E', 'I', 'O', 'U'] then  inc(w) else inc(c);
end;




BEGIN
clrscr;
readln(k);
msh(k,a,b);
writeln('mag nhangz¢: ',a,' m ssalhangz¢: ',b);
readkey;
END.
uses crt;
var s:string;
    hol:byte;

begin
readln(s);hol:=1;
while hol<>0 do
begin
hol:=pos(' ',s);
if hol<>0 then begin delete(s,hol,1);
end;
end;
write(s);
End.
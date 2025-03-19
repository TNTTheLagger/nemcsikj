program alma;
uses crt;
var s:string;
    i,n:integer;
begin
clrscr;
writeln('K‚rem a karakterl ncot:  ');
readln(s);

for i:=1 to length(s) do  begin
        if s[i]=' ' then n:=n+1;
        end;


writeln('A szavak sz ma:  ', n+1);
readln();
end.




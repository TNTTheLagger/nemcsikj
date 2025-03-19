Program ludas;
uses crt;
var   i,a:integer;
      t:array[1..1000]  of integer;



Begin
clrscr;
For i:=1 to 10 do
    begin
    for  a:=1 to 10 do

    if i mod a=0 then
    t[i]:=t[i]+1;
    writeln('Ketrec  ',i,'  ','ford¡t s sz ma:',t[i])
    end;
writeln;
writeln('nyitva:');
for a:=1 to 10 do
   begin
   if t[a] mod 2 <> 0 then
   writeln('- ',a,' ',t[a]) ;
   end;
readln;
End.
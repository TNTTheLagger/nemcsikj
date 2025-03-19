program szoszamlalas;
uses crt;
var szov : string;

function szamol(a:string):word;
var sum,i: word;
begin
sum:=0;
szamol:=0;
  if a[1]=' ' then Exit else
     if a[length(a)]=' ' then Exit else
        for i := 1 to length(a) do if a[i] = ' ' then inc(sum);
szamol:=sum+1;
end;

begin
clrscr;
write('K‚rem adja meg a sz”veget: ');
readln(szov);
If szamol(szov) > 0 then
write('A sz”veg ',szamol(szov),' sz¢b¢l  ll.')
else
begin
textcolor (red);
Write('Hiba');
normvideo;
end;
readkey;
end.



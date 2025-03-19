program test;
   uses crt;

   var
	  rendszam:string[7];

function ellen (rendszam:string):boolean;
var i,bit:byte;
begin
bit:=0;
if length(rendszam)<>6 then inc(bit);
 for i:=1 to 3 do begin
  case rendszam[i] of
  'A'..'Z' : bit:=bit+0;
  'a'..'z' : bit:=bit+0
  else inc(bit);
  end;
  end;
 
if bit = 0 then
for i:=4 to 6 do begin
case rendszam[i] of
'0'..'9' : bit:=bit+0
else inc(bit);
end;
end;
if bit=0 then ellen:=true else ellen:=false;
end;

begin
clrscr;
   writeln('Adj meg egy redszamot:');
   readln(rendszam);
if ellen(rendszam) then writeln('Helyes a rendszam') 
		else writeln('Hibas a rendszam');
end.


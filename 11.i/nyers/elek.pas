program test;
   uses
     EmptyPlaceHolderUnit,crt;

   var
      i : integer;
	  eredeti:string;

function fordit(szo:string):string;
var vissz:string;
begin
for i:=length(szo) downto 1 do
vissz[i]:=szo[length(szo)-i+1];
vissz[0]:=szo[0];
fordit:=vissz;

end;

begin
clrscr;
writeln('Add meg a szot:');
read(eredeti);
writeln(fordit(eredeti));
readln;
   end.

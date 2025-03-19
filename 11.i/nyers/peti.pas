program test;
   uses
     EmptyPlaceHolderUnit,crt;

   var
	
	  szoveg:string;

function csere(szo:string):string;
var i:byte;
begin
for i:=1 to length(szo) do
if szo[i]='b' then szo[i]:='a'; {az 'á' betu helyett a 'b' vizsgalja mert nem windowson turbo pascalba programoztam}
csere:=szo;

end;

begin
clrscr;
writeln('Add meg a szot:');
read(szoveg);
writeln(csere(szoveg));
readln;
   end.

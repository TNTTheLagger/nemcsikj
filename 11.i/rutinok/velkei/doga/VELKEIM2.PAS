Program VelkeiM2;

uses Crt;

var k:string;

Function JoRendszam(s:String):Boolean;
var i : Byte;
    ok : Boolean;
begin
ok:=true;
If length(s) <> 6 then ok:=false;
For i := 1 to 3 do
    If not (s[i] in ['A'..'Z']) then ok:=false;
For i := 4 to 6 do
    If not (s[i] in ['0'..'9']) then ok:=false;
JoRendszam:=ok;
end;

begin
Repeat
Clrscr;
Writeln('K�rem, adjon meg egy rendsz�mot. Ha megfelel a szab�lyoknak, az eredm�ny igaz, k�l�nben hamis lesz.');
Writeln('H�rom nagybet�b�l �s h�rom sz�mb�l kell, hogy �lljon. Pontosan hat karakter hossz� lehet.');
Writeln;
Writeln('�res karakterl�ncra kil�p�s.');
Writeln;
Write('A rendsz�m: '); Readln(k);
If k <> '' then
begin
Writeln(JoRendszam(k));
Readkey;
end;
Until (k = '');
Clrscr;
end.
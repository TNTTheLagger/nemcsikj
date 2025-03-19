Program FeketeG1;

uses Crt;

var st:String;

function BinaryText(s:string):boolean;
var cnt,i:Byte;
begin
cnt:=0;
For i := 1 to Length(s) do If s[i]='1' then inc(cnt);
BinaryText := not Odd(cnt);
end;

begin
Clrscr;
Writeln('Szoveg 1-sekbol es 0-akbol:');
Readln(st);
Writeln(BinaryText(st));
Readkey;
Clrscr;
end.
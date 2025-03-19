Program KariSzamlalo;

uses Crt;

var k:string;
    kar:Char;

function CountChar (s:string;c:char):Byte;
var i,j:Byte;
begin
j:=0;
For i := 1 to Length(s) do If s[i]=c then inc(j);
CountChar:=j;
end;

begin
Clrscr;
Write('Adjon meg egy sz”veget: ');
Readln(k);
Write('Adjon meg egy karaktert: ');
kar:=Readkey;
Writeln(kar);
Writeln('A sz”vegben a '+kar+' karakter ',Countchar(k,kar),'-szor fordul el‹.');
Readkey;
Clrscr;
end.
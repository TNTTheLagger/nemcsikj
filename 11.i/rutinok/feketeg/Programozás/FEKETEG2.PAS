Program FeketeG2;

uses Crt;

var st:String;

procedure Kodol(var s:string);
var i:Byte;
begin
For i := 1 to Length(s) do
  If s[i] = 'Y' then s[i]:='A' else
  If s[i] = 'Z' then s[i]:='B' else
  s[i]:=Chr(Ord(s[i])+2);
end;

begin
Clrscr;
Writeln('Szoveg csupa nagybetuvel, angol abece betuivel:');
Readln(st);
Kodol(st);
Writeln('Kodolva:');
Writeln(st);
Readkey;
Clrscr;
end.
Program MShCount;

uses crt;

var st:String;

function CountConsonant (s:string):Byte;
var sum,i:Byte;

begin
sum:=0;
For i := 1 to length(s) do If pos(s[i],'QWERTZUIOPASDFGHJKLYXCVBNM™š')=0 then Inc(sum);
CountConsonant:=sum;
end;

begin
Clrscr;
Writeln('Adjon meg egy sz”veget, megadom a nagybetûk sz m t:');
Readln(st);
Writeln;
Writeln('A sz”vegben ',CountConsonant(st),' db. nagybetû van.');
Readkey;
Clrscr;
end.
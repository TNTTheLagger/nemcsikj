Program FeketeG3;

uses Crt;

var st:String;

procedure Rovid(var s:string);
begin
If Pos('.',s)>0 then Delete(s, Pos('.',s), Length(s));
end;

begin
Clrscr;
Writeln('Szoveg:');
Readln(st);
Rovid(st);
Writeln('Csonkitva:');
Writeln(st);
Readkey;
Clrscr;
end.
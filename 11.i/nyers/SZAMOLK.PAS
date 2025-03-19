program szamok;
uses crt;
var k,j:integer;
type z=array[1..10] of integer;
var t:z;

procedure kiir(var a:z);
var i:integer;
begin
 for i:=1 to 10 do
 writeln(a[i]);
end;
procedure rendez(var a:z;n:integer);
var i:integer;
    w:boolean;
begin
repeat;
       w:=false;
       for i:=1 to n-1 do
       if a[i]>a[i+1] then
          begin
               a[1]:=a[i];
               a[i]:=a[i+1];
               a[i+1]:=a[1];
               w:=true;
          end;
    until not w;
end;
begin
clrscr;
 randomize;
for j:=1 to 10 do
    begin
    t[j]:=random(100)+1;
    end;
    kiir(t);
    rendez(t,10);
    writeln('Rendezve ki¡r s: ');
    kiir(t);

 Readkey;
End.
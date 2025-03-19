Program homeres;

uses crt;


var i,o,os,j,s:integer;
    a:real;
    t:array[1..31] of integer ;


Begin
clrscr;
randomize;
o:=0;
for i:=1 to 31 do
      Begin
          t[i]:=random(21)-10;
          o:=o+t[i];
          write('  ',t[i],'  ');

      end;
a:=o/31;
writeln(' tlag hom‚rs‚klet  ', a:2:2);
o:=0;
for i:=1 to 31 do
    Begin
    if t[i]>a then
    o:=o+1;

    End;


writeln(o);
for i:=1 to 29 do
if (t[i]<0) and (t[i+1]<0) and (t[i+2]<0) then
writeln(t[i],t[i+1],t[i+2]);
writeln('rendezve');
for i:=1 to 30 do
    for j:=i+1 to 31 do
        if t[j]<t[i] then
        begin
        s:=t[i];
        t[i]:=t[j];
        t[j]:=s;
        end;
for i:=1 to 31 do
    write(t[i],'  ');

readln;
End.

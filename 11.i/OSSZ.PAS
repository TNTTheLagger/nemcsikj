Program rendezes;
uses crt;
const N=5;
type tombtipus=array[1..N] of integer;
     elemtipus=integer;
var  A:tombtipus;

Procedure feltolt(var A:tombtipus);
var I:integer;
begin
Randomize;
   for I:=1 to N do A[I]:=random(100);
end;

Procedure kiirat(var A:tombtipus);
var I:integer;
begin
   for I:=1 to N do write(A[I]:3);
end;


Procedure CsereloRend(var A:tombtipus);
var I,J:integer;
    Csere:elemtipus;
begin
for I:=1 to N-1 do
    for J:=I+1 to N do
        begin
        if A[I]>A[J] then
           begin
            Csere:=A[I];
            A[I]:=A[J];
            A[J]:=Csere;
            kiirat(A);
            writeln('  ',i,'. ',j,'. hasonlitja van csere');
            writeln;
           end
           else begin
             kiirat(A);
             writeln('  ',i,'. ',j,'. hasonlitja nincs csere');
             writeln;
            end;
          end;
end;

Procedure BuborekRend(var A:tombtipus);
var I,J:integer;
    Csere:elemtipus;
begin
for I:=1 to N-1 do
    for J:=1 to N-I do
        begin
        if A[J]>A[J+1] then
           begin
            Csere:=A[J];
            A[J]:=A[J+1];
            A[J+1]:=Csere;
            kiirat(A);
            writeln('  ',j,'. ',j+1,'. hasonlitja van csere');
            writeln;
            end
           else begin
             kiirat(A);
             writeln('  ',j,'. ',j+1,'. hasonlitja nincs csere');
             writeln;
           end;
         end;
end;
BEGIN
Clrscr;
feltolt(A);
{Writeln('CSERLŠ RENDEZS');}
Writeln('BUBOREK RENDEZS');
Writeln('Eredeti t”mb:');
kiirat(A);
Writeln;
Writeln('A rendez‚s l‚p‚sei:');
{CsereloRend(A);}
BuborekRend(A);
readln;
END.
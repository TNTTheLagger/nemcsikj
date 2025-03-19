Program KissG1;

uses Crt;

Type Ltomb = Array [1..10] of Boolean;

var lt:LTomb;

Procedure WriteArray(pltomb:ltomb);
var i:Byte;
begin
For i := 1 to 10 do Writeln(pltomb[i]);
end;

Procedure RandomFill(var pLTomb:LTomb);
var i:Byte;
begin
For i := 1 to 10 do
  If Random<0.5 then plTomb[i] := false else plTomb[i]:=true;
end;

Function AllTrue (pLTomb:LTomb):boolean;
var sum:Boolean;
    i:Byte;
begin
sum:=true;
For i := 1 to 10 do sum := sum and pLTomb[i];
AllTrue := sum;
end;

begin
Clrscr;
Writeln('10 elemû logikai t”mb v‚letlenl felt”ltve:');
Randomize;
RandomFill(lt);
WriteArray(lt);
Writeln;
Writeln('Elemei k”z”tti S kapcsolat eredm‚nye:');
Writeln(AllTrue(lt));
Readkey;
Clrscr;
end.
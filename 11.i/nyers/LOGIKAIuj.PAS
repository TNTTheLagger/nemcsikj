Program bool;

uses crt;

type LTomb=array[1..4] of boolean;

var
x:ltomb;
a,b,c,d:Boolean;

Procedure Elj (var t:LTomb);
begin
t[1] := (false and false) or (not false and not false);
t[2] := (true and true) or (not true and not true);
t[3] := (false and true) or (not false and not true);
t[4] := (true and false) or (not true and not false);
end;



begin
Elj(x);
end.
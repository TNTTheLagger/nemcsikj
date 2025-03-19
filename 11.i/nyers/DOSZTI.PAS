Program paros;
Uses crt;
Var k:=integer;

Function amam(var s:string):integer;
var a:boolean;
    i:integer;

    const m :[1,0] of char;
    Begin
    For I:1 to length(s) do
    Begin
    if  copy(s,1,i) = copy(s,1,i+1) then
    k:=k+1;
    writeln(k);
    End;
 End;

Begin

amam(4);
If  k mod 2 = 0 then
writeln('P ros sz m£ egyes van benne');
Else writeln('P ratlan');

End.





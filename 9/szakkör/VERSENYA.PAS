program pontverseny;
uses crt;
Const n=5;
Const m=4;
var pont:array[1..n,1..m] of byte;
var i,j,a,b,c,d:integer;
Begin
ClrScr;
randomize;
for i:=1 to n do begin
  for j:=1 to m do begin
      pont[i,j]:=Random(10);
      Writeln('A gener lt sz m a ',i,'.versenyz” ',j,'.b¡r¢n l: ',pont[i,j]);
                   end;
                 end;





 Readkey;
End.
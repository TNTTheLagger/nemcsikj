program egyenlo;
uses crt;
type t=array[1..5] of byte;
var i,j:byte;
    be:t;
    ih:boolean;

procedure egy(be:t);
Begin
  i:=1;
  ih:=true;
  while (ih=true) and (i<>5) do
  begin
    inc(i);
    if be[i]<be[i-1] then ih:=false;
  end;
end;

Begin
clrscr;
  for i:=1 to 5 do
    read(be[i]);
  egy(be);
  writeln(ih);
  readkey;
end.

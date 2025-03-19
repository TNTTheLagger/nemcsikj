program azelem;
uses crt;
var k,l:byte;
    tomb:array[1..10] of word;


function azonoselem:boolean;
Begin
  azonoselem:=false;
  for k:=1 to 10 do
    for l:=1 to 10 do
      if (l<>k) and (tomb[k]=tomb[l]) then azonoselem:=true;
end;

Begin
clrscr;
  for k:=1 to 10 do


    read(tomb[k]);
  writeln(azonoselem);
  readkey;
end.
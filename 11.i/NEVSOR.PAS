program nevsorok;
uses crt;
type nevtip=array[1..6] of string;
const veznev:nevtip=('Kiss','Nagy','Kov cs','G l','Ferenczi','Balogh');
const kernev:nevtip=('D¢ra','Vikt¢ria','™d”n','Adam','D niel','P l');
const n=10;
var nevek:array[1..n] of string;
var i,j:integer;
var vnev,knev:string;
begin
  ClrScr;
  Randomize;
  for i:=1 to n do
      begin
       j:=Random(6)+1;
       vnev:=veznev[j];
       j:=random(6)+1;
       knev:=kernev[j];
       nevek[i]:=vnev+' '+knev;
       WriteLn(nevek[i]);

     end;
  ReadLn;
end.

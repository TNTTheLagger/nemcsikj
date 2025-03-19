program igazsagtabla2;
var i,j:boolean;
begin
   for i:=false to true do
      for j:=false to true do
       WriteLn(i:6,j:6,i and j:6);
end.

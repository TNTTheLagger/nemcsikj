program text_sorok;
uses CRT;
var  i:integer;
      q:char;
    sor:string[60];
      f:text;
begin
  ClrScr;
  Assign(f,'TEXT_SOR.PAS');
  Reset(f);
  i:=0;
  while not Eof(f) do
       begin
            ReadLn(f,sor);
            WriteLn(i:4,#32,sor);
            q:=ReadKey;
            Inc(i);
       end;
  Close(f);
  Write('Sorok sz ma:',i);
  q:=ReadKey;
end.

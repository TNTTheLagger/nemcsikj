procedure LISTA_NEV;
var q:char;
begin
  repeat
    Write('JelenlÇvìk-Hi†nyz¢k-Teljes(J/H/T)');
    q:=Upcase(ReadKey);
  until q in ['J','H','T'];
  MEGNYIT;
  Seek(f,0);
  while not Eof(f) do
    begin
      Read(f,a);
      if (q='J') and a.jelen then ADATKI(a);
      if (q='H') and (not a.jelen) then ADATKI(a);
      if (q='T') then ADATKI(a);
    end;
  LEZAR;
end;
procedure LISTA_EVFOLYAM;
var ev:integer;
begin
  repeat
    Write('êv:');
    {$I-}ReadLn(ev);{$I+}
  until IOResult=0;
  MEGNYIT;
  Seek(f,0);
  while not Eof(f) do
    begin
      Read(f,a);
      if ev=a.vegzett then ADATKI(a);
    end;
  LEZAR;
end;

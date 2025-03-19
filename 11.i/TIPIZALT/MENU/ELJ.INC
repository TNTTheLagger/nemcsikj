procedure UJ_ADAT;
begin
  ClrScr;
  WriteLn('—j adat');
  ReadLn;
end;
procedure MODOSITAS;
begin
  ClrScr;
  WriteLn('M¢dos¡t s');
  ReadLn;
end;
procedure TORLES(x:boolean);
begin
  ClrScr;
  case x of
    true:WriteLn('Jelenl‚t');
    false:WriteLn('T”rl‚s');
  end;
  ReadLn;
end;

procedure LISTA_NEV;
begin
  ClrScr;
  WriteLn('List z s n‚v szerint');
  ReadLn;
end;
procedure LISTA_EVFOLYAM;
begin
  ClrScr;
  WriteLn('List z s ‚vfolyamonk‚nt');
  ReadLn;
end;

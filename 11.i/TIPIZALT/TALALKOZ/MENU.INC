
procedure ADATBEVITEL;
var q:char;
begin
  repeat
    ClrScr;
    WriteLn('1 - �j adat');
    WriteLn('2 - M�dos�t�s');
    WriteLn('3 - Jelenl�t');
    WriteLn('4 - T�rl�s');
    WriteLn('V - Vissza');
      q:=ReadKey;
      case q of
        '1':UJ_ADAT;
        '2':MODOSITAS;
        '3':TORLES(true);
        '4':TORLES(false);
      end;
    until Upcase(q)='V';
  ClrScr;
end;

procedure LISTAZAS;
var a:resztvevo;
    q:char;
begin
  repeat
    ClrScr;
    WriteLn('1 - N�vsor');
    WriteLn('2 - �vfolyam');
    WriteLn('V - Vissza');
      q:=ReadKey;
      case q of
        '1':LISTA_NEV;
        '2':LISTA_EVFOLYAM;
      end;
    until Upcase(q)='V';
  ClrScr;
end;

procedure MENU;
var q:char;
begin
  repeat
    ClrScr;
    WriteLn('1 - Adatbevitel');
    WriteLn('2 - List�z�s');
    WriteLn('V - V�ge');
      q:=ReadKey;
      case q of
        '1':ADATBEVITEL;
        '2':LISTAZAS;
      end;
    until Upcase(q)='V';
  ClrScr;
end;

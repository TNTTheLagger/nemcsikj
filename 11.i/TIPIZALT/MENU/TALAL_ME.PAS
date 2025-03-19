program talalkozo;
uses CRT;

{$I ELJ.INC}
procedure ADATBEVITEL;
var q:char;
begin
  repeat
    ClrScr;
    WriteLn('1 - ój adat');
    WriteLn('2 - M¢dos°t†s');
    WriteLn('3 - JelenlÇt');
    WriteLn('4 - TîrlÇs');
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
var q:char;
begin
  repeat
    ClrScr;
    WriteLn('1 - NÇvsor');
    WriteLn('2 - êvfolyam');
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
    WriteLn('2 - List†z†s');
    WriteLn('V - VÇge');
      q:=ReadKey;
      case q of
        '1':ADATBEVITEL;
        '2':LISTAZAS;
      end;
    until Upcase(q)='V';
  ClrScr;
end;


begin   (* Fìprogram *)
  MENU;
end.

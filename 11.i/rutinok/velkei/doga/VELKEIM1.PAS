Program VelkeiM1;

uses Crt;

var bg,fg:Byte;

Procedure Szin(bgcolor,fgcolor:Byte);
begin
If (bgcolor in [0..7]) and (fgcolor in [0..15, 128..143]) then
   begin
   TextColor(fgcolor);
   TextBackground(bgcolor);
   end;
end;

begin
Szin(0,7);
Clrscr;
Writeln('A k�perny�n megjelen�thet� �sszes sz�nkombin�ci�, villog�ssal egy�tt:');
Writeln;
For bg := 0 to 7 do
    begin
    For fg := 0 to 15 do
       begin
       Szin(bg,fg);
       Write(' AA ');
       Szin(bg,fg+128);
       Write(' BB ');
       end;
    Writeln;
    end;
Readkey;
Szin(0,7);
Clrscr;
end.
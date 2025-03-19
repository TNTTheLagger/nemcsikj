{ Nyolc kiralyno }
{ Demonstracios cel: Back-track algoritmus bemutatasa }

program nyolc_kiralyno;
var tabla: array [1..8] of integer;    { a kesz elrendezes }
    sor: array [1..8] of boolean;      { sorok }
    f_atlo: array [-7..7] of boolean;  { foatloval parh. (s-o)}
    m_atlo: array [2..16] of boolean;  { mellekatloval parh. (s+o)}
    probalkozas: integer;              { kiiraskhoz }

procedure inic;                        { kezedeti ertekek }
var i: integer;
begin
    for i:= 1 to 8 do begin
      sor[i]:= true;
      tabla[i]:= 0;
    end;
    for i:= -7 to 7 do f_atlo[i]:= true;
    for i:= 2 to 16 do m_atlo[i]:= true;
    probalkozas:= 0;
end;

procedure kiir(s, o: integer);         { kiiras }
var i, j:integer;
begin
    probalkozas:= probalkozas + 1;
    if s = 0 then writeln('VEGE:') else writeln(probalkozas:3,'.');
    for i:=1 to 8 do begin
      write(9-i:5,'|');
      for j:= 1 to 8 do
        if (i = s) and (j = o) then write('+|') else
        if tabla[i] = j then write('*|') else write (' |');
      writeln;
    end;
    writeln('      a b c d e f g h'); writeln;
end;

function proba(o: integer): boolean;    { o oszlopba probalja elh.}
var s: integer;			        { sor index }
    siker: boolean;		        { ha mind a 8 fent van }
begin
    s:= 0;
    siker:= false;
    repeat
      s:= s+1;                         	{ ujabb sort probal }
      kiir(s,o);
      if sor[s] and f_atlo[s-o] and m_atlo[s+o] then begin
        sor[s]:= false;                	{ lehet, ezert lefoglal }
        f_atlo[s-o]:= false;		{ a poziciot }
        m_atlo[s+o]:= false;
        tabla[s]:= o;			{ pozicio adminisztracio }
        if o < 8 then
          siker:= proba(o+1)           	{ ujabb oszlopot probal }
        else
          siker:= true;                	{ sikerult mind a 8 szlop }
        if not siker then begin
          sor[s]:= true;               	{ le kell szedni }
          f_atlo[s-o]:= true;          	{ es felszabaditani }
          m_atlo[s+o]:= true;
          tabla[s]:= 0;			{ csak a kiiras miatt }
        end;
      end;
    until siker or (s = 8);            	{ fo ciklus }
    proba:= siker;                     	{ eredmeny a hivo fele }
end;

begin
    inic;			       	{ kezdeti ertekek }
    if not proba(1) then writeln('Nem megy') else kiir(0,0);
end.

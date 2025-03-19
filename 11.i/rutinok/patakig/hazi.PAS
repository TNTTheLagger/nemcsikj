 Program hazi;

uses Crt;

var y,m,d,_y,_m,_d:Word;
    n:boolean;

procedure Hasonlit(y1, m1, d1, y2, m2, d2 :Word; var elobb:Boolean);
begin
If y1>y2 then elobb:=false else
  If y1<y2 then elobb:=true else
    If m1>m2 then elobb:=true else
      If m1<m2 then elobb:=true else
         If d1>d2 then elobb:=false else elobb:=true;
end;

begin
Clrscr;
Writeln('Adjon meg kÇt d†tumot:');
Writeln;
Writeln('Az elsã:');
Write('êv: (0-65535)  '); Readln(y);
Write('H¢nap (1-12):  '); Readln(m);
Write('Nap (1-31):    '); Readln(d);
Writeln;
Writeln('A m†sodik:');
Write('êv: (0-65535)  '); Readln(_y);
Write('H¢nap (1-12):  '); Readln(_m);
Write('Nap (1-31):    '); Readln(_d);
Writeln;
Hasonlit(y,m,d,_y,_m,_d,n);
If n then Writeln('Az elsã d†tum kor†bban van, mint a m†sodik.') else Writeln('A m†sodik d†tum kor†bban van, mint az elsã.');
ReadKey;
Clrscr;
end.

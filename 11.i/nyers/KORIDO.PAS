program korido;
uses crt;
var ido:array [1..10] of real;
    a,b,atlag,elozo:real;
    i:byte;
begin
 clrscr;
 elozo:=0;
 for i:=1 to 10 do
  begin
   a:=0;
   repeat
    writeln('Add meg az ', i, '. k”r idej‚t: '); readln(a);
   until
    elozo<a;
   ido[i]:=a-elozo;
   writeln(ido[i]:4:3);
   elozo:=a;
  end;
 for i:=1 to 10 do
  b:=b+ido[i];
 atlag:=b/10;
 writeln('Az id‹k  tlaga: ', atlag:4:3);
 readkey;
end.
program sip;
uses crt;
var herz, s : word;

procedure  hang(hz,hossz:Word);
begin
if (hz>1720) or (hz<100) then hz:=440;
if (hossz>200) or (hossz<10) then hossz:=100;
sound(hz);
delay(hossz);
nosound;
end;

begin
clrscr;
write('Adja meg a hibazenet frekvenci j t: ');
readln (herz);
write('Adja meg a hibazenet hossz t: ');
readln (s);
hang (herz,s);
readkey;
end.
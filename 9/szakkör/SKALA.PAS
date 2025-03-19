program skala;
uses Crt;
const k=1.05946;
      h:real=261.623;
var i:integer;
begin
 ClrScr;
 for i:=0 to 12 do
   begin
     Sound(Round(h));
     Delay(200);
     WriteLn(h:6:3,Round(h):6);
     h:=h*k;
   end;
 NoSound;
 ReadLn;
end.

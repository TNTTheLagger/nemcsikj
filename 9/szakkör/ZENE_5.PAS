program zene_5;
uses Crt;
var  q:char;
    hm:integer;
begin
 ClrScr;
 WriteLn('zsxdcvgbhnjm,');
 repeat
   q:=ReadKey;
   case q of
    'z': hm:=262;
    's': hm:=277;
    'x': hm:=294;

   end;
   Sound(hm);
 until Ord(q)=27;
 NoSound;
end.

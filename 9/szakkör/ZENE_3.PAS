program zene_3;
uses Crt;
var hm,t:integer;
     dal:text;
begin
 ClrScr;
 Assign(dal,'BOCI.TXT');
 Reset(dal);
 repeat
   ReadLn(dal,hm,t);
   WriteLn(hm:6,t:6);
   Sound(hm); Delay(t);
   NoSound;Delay(20);
 until Eof(dal);
 NoSound;
 Close(dal);
end.

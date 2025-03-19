program zene_6;                           (*Zongora*)
uses CRT,DOS;
var q,qt:char;
       f:text;
       t:word;
function Ts:word;                           (*Id“ beolvas sa - m sodperc*)
var h,min,s,hs:word;
begin
    GetTime(h,min,s,hs);
    ts:=(6000*min+100*s+hs)*10;
end;
procedure Bill(var b:char);             (*Ezeket a karaktereket fogadja*)
const  w : set of char=['z','s','x','d','c','v','g','b','h','n','j','m',',',#27];
begin
    repeat
        b:=ReadKey;
    until b in w;
end;
function Hz(b:char):word;               (*A karakterekhez rendelt hangok*)
 type hangok = array [1..13] of word;
 const  z:string = 'zsxdcvgbhnjm,';
   a:hangok = (262,277,294,311,330,349,370,392,415,440,466,494,523);
var i:byte;
begin
    i:=Pos(b,z);
    hz:=a[i];
end;
                                      (*F“program*)
begin
    ClrScr;
    WriteLn('zsxdcvgbhnjm,');
    Assign(f,'DALLAM.TXT');
    Rewrite(f);
    t:=0;
    repeat
         Bill(q);t:=Ts-t;
         WriteLn(f,Hz(qt):4,t:8);
         NoSound;Delay(20);
         t:=Ts;qt:=q;
         Sound(Hz(q));
     until q=#27;
     Close(f);
     NoSound;
end.

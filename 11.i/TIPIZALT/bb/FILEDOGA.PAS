Program Alap;
Uses crt;
var j,a:integer;
    c,s:text;
    t:array[1..7] of integer;


type asd=record
     mezo1:integer;
     mezo2:integer;
     mezo3:integer;
     mezo4:integer;
     mezo5:integer;
     mezo6:integer;
     mezo7:integer;
     mezo8:string[10];

end;
var b:asd;
Begin
ClrScr;



assign(c,'g:\pascal\ecegarf.txt');
reset(c);


while not eof(c) do
begin

      j:=0;
      readln(c,b.mezo1,b.mezo2,b.mezo3,b.mezo4,b.mezo5,b.mezo6,b.mezo7,b.mezo8);
      writeln(b.mezo1,' ',b.mezo2);

      t[1]:=b.mezo1;
      t[2]:=b.mezo2;
      t[3]:=b.mezo3;
      t[4]:=b.mezo4;
      t[5]:=b.mezo5;
      t[6]:=b.mezo6;
      t[7]:=b.mezo7;

      for a:=1 to 6 do

      begin

      j:=(j+abs(t[a+1]-t[a]));


      end;
      writeln('stabilit s”sszeg: ',j)

end;
close(c);
readkey;
End.
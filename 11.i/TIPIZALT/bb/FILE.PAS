Program Alap;
Uses crt;
var j,a:integer;
    t,s:text;
    total:string[30];

type asd=record
     mezo1:integer;
     mezo2:integer;
     mezo3:integer;
     mezo4:integer;
     mezo5:integer;
     mezo6:string[30];
     mezo7:string[30];
end;
var b:asd;
Begin
ClrScr;



assign(t,'g:\pascal\meccs.txt');
reset(t);
readln(t,a);
writeln(a);
while not eof(t) do
      begin
      readln(t,b.mezo1,b.mezo2,b.mezo3,b.mezo4,b.mezo5,total);
      j:=0;
      repeat
      j:=j+1;
          if total[j]<>' ' then b.mezo6:=b.mezo6+total[j]
             else b.mezo7:=copy(total,j+1,length(total));



      until total[j]=' ';
      writeln(b.mezo6,b.mezo7);


      end;

close(t);
readkey;
End.
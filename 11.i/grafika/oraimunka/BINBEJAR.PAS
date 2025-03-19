program binbejaras;
uses crt;
const n=9;
var a:array[1..n] of byte;
    i:byte;

procedure binbejar(e,u,s:integer);
var k:byte;
    begin
      if e<=u then begin
         k:=(e+u) div 2;
         gotoxy(2*k,2*s);
         write(' ', a[k]);
         binbejar(e,k-1,s+1);
         binbejar(k+1,u,s+1);
      end;
     end;

begin
     clrscr;
     for i:=1 to n do begin
         a[i]:=i;
         write(' ',a[i]);
     end;
     writeln;
     binbejar(1,n,3);
     readln;
end.



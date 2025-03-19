program terulet;
uses crt;
var a,b,r:real;
    s:string;
    Tt,Tk:real;


function ter(c,d,f:real):string;
begin


    Tt:=c*d;
    Tk:=f*f*3.14;
  
   if Tt>Tk
      then ter:='T'
        else if Tt<Tk
          then ter:='K'
            else ter:= 'egyenl‹';
end;

begin
ClrScr;
writeln('Add meg a t‚glalap a oldal t : ');readln(a);
writeln('Add meg a t‚glalap b oldal t : ');readln(b);
writeln('Add meg a k”r sugar t : ');readln(r);

writeln(ter(a,b,r));

readkey;
end.
    
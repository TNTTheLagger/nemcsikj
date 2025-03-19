program asd;
uses crt;

var a,b,c:integer;



procedure meik;
begin
clrscr;
gotoxy(30,1);
writeln('K”r vagy t‚glalap?');
writeln;
writeln;
writeln('Add meg a t‚glalap els‹ oldal t: ');
readln(a);
writeln('Add meg a t‚glalap m sodik oldal t: ');
readln(b);
writeln('Add meg a k”r sugar t: ');
readln(c);
begin
if a*b = c*c*3.14 then writeln ('A k”r ‚s a t‚glalap terlete egyenl‹. Ez esetben: ',c*c*3.14:6:2)
                  else
                  if a*b < c*c*3.14 then writeln ('A k”r terlete a nagyobb : ',c*c*3.14:6:2)
                                    else writeln ('A t‚glalap terlete a nagyobb : ',a*b);
end;
end;
begin
meik;
readkey;
end.


end;
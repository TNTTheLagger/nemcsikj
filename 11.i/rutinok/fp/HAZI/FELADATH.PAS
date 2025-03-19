Program hazii2;

uses crt;

var s:string;
    a,b:byte;
Begin
   Readln(s);
   Readln(a);
    if a>length(s) then Writeln(b):=#;
    else
    Writeln(b:=length(s)-a+1);
  readkey;
end
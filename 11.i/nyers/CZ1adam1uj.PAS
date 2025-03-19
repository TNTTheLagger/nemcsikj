program CZ1;
uses crt;
var n, i, a : integer;
 BEGIN
  clrscr;
  write('K‚rem adja meg a sz mot: ');
  readln(n);
  a:=1;
  for i := 1 to n do
  a:=a*i;
  write('Az eredm‚ny: ', a);
  readkey;
 END.
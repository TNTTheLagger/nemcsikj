program tipusfajl;
uses crt;
type rektip=record
     autonev:string[20];
     autokm:word;
end;
var i:integer;
var egyed:rektip;
var f:file of rektip;
begin
clrscr;
assign(f,'auto.dat');
rewrite(f);
for i:=1 to 3 do begin
 writeln('Add meg az auto nevet: ');
 readln(egyed.autonev);
 writeln('Add meg a max Km-et: ');
 readln(egyed.autokm);
 write(f,egyed);
end;
{listázás}
close(f);
{$I-}
  reset(f);
{$I+}
if IOresult<>0 then Halt;
While not eof(f) do
begin
  read(f,egyed);
  Writeln('Az auto neve: ',egyed.autonev,'Max km: ',egyed.autokm);
end;
Writeln('elérte a fájl végét');

close(f);
readkey;
end.
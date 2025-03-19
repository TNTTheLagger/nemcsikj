procedure CIMBE(var y:cim);
begin
   Write('V ros:');ReadLn(y.varos);
   Write('Utca:');ReadLn(y.utca);
   Write('Telefon:');ReadLn(y.telefon);
end;

procedure CIMKI(var y:cim);
begin
  with y do begin
   WriteLn('V ros:',varos);
   WriteLn('Utca:',utca);
   WriteLn('Telefon:',telefon);
  end;
end;
procedure ADATBE(var x:resztvevo);
var q:char;
begin
  repeat
    with x do
      begin
        WriteLn('Nem(F/L):');q:=Upcase(ReadKey);
        if q='F' then
             begin
               nev.nem:=fiu;
               Write('N‚v:');ReadLn(nev.nev1);
             end
           else
            begin
              nev.nem:=lany;
              Write('N‚v:');ReadLn(nev.nev2);
              Write('L nykori n‚v:');ReadLn(nev.nev3);
            end;
         WriteLn('Lak s');CIMBE(cim_lakas);
         WriteLn('Munkahely');CIMBE(cim_munkahely);
         repeat
           Write('V‚gzett:');
          {$I-}ReadLn(vegzett);{$I+}
         until IOResult=0;
         WriteLn('Jelen van?(I/N):');
         repeat
           q:=Upcase(ReadKey);
         until q in ['I','N'];
        jelen:=q='I';
      end;
    Write('Helyes?(I/N)');
    q:=Upcase(ReadKey);
  until q='I';WriteLn;
end;

procedure ADATKI(x:resztvevo);
var q:char;
begin
  WriteLn;
  with x do
     with nev do
       begin
         if nem=fiu then
                WriteLn('N‚v:',nev1)
            else
              begin
                WriteLn('N‚v:',nev2);
                WriteLn('L nykori n‚v:',nev3);
              end;
         CimKi(cim_lakas);
         CimKi(cim_munkahely);
       end;
  WriteLn('V‚gzett:',x.vegzett);
  q:=ReadKey;
end;

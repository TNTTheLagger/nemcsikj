procedure MEGNYIT;
begin
  Assign(f,'ADATOK.TXT');
  {$I-} Reset(f); {$I+}
  if IOResult<>0 then Rewrite(f);
end;
procedure LEZAR;
begin
  Close(f);
end;


procedure UJ_ADAT;
var q:char;
begin
  WriteLn('—j adat');
  repeat
    ADATBE(a);
    MEGNYIT;
    Seek(f,FileSize(f));
    Write(f,a);
    LEZAR;
    Write('V‚ge(I/N)');
    q:=Upcase(ReadKey);
  until q='I';WriteLn;
end;

procedure KERES(nev:kar20;var ind:integer;van:boolean);
begin
  ind:=0;van:=false;
  MEGNYIT;
  Seek(f,0);
  while (FilePos(f)<FileSize(f)) and not van do
    begin
      Read(f,a);WriteLn(FilePos(f));
      case a.nev.nem of
          fiu:if a.nev.nev1=nev then van:=true;
         lany:if a.nev.nev3=nev then van:=true;
      end;
    end;
  if van then ind:=FilePos(f)-1;
  LEZAR;
end;
procedure MODOSITAS;
var kit:string[20];
    hely:integer;
    talalt:boolean;
begin
  WriteLn('M¢dos¡t s');
  Write('N‚v:');ReadLn(kit);
  KERES(kit,hely,talalt);
  if talalt then
         begin
           MEGNYIT;
           Seek(f,hely);
           Read(f,a);
           ADATKI(a);
           Seek(f,hely);
           ADATBE(a);
           Write(f,a);
           LEZAR;
         end
     else
      begin
        WriteLn('Nem tal lom');
        ReadLn;
      end;
end;

procedure TORLES(mit:boolean);

var kit:string[20];
    hely:integer;
    talalt:boolean;
    q:char;
begin
  case mit of
    true:WriteLn('Jelenl‚t');
    false:WriteLn('T”rl‚s');
  end;
  Write('N‚v:');ReadLn(kit);
  KERES(kit,hely,talalt);
      if talalt then
         begin
           MEGNYIT;
           Seek(f,hely);
           Read(f,a);
           ADATKI(a);
           Seek(f,hely);
           if mit then
             begin
               Read(f,a);
               WriteLn('Jelen van?(I/N):');
               repeat
                 q:=Upcase(ReadKey);
               until q in ['I','N'];
               a.jelen:=q='I';WriteLn(q);
               Write(f,a);
             end
           else
             while (FileSize(f)>0) and (FilePos(f)<FileSize(f)-1) do
               begin
                 Seek(f,FilePos(f)+1);
                 Read(f,a);
                 Seek(f,FilePos(f)-2);
                 Write(f,a);
               end;
           Seek(f,FilePos(f));
           Truncate(f);
         LEZAR;
        end
     else
      begin
        WriteLn('Nem tal lom');
        ReadLn;
      end;
end;

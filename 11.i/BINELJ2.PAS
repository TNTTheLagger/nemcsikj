program binariskereses;
uses crt;

type
    elemtip=byte;
    tombtip=array[1..10] of elemtip;

var i,j,cs,x:word;
    a:tombtip;
    hely:byte;

procedure feltolt;
begin
randomize;
  for i:=1 to 10 do begin
      a[i]:=random(90)+10;
      write(a[i],' ');
  end;
end;

procedure rendez;
begin
for j:=1 to 9 do
    for i:=j+1 to 10 do
        if a[i]<a[j] then begin
           cs:=a[j]; a[j]:=a[i]; a[i]:=cs;
        end;
end;

procedure kiir;
begin
writeln('A sorozat rendezve: '); writeln;
  for i:=1 to 10 do
    write(a[i],',');
  writeln; writeln;
end;

function binker(var a:tombtip; adat:elemtip; var hely:byte):boolean;
  var e,k,u:byte;
         begin
           e:=1;
           u:=10;
           k:=(e+u) div 2;
           while (e<=u) and (a[k]<>adat) do
             begin
               if adat<a[k] then u:=k-1;
               if adat>a[k] then e:=k+1;
               k:=(e+u) div 2;
             end;
           hely:=k;
           binker:=e<=u;

 end;


BEGIN
clrscr;
feltolt; writeln;
writeln;
rendez;
kiir;
write('K‚rem a sz mot: '); readln(x);
writeln;

if (binker(a,x,hely)) then begin
    write('Benne van: a ',hely,'. helyen');
 end
 else
 write('Nincs benne.');
 readln;
END.
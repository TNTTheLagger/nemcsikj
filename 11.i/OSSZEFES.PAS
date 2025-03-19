program osszefut;
uses crt;
const n=10;
      m=20;
type
    elemtip=byte;
    tombtip1=array[1..n] of elemtip;
    tombtip2=array[1..m] of elemtip;
    tombtip3=array[1..n+m] of elemtip;
var i,j,cs,k:word;
    a:tombtip1;
    b:tombtip2;
    c:tombtip3;

procedure feltolta;
begin
randomize;
  for i:=1 to n do begin
      a[i]:=random(90)+10;
      write(a[i],' ');
  end;
end;

procedure feltoltb;
begin
randomize;
  for j:=1 to m do begin
      b[j]:=random(80)+10;
      write(b[j],' ');
  end;
end;

procedure rendeza;
begin
for j:=1 to 9 do
    for i:=j+1 to 10 do
        if a[i]<a[j] then begin
           cs:=a[j]; a[j]:=a[i]; a[i]:=cs;
        end;
end;

procedure kiira;
begin
writeln('Az "a" sorozat rendezve: '); writeln;
  for i:=1 to n do
    write(a[i],',');
  writeln; writeln;
end;

procedure rendezb;
begin
for j:=1 to 19 do
    for i:=j+1 to 20 do
        if b[i]<b[j] then begin
           cs:=b[j]; b[j]:=b[i]; b[i]:=cs;
        end;
end;

procedure kiirb;
begin
writeln('Az "b" sorozat rendezve: '); writeln;
  for j:=1 to m do
    write(b[j],',');
  writeln; writeln;
end;

procedure osszefuttatas (a:tombtip1;b:tombtip2;var c:tombtip3);
begin
i:=1;
j:=1;
k:=0;
while ((i<=n) and (j<=m)) do begin
 k:=k+1;
  if (a[i]<b[j]) then begin c[k]:=a[i]; i:=i+1;
  end else
  if (a[i]>b[j]) then begin c[k]:=b[j]; j:=j+1;
  end else
  if (A[i]=B[j]) then begin c[k]:=a[i]; i:=i+1; j:=j+1;
  end;
end;
 while (i<=n) do begin
  k:=k+1;
  c[k]:=a[i]; i:=i+1;
 end;
 while (j<=m) do begin
  k:=k+1;
  c[k]:=b[j]; j:=j+1;
 end;
end;

procedure kiirc;
begin
writeln('Az osszefuttatott "c" sorozat elemei: '); writeln;
  for k:=1 to n+m do
    write(c[k],',');
  writeln; writeln;
end;

BEGIN
clrscr;
feltolta; writeln;
feltoltb;
writeln;
rendeza;
kiira;
writeln;
rendezb;
kiirb;
osszefuttatas(a,b,c);
kiirc;
readln;
END.
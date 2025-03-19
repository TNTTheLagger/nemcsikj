program QuickS;

uses CRT,dos;

const N = 16000;

var
  A,C: array[1..N] of Word;
  B: Longint;
  h,h2,m,m2,s,s2,ss,ss2:word;


function jo:boolean;
var f:boolean;
    i:word;
begin
f:=true;
for i:=1 to N-1 do
    if a[i]<a[i+1] then f:=false;
jo:=f;
end;

procedure rendez;
var i,seged:word;
begin
while not jo do
for i:=1 to n-1 do
    if a[i]<a[i+1]then
    begin
         seged:=a[i+1];
         a[i+1]:=a[i];
         a[i]:=seged;
    end;
end;

procedure QuickSort(Also,Felso:Longint);
var
  I, J, Y {csere}, Pivot: Longint;
begin
  I := Also; J := Felso;
  Pivot := A[(Also + Felso) div 2];
  repeat
    while A[I] < Pivot do Inc(I);
    while Pivot < A[J] do Dec(J);
    if I <= J then
    begin
      Y := A[I];
      A[I] := A[J];
      A[J] := Y;
      Inc(I); Dec(J);
    end;
  until I > J;
  if Also < J then QuickSort(Also, J);
  if I < Felso then QuickSort(I, Felso);
end;

begin
  ClrScr;
  Randomize;
  for B := 1 to N do
  begin
       c[B] := Random(65535);
       a[B]:=c[b];
  end;
  WriteLn(n,' elem rendez‚se');
  Write('Kezd‚shez nyomja meg az ENTER-t!  --> QuickSort');
  ReadLn;
  GotoXY(1,4);
  gettime(h,m,s,ss);
     writeln(h,':',m,' ',s,' ,',ss);
     Write('Sz mol...');
     QuickSort(1, N);
     Writeln('k‚sz');
  gettime(h2,m2,s2,ss2);
  writeln(h2,':',m2,' ',s2,' ,',ss2);

  for B := 1 to N do a[B]:=c[b];


  Write('Kezd‚shez nyomja meg az ENTER-t!  --> BuboR‚k');
  ReadLn;
  GotoXY(1,10);
  gettime(h,m,s,ss);
    writeln(h,':',m,' ',s,' ,',ss);
    Write('Sz mol...');
    rendez;
    Writeln('k‚sz');
  gettime(h2,m2,s2,ss2);
  writeln(h2,':',m2,' ',s2,' ,',ss2);
  ReadKey;
end.
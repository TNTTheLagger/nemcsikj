program titkositas;
uses crt;
var t: array[1..100] of string;
    a,betu:string;
    i,j: integer;

begin
clrscr;
betu:='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
write('Add meg a szoveget, amit titkositani szeretnel!: ');
readln(a);
writeln;
for i:=1 to 26 do
    t[i]:=betu[i];
for i:=1 to length(a) do begin
    for j:=1 to 24 do
        if t[j]=a[i] then
           write(t[j+2]);
        case a[i] of
        'Z': write('B');
        'Y': write('A');
        end;
end;
readln;
end.
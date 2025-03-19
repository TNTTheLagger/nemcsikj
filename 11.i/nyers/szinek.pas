program test;
   uses crt;

   var text,back:byte;
	  
procedure szin (var text,back:byte);
var bit:byte;
begin
bit:=0;
if text=back then inc(bit) else
if text>15 then inc(bit) else
if back>7 then inc(bit);
if bit=0 then else begin 
text:=15; back:=0; 
writeln('Az eredeti szinek nem modosultak, mert hibasak voltak a megadott parameterek!');
end;
end;


begin
clrscr;
   text:=15;
   back:=0;
   writeln('Add meg a szovegszint: (0-15)');
   readln(text);
   writeln('Add meg a szoveg hatterenek a szinet: (0-7)');
   readln(back);
   szin(text,back);
   TextColor(text);
   TextBackGround(back);
   writeln('Peldaszoveg');
end.

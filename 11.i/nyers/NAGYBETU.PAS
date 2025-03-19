 program nagybetu;
 uses crt;
 var s:string;
 var t:array[a..z] of char;
 Function nagybetukszama(x:string):integer;
 var i,h:integer;
 begin
      h:=0;
      for i:=1 to length(x) do
       if x[i]= ' ' then h:=h+1;
       nagybetukszama:=h;
       end;

 Begin
   write('add meg a szoveget');
   Readln(s);
   Writeln(' A sz”vegben' , nagybetukszama(s), ' nagybetu van. ');

Readkey;
End.
program analogora;
uses crt,graph;
const
 mszin=9;mvastg=2;mhosz=130;
 sszin=4;svastg=1;shosz=150;
 hszin=2;hvastg=4;hhosz=80;
var
 ora,perc,kozx,kozy,i,j:integer;
 k,l:word;
 v:boolean;
{---------------------------------------------------------------------}
procedure orarajz;
begin
 kozx:=trunc(getmaxx/2);
 kozy:=trunc(getmaxy/2);
 setlinestyle(0,0,3);
 i:=30;
 while i<=360 do begin
  j:=i-30;
  setfillstyle(1,7);setcolor(4);
  pieslice(kozx,kozy,j,i,180);
  setlinestyle(0,0,3);
  setcolor(0);setfillstyle(1,0);
  pieslice(kozx,kozy,j,i,155);
  i:=i+30;
 end;
 setcolor(4);
 fillellipse(kozx,kozy,160,160);
end;
{---------------------------------------------------------------------}
procedure mutatorajz;
var i:integer;
{----------------------------------}
procedure mutatok(szin:word;sug,vastg:byte;var egys:integer;v,kesl:boolean);
begin
 setfillstyle(1,szin);
 if egys=0 then
  egys:=360;
 setcolor(szin);pieslice(kozx,kozy,egys-vastg,egys,sug);
 if kesl then
  delay(760);
 if v then begin
  setfillstyle(1,0);
  setcolor(0);pieslice(kozx,kozy,egys-vastg,egys,sug);
 end;
end;
{----------------------------------}
begin
 i:=96;
 setlinestyle(0,0,1);
 perc:=perc+6;
 mutatok(mszin,mhosz,mvastg,perc,false,false);
 mutatok(hszin,hhosz,hvastg,ora,false,false);
 repeat
  i:=i-6;
  if i=90 then begin
   mutatok(mszin,mhosz,mvastg,perc,true,false);
   perc:=perc-6;mutatok(mszin,mhosz,mvastg,perc,false,false);
   v:=true;
  end;
  if (perc=90) and (v) then begin
    mutatok(hszin,hhosz,hvastg,ora,true,false);
    ora:=ora-30;mutatok(hszin,hhosz,hvastg,ora,false,false);
    v:=false;
  end;
  mutatok(sszin,shosz,svastg,i,true,true);
  if (i=ora) or ((perc+6=ora) and v) then begin
   mutatok(hszin,hhosz,hvastg,ora,false,false);v:=false;
  end;
  if i=perc then
   mutatok(mszin,mhosz,mvastg,perc,false,false);
 until keypressed;
end;
{---------------------------------------------------------------------}
BEGIN
 clrscr;
 writeln('K‚rem adja meg az id‹t!');
 repeat
  write('¢ra: ');readln(ora);
 until ora in [1..24];
 if ora>12 then
  ora:=ora-12;
 ora:=90-(30*ora);
 if ora<0 then
  ora:=360+ora;
 repeat
  write('perc: ');readln(perc);
 until perc in [1..59];
 perc:=90-(6*perc);
 if perc<0 then
  perc:=360+perc;
 detectgraph(i,j);
 initgraph(i,j,'c:tp\bgi');
 if graphresult=0 then begin
  orarajz;
  mutatorajz;
  closegraph;
 end else begin
  write('A graph-unit inicializ l sa sikertelen volt!');
  repeat until keypressed;
 end;
END.

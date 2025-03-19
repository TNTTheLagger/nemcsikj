uses crt;

type p = record
          x,y:byte;
         end;

var kukac : array[1..255] of p;
    hossz : byte;
    pos   : p;
    irany : byte;
    pont  : word;
    felso,also,jobb,bal:byte; {palya hatarai}
    PlayerName : string;
    MaxPont : byte;
    xpos : p;

procedure Menu; forward;
procedure GameOver; forward;
procedure UjJatek; forward;

Procedure UjXPos;
Begin
  xpos.x:=random(jobb-bal-1)+bal+1;
  xpos.y:=random(also-felso-1)+felso+1;
  textcolor(9);
  GotoXY(xpos.x,xpos.y);
  Write('X');
End;

procedure MakeLevel;
var x,y : integer;
    i   : byte;
begin
  for i:=bal+1 to bal+hossz do
   begin
   kukac[i-bal].x:=i;
   kukac[i-bal].y:=10;
   end;
end;

procedure Init;
Begin
  ClrScr;
  bal:=2;
  jobb:=79;
  felso:=4;
  also:=23;
  MakeLevel;
  Pont:=0;
  pos.x:=10;
  pos.y:=10;
  irany:=3;
  hossz:=5;
End;

function mh:boolean; {magaba harapott-e}
var i:byte;
    y:boolean;
begin
  Y:=false;
  for i:=3 to hossz do
    if (kukac[1].x=kukac[i].x) and (kukac[1].y=kukac[i].y) then y:=true;
  mh:=y;
end;

procedure Go;
var i:byte;
Begin
  case irany of
   0:dec(pos.y);
   1:inc(pos.y);
   2:inc(pos.x);
   3:dec(pos.x);
  end;
  if (pos.x<bal+1) then pos.x:=jobb-1;
  if (pos.x>jobb-1) then pos.x:=bal+1;
  if (pos.y<felso+1) then pos.y:=also-1;
  if (pos.y>also-1) then pos.y:=felso+1;
  kukac[1]:=pos;

  for i:=hossz downto 2 do
     kukac[i]:=kukac[i-1];
end;

Procedure drawp(x,y,c:byte;ch:char);
begin
  GotoXY(x,y);
  TextColor(c);
  Write(ch);
end;

procedure Keret;
var x,y:integer;
Begin
  TextColor(13);
  for X:=bal to jobb do
   begin
     GotoXY(x,felso); Write('-');
     GotoXY(x,also); Write('-');
   end;
  for y:=felso to also do
  begin
   GotoXY(bal,y); Write('|');
   GotoXY(jobb,y);Write('|');
  end;
End;

Procedure PontKiir;
Begin
  TextColor(10);
  GotoXY(70,1);
  Write(pont,' : pont');
  GotoXY(1,1);
  Write(PlayerName);
End;

procedure Beep(hz:word);
Begin
  Sound(hz);
  Delay(6000);
  nosound;
End;

Procedure Main;
var ch : char;
    i  : byte;
Begin
  PontKiir;
  UjXPos;
  repeat
     Delay(20000);

    if keypressed then
     begin
      ch:=readkey;
      case ch of
       #0:begin
          ch:=readkey;
          case ch of
             #72:begin if irany <> 1 then irany:=0;end;
             #80:begin if irany <> 0 then irany:=1;end;
             #77:begin if irany <> 3 then irany:=2;end;
             #75:begin if irany <> 2 then irany:=3;end;
          end;
        end;
     end;
   end;

   go;
     for i:=1 to hossz-1 do
      if i=2 then
      drawp(kukac[2].x,kukac[2].y,10,chr(1)) else
      drawp(kukac[i].x,kukac[i].y,15,'O');

     drawp(kukac[hossz].x,kukac[hossz].y,0,' ');

     if mh then GameOver;

     if (pos.x=xpos.x) and (pos.y=xpos.y) then
       Begin
         drawp(xpos.x,xpos.y,0,' ');
         UjXPos;
         inc(hossz);
         inc(pont);
         PontKiir;
         Beep(440);
       End;
   until ch=#27;
   GameOver;
End;

Procedure GameOver;
Begin
  GotoXY(30,10);
  TextColor(14);
  Write('G A M E  O V E R');
  GotoxY(35,11);
  Write('pont : ',pont);

  Beep(200);
  Readkey;
  Menu;
End;

Procedure UjJatek;
Begin
  ClrScr;
  Write('nev : '); readln(PlayerName);
  Init;
  Keret;
  Beep(700);
  Main;
End;

procedure Menu;
Var Ch:char;
Begin
  randomize;
  ClrScr;
  TextColor(7);
  Writeln('1.   Uj jatek');
  Writeln('Esc. Kilepes');
  repeat
    ch:=readkey;
    if ch='1' then UjJatek;
  until ch=#27;
  halt;
End;

Begin
  Menu;
End.
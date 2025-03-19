@echo off
Set TK=\nt2
Set TD=\nt2\3
Set F1=nagyfal
Set Te1=1 2 3 4 5 6 7 8 9
Set F2=varos
Set Te2=1 2 3 4 5 6 7 8
Set F3=lepes
Set Te3=1 2 3 4 5 6 7 8 9 a
Set F4=gepek
Set Te4=1 2 3 4 5 6 7 8 9 a
Set F5=fazekas
Set Te5=1 2 3 4 5 6 7 8 9 a
:T1
if exist %F1%.exe goto EXE1
if exist %F1%.class goto EXE1
if exist %F1%.jar goto EXE1
if exist %F1%.py goto EXE1
echo Nincs %F1% exe
GoTo T2
:EXE1
Echo %F1% feladat futtat·sa ....
for %%x In (%Te1%) Do Call %TK%\RUN %TD% %F1% %%x
Echo %F1% feladat futtat·sa befejezıdˆtt.

:T2
if exist %F2%.exe goto EXE2
if exist %F2%.class goto EXE2
if exist %F2%.jar goto EXE2
if exist %F2%.py goto EXE2
echo Nincs %F2% exe
GoTo T3
:EXE2
Echo %F2% feladat futtat·sa ....
for %%x In (%Te2%) Do Call %TK%\RUN %TD% %F2% %%x
Echo %F2% feladat futtat·sa befejezıdˆtt.

:T3
if exist %F3%.exe goto EXE3
if exist %F3%.class goto EXE3
if exist %F3%.jar goto EXE3
if exist %F3%.py goto EXE3
echo Nincs %F3% exe
GoTo T4
:EXE3
Echo %F3% feladat futtat·sa ....
for %%x In (%Te3%) Do Call %TK%\RUN %TD% %F3% %%x
Echo %F3% feladat futtat·sa befejezıdˆtt.

:T4
if exist %F4%.exe goto EXE4
if exist %F4%.class goto EXE4
if exist %F4%.jar goto EXE4
if exist %F4%.py goto EXE4
echo Nincs %F4% exe
GoTo T5
:EXE4
Echo %F4% feladat futtat·sa ....
for %%x In (%Te4%) Do Call %TK%\RUN %TD% %F4% %%x
Echo %F4% feladat futtat·sa befejezıdˆtt.

:T5
if exist %F5%.exe goto EXE5
if exist %F5%.class goto EXE5
if exist %F5%.jar goto EXE5
if exist %F5%.py goto EXE5
echo Nincs %F5% exe
GoTo TV
:EXE5
Echo %F5% feladat futtat·sa ....
for %%x In (%Te5%) Do Call %TK%\RUN %TD% %F5% %%x
Echo %F5% feladat futtat·sa befejezıdˆtt.

:TV
echo FUTTATµS VêGETêRT

echo A %F1% feladat ÈrtÈkelÈse ....
%TD%\%F1% %TD% %F1%

echo A %F2% feladat ÈrtÈkelÈse ....
%TD%\%F2% %TD% %F2%

echo A %F3% feladat ÈrtÈkelÈse ....
%TD%\%F3% %TD% %F3%

echo A %F4% feladat ÈrtÈkelÈse ....
%TD%\%F4% %TD% %F4%

echo A %F5% feladat ÈrtÈkelÈse ....
%TD%\%F5% %TD% %F5%

Rem CLS
%TK%\osszes %TD%

echo AZ …RT…KEL…S BEFEJEZ’D÷TT!
echo ***********************************************
echo A teljes ÈrtÈkelÈs az EREDMENY.TXT ·llom·nyban.
echo ***********************************************

:VEGE

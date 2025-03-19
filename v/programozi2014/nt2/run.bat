rem RUN %1=TestDir %2=Feladatnev %3=teszteset
Set TK=\NT2
If Exist %2.st%3 GoTo KI
If Exist %2.ki Del %2.ki >Nul
If Exist %2.ki%3 Del %2.ki%3 >Nul

If Exist %2.exe GoTo EXE
If Exist %2.class GoTo JAVA
If Exist %2.jar GoTo JAR
If Exist %2.py GoTo PY
echo Nincs exe
GoTo KI

:EXE
Copy %1\%2.be%3 %2.be >Nul
rem Cls
%TK%\fut.exe %2 %3
%TK%\stime.exe %2.st%3
%2.exe > %2.so%3
%TK%\ftime.exe %2.st%3
Copy %2.ki %2.ki%3 >Nul
GoTo KI

:JAVA
Copy %1\%2.be%3 %2.be >Nul
rem Cls
%TK%\fut.exe %2 %3
%TK%\stime.exe %2.st%3
java %2 > %2.so%3
%TK%\ftime.exe %2.st%3
Copy %2.ki %2.ki%3 >Nul
GoTo KI

:JAR
Copy %1\%2.be%3 %2.be >Nul
rem Cls
%TK%\fut.exe %2 %3
%TK%\stime.exe %2.st%3
java -jar %2.jar > %2.so%3
%TK%\ftime.exe %2.st%3
Copy %2.ki %2.ki%3 >Nul
GoTo KI

:PY
Copy %1\%2.be%3 %2.be >Nul
rem Cls
%TK%\fut.exe %2 %3
%TK%\stime.exe %2.st%3
%2.py > %2.so%3
%TK%\ftime.exe %2.st%3
Copy %2.ki %2.ki%3 >Nul

:KI

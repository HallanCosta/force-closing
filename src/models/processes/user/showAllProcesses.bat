@ECHO off

CLS
ECHO ALL PROCESSES
ECHO:

CALL src/models/processes/generator/processesName.bat


FOR /F "tokens=1 delims=" %%i IN (%processesDir%) DO SET /A countList+=1

SET /A countList-=1

FOR /L %%i IN (0,1,%countList%) DO ECHO %%i - !processName[%%i]!



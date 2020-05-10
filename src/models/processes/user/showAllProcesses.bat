@ECHO off

CLS
ECHO ALL PROCESSES
ECHO:

CALL /ForceClosing/src/models/processes/generator/processesName.bat

IF NOT DEFINED processName[0] (
	ECHO Nenhum registro ainda não foi criado.
	ECHO:

	PAUSE
	EXIT
)

FOR /F "tokens=1 delims=" %%i IN (%processesDir%) DO SET /A countList+=1

SET /A countList-=1

FOR /L %%i IN (0,1,%countList%) DO ECHO %%i - !processName[%%i]!



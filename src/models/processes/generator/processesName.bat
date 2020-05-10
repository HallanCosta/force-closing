@ECHO off
REM GENERATOR THE PROCESSES

IF NOT EXIST %processesDir% (
	
	ECHO Nenhum registro ainda não foi criado.
	ECHO:

	PAUSE
	EXIT
)

SET /A n=0
SET /A countProcesses=0

FOR /F "tokens=*" %%i IN (%processesDir%) DO (

	SET processName[!n!]=%%i
	SET /A n+=1
	SET /A countProcesses+=1
)

SET /A countProcesses-=1



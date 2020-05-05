@ECHO off
COLOR 02
REM GENERATOR THE PROCESSES

SET /A n=0
SET /A countProcesses=0

FOR /F "tokens=*" %%i IN (%processesDir%) DO (
	SET processName[!n!]=%%i
	SET /A n+=1
	SET /A countProcesses+=1
)

SET /A countProcesses-=1
@ECHO off
COLOR 02
REM GENERATING PROCESSES
SET processesDir=src/models/processes/user/myProcesses.txt
SET processes["errorImplements"]=

SET /A n=0
SET /A countProcesses=0

FOR /F "tokens=*" %%i IN (%processesDir%) DO (
	SET processName[!n!]=%%i
	SET /A n+=1
	SET /A countProcesses+=1
)

SET /A countProcesses-=1

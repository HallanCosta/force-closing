@ECHO off
rem Activing the UTF-8
chcp 1252 

ECHO:

rem Expand variables
setlocal EnableDelayedExpansion
rem State the total number of processes eg: 9 OBS: including 0 as a process Declare the total number of processes eg: 9 OBS: including 0 as a process
SET processName["total"]=9
SET processName["errorImplements"]=
SET processName[0]=chrome.exe
SET processName[1]=cpuz_x64.exe
SET processName[2]=K10STAT.exe
SET processName[3]=sublime_text.exe
SET processName[4]=Code.exe
SET processName[5]=robo3t.exe
SET processName[6]=Docker Desktop.exe
SET processName[7]=git-bash.exe
SET processName[8]=notepad.exe
SET processName[9]=Insomnia.exe
SET processName[10]=Teams.exe

FOR /L %%i IN (0,1,!processName["total"]!) DO (
	IF DEFINED processName[%%i] (
		SET processName["errorImplements"]=All processes were found
	) ELSE (
		SET processName["errorImplements"]=Did you forget to implement any process
	)
)

ECHO !processName["errorImplements"]!

ECHO:

Pause

ECHO:

SET processesTotal=0
SET processesDead=0
SET processesNotFind=0

ECHO KILLING THE PROCESS...

ECHO:

FOR /L %%i IN (0,1,!processName["total"]!) DO (

	FOR /F "tokens=1,*" %%n IN ("!processName[%%i]!") DO (
		SET pCommand[%%i]=TASKLIST /fi "IMAGENAME eq %%n" 
	)

	FOR /F "tokens=1,*" %%n IN (' !pCommand[%%i]! ') DO (
		SET pFindName[%%i]=%%n
	)

	IF "!pFindName[%%i]!" EQU "especificados." (
		ECHO %%i - !processName[%%i]! was not found
		SET /A processesNotFind=processesNotFind+1
		SET /A processesTotal=processesTotal+1
	) ELSE (
		ECHO %%i - !pFindName[%%i]! was dead
		TASKKILL -f -t -im !pFindName[%%i]! > nul
		SET /A processesDead=processesDead+1
		SET /A processesTotal=processesTotal+1
	)

)

ECHO:

ECHO **************************
ECHO  ALL WERE DEAD PROCESSES *
ECHO **************************

ECHO:

ECHO "Total Process:" %processesTotal%
ECHO "Process Dead:" %processesDead%
ECHO "Process not found:" %processesNotFind%

ECHO:

Pause

cls
echo ******************************************************
echo ***** Software all rights reserved By:HállanCosta ****
echo ******************************************************
Pause

TASKKILL -f -t -im cmd.exe 
EXIT


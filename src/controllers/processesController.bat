@ECHO off
rem ECHO processesController EXECUTED
ECHO:
rem Expand variables

rem State the total number of processes eg: 9 OBS: including 0 as a process Declare the total number of processes eg: 9 OBS: including 0 as a process

SET processName["total"]=10
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

FOR /L %%i IN (0,1,%processName["total"]%) DO (
	IF DEFINED processName[%%i] (
		SET processName["errorImplements"]=All processes were found!
	) ELSE (
		SET processName["errorImplements"]=Did you forget to implement any process
	)
)

ECHO %processName["errorImplements"]%

ECHO:

Pause

ECHO:
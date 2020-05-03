@ECHO off
rem CONTROLLER THE PROCESSES
ECHO:

SETLOCAL EnableDelayedExpansion

rem SET processName["total"]=10
rem SET processName["errorImplements"]=
rem SET processName[0]=chrome.exe


CALL src/models/processes/generator/processesName.bat

SET /A n=0

FOR /L %%i IN (0,1,%countProcesses%) DO (
	IF DEFINED processName[!n!] (
		SET processName["errorImplements"]=All processes were found!
	) ELSE (
		SET processName["errorImplements"]=Did you forget to implement any process
		EXIT
	)
	SET /A n+=1
)
ECHO %processName["errorImplements"]%

ECHO:

CALL src/models/processes/deading/deadingProcesses.bat

ECHO:
ECHO ****************************
ECHO  ALL PROCESSES WERE KILLED *
ECHO ****************************
ECHO:

ECHO Total Processes: %processTotal%
ECHO Processes Dead: %processesDead%
ECHO Processes not found: %processesNotFind%

ECHO:

Pause

ECHO:
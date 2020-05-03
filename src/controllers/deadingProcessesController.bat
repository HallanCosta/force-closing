@ECHO off

ECHO:

SET processTotal=0
SET processesDead=0
SET processesNotFind=0


ECHO KILLING THE PROCESS...

ECHO:

FOR /L %%i IN (0,1,%processName["total"]%) DO (
	
	SETLOCAL EnableDelayedExpansion

	FOR /F "tokens=1,*" %%n IN ("!processName[%%i]!") DO (
		SET pCommand[%%i]=TASKLIST /fi "IMAGENAME eq %%n" 	

	)

	FOR /F "tokens=1,*" %%n IN (' !pCommand[%%i]! ') DO (
		SET pFindName[%%i]=%%n
	)
	
	
	IF "!pFindName[%%i]!" EQU "especificados." (
		
		ECHO %%i - !processName[%%i]! was not found
		SET /A processesNotFind=processesNotFind+1
		SET /A processTotal=processTotal+1
	) ELSE (
		
		ECHO %%i - !pFindName[%%i]! was dead
		TASKKILL -f -t -im !pFindName[%%i]! > nul
		SET /A processesDead=processesDead+1
		SET /A processTotal=processTotal+1
	
	)

	SETLOCAL DisableDelayedExpansion

)

ECHO:
ECHO **************************
ECHO  ALL WERE DEAD PROCESSES *
ECHO **************************
ECHO:

ECHO Total Process: %processTotal%
ECHO Process Dead: %processesDead%
ECHO Process not found: %processesNotFind%

ECHO:

Pause
@ECHO off

SET /A countArr=%processTotal%-1
IF %processTotal% GTR 0 (
	
	CLS

	SETLOCAL EnableDelayedExpansion
	
	ECHO:

	ECHO SHOW THE PROCESSES...

	ECHO:

	REM SAVE .TXT
	FOR /L %%i IN (0,1,%countArr%) DO (
		ECHO !processName[%%i]!
	) >> src/models/processes/user/myProcesses.txt

	REM USER NOTIFICATION
	FOR /L %%i IN (0,1,%countArr%) DO (
		ECHO %%i - !processName[%%i]!
	)

	SETLOCAL DisableDelayedExpansion
	
	ECHO:

	ECHO ALL PROCESSES REGISTERED WITH SUCESS!!
)

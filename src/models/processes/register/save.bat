@ECHO off
ECHO:

SET /A countArr=%processTotal%-1

IF %processTotal% GTR 0 (
	
	CLS
	
	ECHO:

	ECHO SHOW THE PROCESSES...

	ECHO:

	REM SAVE .TXT
	FOR /L %%i IN (0,1,%countArr%) DO (
		ECHO !processName[%%i]!
	) >> %processesDir%

	REM USER NOTIFICATION
	FOR /L %%i IN (0,1,%countArr%) DO (
		ECHO %%i - !processName[%%i]!
	)
	
	ECHO:

	ECHO ALL PROCESSES REGISTERED WITH SUCESS!!
)

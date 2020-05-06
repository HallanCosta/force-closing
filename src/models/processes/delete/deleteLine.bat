@ECHO off

CLS
ECHO:

CALL /ForceClosing/src/models/processes/user/showAllProcesses.bat

ECHO:
SET /P responseDeleteLine=Escolha uma linha de 0 a %countList%: 

ECHO:
DEL /q > nul %processesDir%

ECHO Linha Removida: %responseDeleteLine% - !processName[%responseDeleteLine%]!
ECHO:

FOR /L %%i IN (0,1,%countProcesses%) DO (
	

	IF %%i LSS %responseDeleteLine% (

		ECHO !processName[%%i]!
		
	) >> %processesDir%


	IF %%i GTR %responseDeleteLine% (


		ECHO !processName[%%i]!

		
	) >> %processesDir%
	
)
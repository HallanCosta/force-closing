@ECHO off

CLS
ECHO DELETAR TODOS OS PROCESSOS
ECHO:

SET /p responseDeleteAllProcesses=Você tem certeza que deseja deletar a base de dados?(s/n): 

IF %responseDeleteAllProcesses% EQU s (

	IF EXIST %processesDir% (
		DEL /q > nul %processesDir%

		ECHO:
		ECHO Base de dados deletada com Sucesso.
		ECHO:
		
		PAUSE
		EXIT
	)

	IF NOT EXIST %processesDir% (
		ECHO:
		ECHO Base de dados já foi deletada.
		ECHO:

		PAUSE
		EXIT
	)
		
	
)ELSE (
	EXIT
	rem GOTO :main
)
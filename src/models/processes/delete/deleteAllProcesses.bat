@ECHO off

CLS
ECHO DELETAR TODOS OS PROCESSOS
ECHO:

SET /p responseDeleteAllProcesses=Você tem certeza que deseja deletar a base de dados?(s/n): 

IF %responseDeleteAllProcesses% EQU s (

	DEL /q > nul %processesDir%

	ECHO:
	ECHO Base de dados deletada com Sucesso.
	ECHO:
		
	PAUSE
	EXIT
			
)ELSE (
	EXIT
	rem GOTO :main
)
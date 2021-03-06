@ECHO off
REM CONTROLLER TOOLS - FORCE CLOSING
SETLOCAL EnableDelayedExpansion

ECHO Ola seja bem-vindo, Registre um processo(programa/software), Caso tenha duvidas vá em Ajuda/Introdução!

:main
CLS
SET processesDir=\ForceClosing\src\models\database\myProcesses.txt

ECHO:

SET /P resposeUser= Escolha (1 - Registrar / 2 - Mostrar todos os processos / 3 - Exluir / 4 - Ajuda): 

IF %resposeUser% EQU 1 GOTO :register
IF %resposeUser% EQU 2 GOTO :showAllProcesses
IF %resposeUser% EQU 3 GOTO :delete
IF %resposeUser% EQU 4 GOTO :help


:register
cls

CALL /ForceClosing/src/models/processes/register/question.bat
CALL /ForceClosing/src/models/processes/register/save.bat

ECHO:
PAUSE
EXIT



:showAllProcesses
CALL /ForceClosing/src/models/processes/user/showAllProcesses.bat


ECHO:
PAUSE
EXIT





:delete
CLS
ECHO Tools - ForceClosing nunca deletará processos de seu sistema, somente processos que você registrou na base de dados.

IF NOT EXIST %processesDir% (
	ECHO:
	ECHO Base de dados não criada.
	ECHO:

	PAUSE
	EXIT
)

ECHO:
SET /P responseDelete=Escolha(1 - Deletar linha do processo / 2 - Deletar todos os processos): 

IF %responseDelete% EQU 1 GOTO :deleteLine
IF %responseDelete% EQU 2 GOTO :deleteAllProcesses



:deleteLine
CALL /ForceClosing/src/models/processes/delete/deleteLine.bat

ECHO:
PAUSE
EXIT


:deleteAllProcesses
CALL /ForceClosing/src/models/processes/delete/deleteAllProcesses.bat




:help
CLS

ECHO VAMOS TENTAR FAZER O POSSÍVEL PARA TE AJUDA!

ECHO:

SET /P responseHelp=Escolha (1 - Como Registrar um processo / 2 - Problemas possíveis): 

IF %responseHelp% EQU 1 GOTO :howToRegister
IF %responseHelp% EQU 2 GOTO :possibleProblem

ECHO:

:howToRegister
CALL /ForceClosing/src/models/processes/help/howToRegister.bat
ECHO:
PAUSE
GOTO :help


:possibleProblem
CALL /ForceClosing/src/models/processes/help/possibleProblem.bat
ECHO:
PAUSE
GOTO :help
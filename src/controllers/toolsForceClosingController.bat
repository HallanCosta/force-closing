@ECHO off
REM CONTROLLER FORCE CLOSING TOOLS
CLS
COLOR 02

ECHO Ola seja bem-vindo, Registre um processo(programa/software), Caso tenha duvidas vá em Introdução!

:main
ECHO:

SET /P resposeUser= Escolha (1 - Registrar / 2 - Introdução / 3 - Mostrar todos os processos): 

IF %resposeUser% EQU 1 GOTO :register
IF %resposeUser% EQU 2 GOTO :introduction
IF %resposeUser% EQU 3 GOTO :showProcesses

SET processesDir=src/models/processes/user/myProcesses.txt


:register
cls


CALL src/models/processes/register/question.bat


CALL src/models/processes/register/save.bat


ECHO:

PAUSE
CLS
GOTO :main













:introduction
CLS

ECHO INTRODUCTION

ECHO:

PAUSE
CLS
GOTO main










:showProcesses
CLS

ECHO ALL PROCESSES
ECHO:

SETLOCAL EnableDelayedExpansion

CALL src/models/processes/generator/processesName.bat

FOR /F "tokens=1 delims=" %%i IN (%processesDir%) DO SET /A countList+=1

SET /A countList-=1

FOR /L %%i IN (0,1,%countList%) DO ECHO %%i - !processName[%%i]!

SETLOCAL DisableDelayedExpansion

ECHO:


PAUSE
CLS
GOTO :main
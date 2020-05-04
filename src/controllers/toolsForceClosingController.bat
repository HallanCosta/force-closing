@ECHO off
REM CONTROLLER FORCE CLOSING TOOLS
CLS
COLOR 02

ECHO Ola seja bem-vindo, Registre um processo(programa/software), Caso tenha duvidas vá em Ajuda/Introdução!

:main
ECHO:

SET /P resposeUser= Escolha (1 - Registrar / 2 - Mostrar todos os processos / 3 - Ajuda): 

IF %resposeUser% EQU 1 GOTO :register
IF %resposeUser% EQU 2 GOTO :showProcesses
IF %resposeUser% EQU 3 GOTO :help

SET processesDir=src/models/processes/user/myProcesses.txt




:register
cls

CALL src/models/processes/register/question.bat


CALL src/models/processes/register/save.bat


ECHO:

PAUSE
CLS
GOTO :main






:help
CLS

ECHO VAMOS TENTAR FAZER O POSSÍVEL PARA TE AJUDA!

ECHO:

SET /P responseHelp=Escolha (1 - Como Registrar um processo / 2 - Problemas possíveis): 

IF %responseHelp% EQU 1 GOTO :howToRegister
IF %responseHelp% EQU 2 GOTO :possibleProblem

ECHO:

:howToRegister
CLS
ECHO Como Registrar um processo

ECHO:

ECHO Para inserir um processo você precisará seguir os passos seguintes.

ECHO:

ECHO 1 - Clique com o botão direito do mouse na barra de tarefas do windows em gerenciador de tarefas.
ECHO 2 - Abra o processo/programa que você quer que o ForceClosing feche-o.
ECHO 3 - Na aba Processos no gerenciador de tarefas, clique com o botão direito do mouse no processo e clique em (Ir para detalhes).
ECHO 4 - Você foi redirecionado para aba Detalhes, copie o nome do processo selecionado.
ECHO 5 - Abra o Tools - ForceClosing selecione 1 para Registrar o processo e cole o nome.

ECHO:

ECHO SE QUISER ADICIONAR MAIS PROCESSOS SÓ REPETIR OS PASSOS.
ECHO OBS: ESSE SOFTWARE NUNCA FECHARA UM PROCESSO SEM SER INSERIDO PRIMEIRO.

ECHO:

PAUSE
CLS
GOTO main

:possibleProblem
CLS

ECHO Problemas possíveis

ECHO:

ECHO Se ocorrer alguns problemas siga os seguintes passos.
ECHO:

ECHO Se o problema for porque não encerra todos os processos \/

ECHO 1 - Tente executar o ForceClosing como ADMINISTRADOR clicando com o botão direito do mouse.

ECHO:
ECHO:
ECHO:
ECHO Se a etapa acima não resolver tente \/
ECHO 1 - Vá no Tools - ForceClosing execute como ADMINISTRADOR e selecione a opção (Mostrar todos os processos)
ECHO 2 - Verifique se algum processo esta sendo imprimido dessa maneira: example.exeexample.exe
ECHO 3 - Se estiver assim /\, Vá no Tools - ForceClosing e selecione a opção (Deletar processo) e exclua a linha aquela linha.
ECHO 4 - Feito isso, registre novamente o processo que deletou que deve voltar a funcionar.
ECHO 5 - Se nenhuma das opções acima funcionar, Vá no Tools - ForceClosing e selecione a opção (Deletar todos os processos).

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
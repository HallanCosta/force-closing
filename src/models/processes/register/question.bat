@ECHO off

SET /A processTotal=0

:question

ECHO:

SET /P processName=Digite o nome do processo.exe: 

IF [%processName%] EQU [] (
	ECHO:
	ECHO Você não poder inserir um valor vazio!
	ECHO:
	PAUSE
	CLS
	GOTO :question
)

ECHO:

SET /P responseQuestion=Deseja registrar outro processo?(s/n): 


IF %responseQuestion% EQU s (
	SET processName[%processTotal%]=%processName%
	SET /A processTotal+=1

	GOTO :question
	PAUSE
) ELSE (

	SET processName[%processTotal%]=%processName%
	SET /A processTotal+=1
)

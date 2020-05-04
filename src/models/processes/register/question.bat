@ECHO off

ECHO:

SET /A processTotal=0
:question


SET /P processName=Digite o nome do processo.exe: 

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

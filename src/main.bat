@ECHO off

COLOR 2
rem Active the UTF-8
chcp 1252

ECHO:

CALL src/controllers/processesController.bat

CALL src/controllers/deadingProcessesController.bat

CALL src/about.bat

TASKKILL -f -t -im cmd.exe 
EXIT
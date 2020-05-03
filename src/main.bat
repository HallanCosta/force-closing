@ECHO off

COLOR 2

ECHO:

CALL src/controllers/processesController.bat

CALL src/about.bat

TASKKILL -f -t -im cmd.exe 
EXIT
@ECHO off
CLS
COLOR 2

ECHO:

CALL src/about.bat

CALL src/controllers/toolsForceClosingController.bat

TASKKILL -f -t -im cmd.exe 
EXIT
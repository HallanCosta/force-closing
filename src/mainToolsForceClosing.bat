@ECHO off
CLS
COLOR 2

ECHO:

CALL /ForceClosing/src/controllers/toolsForceClosingController.bat

TASKKILL -f -t -im cmd.exe 
EXIT
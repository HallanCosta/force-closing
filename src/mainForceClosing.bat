@ECHO off

COLOR 2

ECHO:

CALL src/controllers/forceClosingController.bat

CALL src/models/about/about.bat

TASKKILL -f -t -im cmd.exe 
EXIT
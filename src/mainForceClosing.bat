@ECHO off

ECHO:

CALL /ForceClosing/src/controllers/forceClosingController.bat

CALL /ForceClosing/src/models/about/about.bat

TASKKILL -f -t -im cmd.exe 
EXIT
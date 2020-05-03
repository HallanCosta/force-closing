@ECHO off
rem Activing the UTF-8
chcp 1252 

cls
echo ******************************************************
echo ***** Software all rights reserved By:HállanCosta ****
echo ******************************************************
Pause

taskkill -f -t -im chrome.exe
taskkill -f -t -im cpuz_x64.exe
taskkill -f -t -im K10STAT.exe
taskkill -f -t -im sublime_text.exe
taskkill -f -t -im Code.exe
taskkill -f -t -im robo3t.exe
taskkill -f -t -im "Docker Desktop.exe"
taskkill -f -t -im git-bash.exe
taskkill -f -t -im notepad.exe
taskkill -f -t -im Insomnia.exe
taskkill -f -t -im Teams.exe

TASKKILL -f -t -im cmd.exe 
EXIT


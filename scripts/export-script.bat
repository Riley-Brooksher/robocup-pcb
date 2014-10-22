echo off

set FILE=kicker-2013-a

SET REPO_PATH=%HOMEDRIVE%%HOMEPATH%\Documents\GitHub\robocup-pcb
cd /d %REPO_PATH%
cd archive-pcb\%FILE%



SET SCRIPT_PATH=%REPO_PATH%\scripts\export-brd.scr
REM type %SCRIPT_PATH%
SET SETTINGS=%REPO_PATH%\eagle.epf
SET COMMAND1=SCRIPT %SCRIPT_PATH%;
SET COMMAND=EDIT %REPO_PATH%\archive-pcb\%FILE%\%FILE%.brd; %COMMAND1% CLOSE;
REM echo %COMMAND%

SET EAGLE=%PROGRAMFILES(x86)%\eagle-6.5.0\bin\eagle.exe
REM echo %EAGLE%
cmd /c CALL START "" "%EAGLE%" -C ^"%COMMAND%^" %REPO_PATH%\retired-pcb\%FILE%\%FILE%.brd
rem "%EAGLE%" -C ^"%COMMAND%^" %REPO_PATH%\retired-pcb\control-2011-c\control-2011-c.brd
REM ping 1.1.1.1 -n 1 -w 60000 > nul
REM powershell -Command "&{kill -name eagle}"
exit
exit
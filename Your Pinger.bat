@echo off
title Pinger
echo Pinger
set /p ip="Ping: "
:ping
title Pinging
::set /a num=%random% %%9 
::color %num%
ping -n 1 %ip% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo Ping Offline)
ping localhost -n 5 >nul
goto ping
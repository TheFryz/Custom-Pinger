@echo off
title Fryz Pinger
echo  ____                           
echo /\  _`\                         
echo \ \ \L\_\_ __   __  __  ____    
echo  \ \  _\/\`'__\/\ \/\ \/\_ ,`\  
echo   \ \ \/\ \ \/ \ \ \_\ \/_/  /_ 
echo    \ \_\ \ \_\  \/`____ \/\____\
echo     \/_/  \/_/   `/___/  \/____/
echo                     /\___/      
echo                     \/__/       
echo.
set /p ip="Ip to Ping:: "
goto ping


:ping
set /a num=%random% %%9
title Fryz Pinger - Ctrl+C Exit
color %num%
ping -n 1 %ip% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo Offline) 
ping localhost -n 1 >nul
goto ping
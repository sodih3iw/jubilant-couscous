@echo off
set i=11

:001
set TARGET=room-%i%-stu
wmic /node:"%TARGET%" /user:"cloud" /password:"" process call create "cmd /c del %TEMP%\dwm_loop.bat"
set /a i+=1
goto 001
@echo off
setlocal enabledelayedexpansion

set i=11
:001
set TARGET=room-%i%-stu
wmic /node:"%TARGET%" /user:"cloud" /password:"" process call create "cmd /c net user "cloud" /delete"
::wmic /node:"%TARGET%" /user:"cloud" /password:"" process call create "cmd /c shutdown /l"
set /a i+=1
if "i" == "72" (
exit /b 0
)
goto 001

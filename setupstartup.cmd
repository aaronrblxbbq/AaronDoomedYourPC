@echo off

REM Copy the batch file to the Startup folder
copy "%~dp0iwillrunonstartup.cmd" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\iwillrunonstartup.cmd"

echo The script has been copied to the Startup folder.
pause
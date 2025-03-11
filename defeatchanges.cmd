@echo off

REM Enable Task Manager
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /f

echo Operation Completed Succesfully.
timeout /t 2 /nobreak >nul
cls
REM Enable Command Prompt
REG DELETE "HKCU\Software\Policies\Microsoft\Windows\System" /v "DisableCMD" /f

cls
echo Operation Completed Succesfully.
timeout /t 2 /nobreak >nul

REM Enable UAC
REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "1" /f

cls
echo Operation Compled Successfully. 
timeout /t 2 /nobreak >nul
pause
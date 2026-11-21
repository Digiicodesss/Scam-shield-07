@echo off
setlocal
cd /d "%~dp0"
title ScamShield AI - Stop Utility

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\stop_app.ps1"

echo Press any key to exit...
pause >nul
exit /b 0

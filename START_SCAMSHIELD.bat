@echo off
setlocal
cd /d "%~dp0"
title ScamShield AI - Launcher

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\start_app.ps1"

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [!] Launcher encountered an issue. Press any key to exit.
    pause >nul
    exit /b %ERRORLEVEL%
)

echo Press any key to close this launcher console (servers remain active)...
pause >nul
exit /b 0

@echo off
setlocal
cd /d "%~dp0"
title Deploy SMARTSHIELD AI Fullstack to Vercel

echo ========================================================
echo   Deploying SMARTSHIELD AI Fullstack (Frontend + FastAPI)
echo ========================================================
echo.

set "PATH=%~dp0.tools\nodejs;%PATH%"

echo [1/2] Compiling Vite Frontend assets...
call npm --prefix frontend run build
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Frontend build failed!
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo [2/2] Deploying Fullstack Project to Vercel...
call npx --yes vercel --prod --yes --token "vcp_0fSFKSC6tyO91GOUpzthJGVjXlvSH3XhIVNW1Xg8N97crDymvZ1yK2mg"

echo.
echo ========================================================
echo   Deployment Complete!
echo ========================================================
pause

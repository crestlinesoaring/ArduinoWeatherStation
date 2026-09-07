@echo off
setlocal
cd /d "%~dp0\.."
git config core.hooksPath .githooks
if errorlevel 1 exit /b 1
echo Git hooks enabled (core.hooksPath=.githooks)

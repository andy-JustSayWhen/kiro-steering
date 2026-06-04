@echo off
setlocal

if not "%KIRO_HOME%"=="" (
    set "KIRO_HOME_RESOLVED=%KIRO_HOME%"
) else (
    set "KIRO_HOME_RESOLVED=%USERPROFILE%\.kiro"
)

set "STEERING_DIR=%KIRO_HOME_RESOLVED%\steering"

if not exist "%STEERING_DIR%" (
    mkdir "%STEERING_DIR%" >nul 2>nul
)

start "" "%STEERING_DIR%"
exit /b 0

@echo off
setlocal EnableExtensions EnableDelayedExpansion

REM Generate GitSHA1.cpp containing the current Git commit hash.
REM Usage:
REM   printHash.bat <output-file>

if "%~1"=="" (
    echo Usage: %~nx0 ^<output-file^>
    exit /b 1
)

set "OUTPUT=%~1"
set "VERSION=unknown"

cd /d "%~dp0"

where git >nul 2>&1
if not errorlevel 1 (
    for /f "delims=" %%v in ('git rev-parse --short HEAD 2^>nul') do (
        set "VERSION=%%v"
    )
)

(
    echo #define GIT_SHA1 "!VERSION!"
    echo.
    echo const char* g_GIT_SHA1 = GIT_SHA1;
) > "%OUTPUT%"

if not exist "%OUTPUT%" (
    echo Failed to generate "%OUTPUT%"
    exit /b 1
)

echo Generated: "%OUTPUT%"
echo Git SHA1: "!VERSION!"

exit /b 0

@echo off
setlocal EnableExtensions

set "OUTPUT=%~dp0version.h"
set "VERSION=unknown"

cd /d "%~dp0"

where git >nul 2>&1
if not errorlevel 1 (
    for /f "delims=" %%v in ('git rev-parse --short HEAD 2^>nul') do (
        set "VERSION=%%v"
    )
)

(
    echo #pragma once
    echo.
    echo #define GIT_SHA1 "%VERSION%"
    echo.
    echo const char* g_GIT_SHA1 = GIT_SHA1;
) > "%OUTPUT%"

echo Generated: "%OUTPUT%"
echo Git SHA1: "%VERSION%"

exit /b 0
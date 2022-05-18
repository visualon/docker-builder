@echo off
PowerShell -noni -nop -c "$ErrorActionPreference = 'Stop'; prepare-user.ps1 %*"
if not "%ERRORLEVEL%" == "0" exit /B %ERRORLEVEL%

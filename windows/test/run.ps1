#Requires -Version 5.1

$ErrorActionPreference = 'Stop'
$DebugPreference = 'Continue'

. c:\tools\lib\exec.ps1

exec { msbuild --version }

exec { npm i --no-package-lock --no-audit --no-fund --silent }

Get-ChildItem node_modules
Get-ChildItem node_modules\@swc
Get-ChildItem node_modules\@swc\core-win32-x64-msvc

exec { node -e 'require("@swc/core-win32-x64-msvc")' }

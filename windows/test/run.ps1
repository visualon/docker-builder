#Requires -Version 5.1

$ErrorActionPreference = 'Stop'
$DebugPreference = 'Continue'

. c:\tools\lib\exec.ps1

exec { msbuild --version }

exec { npm i --no-package-lock }

exec { node -e 'require("@swc/core-win32-x64-msvc")' }

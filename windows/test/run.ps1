#Requires -Version 5.1

$ErrorActionPreference = 'Stop'
$DebugPreference = 'Continue'

. c:\tools\lib\exec.ps1

exec { msbuild --version }

exec { npm i --no-package-lock }

exec { npm run test }

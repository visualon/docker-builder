#Requires -Version 5.1

$ErrorActionPreference = 'Stop'
$DebugPreference = 'Continue'

. c:\tools\lib\exec.ps1

exec { msbuild --version }

exec { npm ci }

exec { npm run test }

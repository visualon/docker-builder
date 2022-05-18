#Requires -Version 5.1

[CmdletBinding()]
param (
  [Parameter(Mandatory = $true, Position = 0)]
  [string]
  $Name
)

$ErrorActionPreference = "Stop"

# . $PSScriptRoot\..\lib\index.ps1


"Preparing user " | Write-Host -ForegroundColor DarkGray -NoNewline
"$Name"  | Write-Host -ForegroundColor Green -NoNewline
" ... "  | Write-Host -ForegroundColor DarkGray

New-Item C:\Users\$Name\AppData\Roaming -ItemType Directory | Out-Null
New-Item C:\Users\$Name\AppData\Local\Temp -ItemType Directory | Out-Null

" done." | Write-Host -ForegroundColor DarkGray

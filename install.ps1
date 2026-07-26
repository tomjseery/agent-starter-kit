$ErrorActionPreference = "Stop"

$source = Join-Path $PSScriptRoot ".agents\skills"
$target = Join-Path $env:USERPROFILE ".agents\skills"

if (-not (Test-Path $source)) {
    throw "Skills source not found: $source"
}

New-Item -ItemType Directory -Force $target | Out-Null
Copy-Item -Recurse -Force (Join-Path $source "*") $target

Write-Host "Installed global agent skills to $target"

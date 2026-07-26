$ErrorActionPreference = "Stop"

$source = Join-Path $env:USERPROFILE ".agents\skills"
$target = Join-Path $PSScriptRoot ".agents\skills"

if (-not (Test-Path $source)) {
    throw "Global skills source not found: $source"
}

New-Item -ItemType Directory -Force $target | Out-Null
Copy-Item -Recurse -Force (Join-Path $source "*") $target

Write-Host "Updated starter-kit skills from $source"

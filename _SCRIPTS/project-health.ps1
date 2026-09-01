param(
    [string]$ProjectPath = ""
)

$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($ProjectPath)) {
    $ProjectPath = Split-Path -Parent $PSScriptRoot
}

Write-Host "=== PROJECT HEALTH ==="
Write-Host "Path: $ProjectPath"
Write-Host ""

$validator = Join-Path $PSScriptRoot "validate-project.ps1"

& $validator -ProjectPath $ProjectPath
$validationExitCode = $LASTEXITCODE

if ($validationExitCode -ne 0) {
    Write-Host ""
    Write-Host "FAIL: validate-project.ps1 devolvió código $validationExitCode."
    exit $validationExitCode
}

if (Test-Path (Join-Path $ProjectPath ".git")) {
    Write-Host ""
    Write-Host "=== GIT STATUS ==="
    git -C $ProjectPath status --short

    Write-Host ""
    Write-Host "=== DIFF STAT ==="
    git -C $ProjectPath diff --stat
}

Write-Host ""
Write-Host "PASS: validación estructural correcta."
Write-Host "Revisa AGENTS.md para ejecutar tests/build específicos del proyecto."
exit 0

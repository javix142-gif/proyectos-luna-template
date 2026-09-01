param(
    [string]$ProjectPath = ""
)

$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($ProjectPath)) {
    $ProjectPath = Split-Path -Parent $PSScriptRoot
}

if (-not (Test-Path $ProjectPath)) {
    Write-Host "FAIL: no existe $ProjectPath"
    exit 2
}

$required = @(
    "AGENTS.md",
    "PROJECT_META.json",
    "PROJECT_STATE.md",
    "SESSION_SUMMARY.md",
    "PRODUCT_SPEC.md",
    "TECH_SPEC.md",
    "TASKS.md",
    "README.md",
    "FRAMEWORK_VERSION.md",
    "_LUNA_CORE\QUALITY_GATES.md"
)

$missing = @()

foreach ($file in $required) {
    if (-not (Test-Path (Join-Path $ProjectPath $file))) {
        $missing += $file
    }
}

Write-Host "=== VALIDATE PROJECT ==="
Write-Host "Path: $ProjectPath"

if ($missing.Count -gt 0) {
    Write-Host "FAIL: faltan archivos obligatorios:"
    $missing | ForEach-Object { Write-Host " - $_" }
    exit 1
}

$dangerPatterns = @("*.pem","*.key","*.pfx","*.p12",".env",".env.*")
$foundSensitive = @()

foreach ($pattern in $dangerPatterns) {
    $foundSensitive += Get-ChildItem -Path $ProjectPath -Recurse -Force -Filter $pattern -ErrorAction SilentlyContinue
}

Write-Host "PASS: estructura base presente."

if ($foundSensitive.Count -gt 0) {
    Write-Host "WARNING: posibles archivos sensibles detectados por nombre:"
    $foundSensitive | ForEach-Object { Write-Host " - $($_.FullName)" }
} else {
    Write-Host "PASS: no se detectaron archivos sensibles por nombre."
}

exit 0

param(
    [Parameter(Mandatory=$true)]
    [string]$Name,

    [ValidateSet("generic","desktop","android","web","automation","godot")]
    [string]$Type = "generic",

    [string]$Description = ""
)

$ErrorActionPreference = "Stop"

$RepoRoot = Split-Path -Parent $PSScriptRoot
$MetaPath = Join-Path $RepoRoot "PROJECT_META.json"

if (-not (Test-Path $MetaPath)) {
    throw "PROJECT_META.json no existe. Ejecuta este script desde una copia válida de PROYECTOS LUNA."
}

$meta = Get-Content $MetaPath -Raw | ConvertFrom-Json

if ($meta.initialized -eq $true) {
    throw "El proyecto ya aparece inicializado. No se realizaron cambios."
}

$meta.initialized = $true
$meta.project_name = $Name
$meta.project_type = $Type
$meta.description = $Description

$meta | ConvertTo-Json -Depth 10 | Set-Content $MetaPath -Encoding UTF8

$statePath = Join-Path $RepoRoot "PROJECT_STATE.md"
if (Test-Path $statePath) {
    $state = Get-Content $statePath -Raw
    $state = $state.Replace("UNINITIALIZED_TEMPLATE_COPY", "INITIALIZED")
    $state = $state.Replace("[Completar al inicializar]", $Description)
    $state = $state.Replace("- Inicializar el proyecto.", "- Completar especificación y plan.")
    Set-Content $statePath $state -Encoding UTF8
}

Write-Host ""
Write-Host "Proyecto inicializado:"
Write-Host "Nombre: $Name"
Write-Host "Tipo: $Type"
Write-Host ""
Write-Host "Siguiente paso:"
Write-Host "Completar PRODUCT_SPEC.md, TECH_SPEC.md y TASKS.md antes de implementar."

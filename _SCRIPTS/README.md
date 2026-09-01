# Scripts — GitHub Template mode

## initialize-project.ps1

Inicializa la copia actual del template como proyecto.

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass `
  -File ".\_SCRIPTS\initialize-project.ps1" `
  -Name "Control Gastos" `
  -Type android `
  -Description "Aplicación para registrar gastos familiares."
```

## validate-project.ps1

Valida la estructura del repositorio actual.

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass `
  -File ".\_SCRIPTS\validate-project.ps1"
```

## project-health.ps1

Ejecuta el validador y, si existe Git, muestra status y diff.

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass `
  -File ".\_SCRIPTS\project-health.ps1"
```

Si el validador falla, `project-health.ps1` devuelve un código distinto de cero.

## Execution Policy

El framework no cambia la política permanente de Windows.

`-ExecutionPolicy Bypass` se utiliza únicamente en el proceso puntual de PowerShell.

No es necesario ejecutar `Set-ExecutionPolicy Unrestricted`.

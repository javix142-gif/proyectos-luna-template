# PROYECTOS LUNA — GitHub Template

Framework para desarrollar aplicaciones con GPT-5.6 Luna usando un repositorio Git independiente por proyecto.

## Modelo de uso

Este repositorio NO contiene múltiples proyectos.

Es una plantilla.

Cada aplicación debe crearse desde GitHub mediante:

`Use this template → Create a new repository`

El nuevo repositorio contiene su propia copia de:

- AGENTS.md;
- skills;
- perfiles de agentes;
- políticas;
- checklists;
- specs;
- estado;
- scripts de validación.

## Por qué

Codex descubre instrucciones de proyecto desde la raíz del repositorio Git y puede cargar skills ubicadas en `.agents/skills` del mismo repositorio.

Mantener estos archivos dentro de cada proyecto hace el comportamiento portable entre:

- Codex local;
- Codex/Work;
- Codex Cloud;
- otros computadores.

## Primer uso

Lee:

`GITHUB_SETUP.md`

## Primer prompt en un repositorio recién creado

> Inicializa este repositorio como proyecto Android llamado Control Gastos.
> Usa la skill luna-inicializar-proyecto.
> Completa primero PRODUCT_SPEC.md, TECH_SPEC.md, TASKS.md y PROJECT_STATE.md.
> Luego desarrolla el MVP por tareas pequeñas.
> No modifiques el núcleo protegido.

## Núcleo protegido

Durante desarrollo normal no modificar:

- AGENTS.md
- .agents/
- .codex/
- _LUNA_CORE/
- _SCRIPTS/
- GITHUB_SETUP.md
- FRAMEWORK_VERSION.md

## Archivos vivos del proyecto

Mantener:

- PRODUCT_SPEC.md
- TECH_SPEC.md
- TASKS.md
- PROJECT_STATE.md
- SESSION_SUMMARY.md
- README.md
- PROJECT_META.json

## PowerShell

Si Windows bloquea scripts por política de ejecución, no cambies la política global.

Ejemplo puntual:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass `
  -File ".\_SCRIPTS\initialize-project.ps1" `
  -Name "Control Gastos" `
  -Type android
```

`Bypass` se aplica solo a ese proceso.

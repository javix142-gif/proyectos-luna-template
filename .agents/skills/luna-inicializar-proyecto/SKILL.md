---
name: luna-inicializar-proyecto
description: Inicializa una copia nueva de PROYECTOS LUNA creada desde GitHub Template; trabaja en la raíz del repositorio y prepara specs, estado y tareas antes de implementar.
---

# Luna — Inicializar Proyecto

## Activar cuando

- `PROJECT_META.json` indica `"initialized": false`;
- el usuario creó un repositorio nuevo desde `proyectos-luna-template`;
- el usuario pide comenzar una aplicación nueva.

## Regla crítica

Este repositorio YA ES el proyecto.

NO crear:

- `PROYECTOS/<nombre>`;
- otra carpeta raíz contenedora;
- otro repositorio Git anidado.

El código se desarrolla en este repositorio.

## Procedimiento

1. Leer:
   - `AGENTS.md`;
   - `PROJECT_META.json`;
   - `PRODUCT_SPEC.md`;
   - `TECH_SPEC.md`;
   - `PROJECT_STATE.md`.

2. Identificar:
   - nombre;
   - tipo;
   - objetivo;
   - usuarios;
   - plataforma;
   - restricciones.

3. Completar `PRODUCT_SPEC.md`.

4. Elegir stack mínimo razonable.
   No instalar dependencias todavía.

5. Completar `TECH_SPEC.md`.

6. Dividir el trabajo en tareas pequeñas en `TASKS.md`.

7. Actualizar `PROJECT_STATE.md`.

8. Actualizar `PROJECT_META.json`:
   - `initialized: true`;
   - nombre;
   - tipo;
   - descripción;
   - stack.

9. Solo después implementar si el usuario lo pidió.

## Tipos

- generic
- desktop
- android
- web
- automation
- godot

## Prohibiciones

No modificar durante inicialización:

- `_LUNA_CORE/**`;
- `.agents/**`;
- `.codex/**`;
- `_SCRIPTS/**`;
- `FRAMEWORK_VERSION.md`;
- `GITHUB_SETUP.md`.

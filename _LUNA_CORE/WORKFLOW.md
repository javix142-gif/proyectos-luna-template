# Flujo estándar Luna

## Fase 0 — Preparación

Identificar:

- objetivo;
- tipo de aplicación;
- directorio de trabajo;
- archivos relevantes;
- comportamiento actual;
- comportamiento esperado;
- restricciones;
- comandos de validación.

## Fase 1 — Exploración

Solo lectura.

Salida:

- estructura;
- flujo actual;
- archivos relevantes;
- riesgos;
- dependencias;
- hipótesis.

## Fase 2 — Especificación

Mantener `PRODUCT_SPEC.md` y `TECH_SPEC.md` cuando la tarea lo justifique.

Definir:

- requisitos;
- exclusiones;
- casos borde;
- criterios de aceptación;
- pruebas mínimas.

## Fase 3 — Plan

Mantener `TASKS.md`.

Cada tarea debe incluir:

- archivo o módulo;
- cambio;
- dependencia;
- prueba;
- riesgo;
- condición de cierre.

## Fase 4 — Implementación

- una tarea lógica por vez;
- cambios pequeños;
- nada fuera de alcance;
- sin refactors oportunistas.

## Fase 5 — Validación

Ejecutar lo aplicable:

- tests;
- lint;
- typecheck;
- build;
- prueba manual;
- revisión de logs.

## Fase 6 — Review

Revisar el diff en modo lectura.

Buscar:

- bugs;
- regresiones;
- seguridad;
- manejo de errores;
- dependencias;
- cambios extra;
- pruebas faltantes.

## Fase 7 — Cierre

Actualizar `PROJECT_STATE.md`.

Reportar:

- resumen;
- archivos;
- validaciones;
- riesgos;
- pendientes;
- siguiente paso.

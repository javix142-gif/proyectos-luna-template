# Quality Gates

Una feature se considera terminada solo cuando cumple los gates aplicables.

## Gate 1 — Alcance
- requisito solicitado implementado;
- sin cambios fuera de alcance.

## Gate 2 — Tests
- tests existentes relevantes pasan;
- tests nuevos agregados cuando corresponde.

## Gate 3 — Análisis estático
- lint pasa, si existe;
- typecheck pasa, si existe.

## Gate 4 — Build
- build exitoso;
- artefacto generado cuando corresponda.

## Gate 5 — Comportamiento
- flujo principal probado;
- caso borde principal probado;
- errores esperados gestionados.

## Gate 6 — Diff
- diff revisado;
- sin secretos;
- sin temporales;
- sin dependencias injustificadas;
- sin configuraciones críticas modificadas por accidente.

## Gate 7 — Estado
- `PROJECT_STATE.md` actualizado;
- riesgos pendientes documentados.

## Regla

Si un gate obligatorio falla, no declarar la tarea como completada.

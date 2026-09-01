# Escalación dentro de un flujo Luna-only

Este workspace está pensado para trabajar exclusivamente con Luna. La escalación se realiza cambiando el rol y el contexto, no necesariamente el modelo.

## Nivel 0 — Implementación normal

Luna implementa una tarea acotada.

## Nivel 1 — Reviewer independiente

Si existe duda:

- iniciar una revisión separada;
- no modificar;
- revisar diff, requisitos y pruebas.

## Nivel 2 — Debugger

Si una validación falla:

- reproducir;
- reunir evidencia;
- localizar causa raíz;
- formular hipótesis;
- aplicar solución mínima.

## Nivel 3 — Reanálisis

Si dos intentos consecutivos fallan:

- detener parches;
- volver al estado y requisitos;
- revisar arquitectura;
- revisar dependencias;
- revisar logs;
- crear plan nuevo.

## Nivel 4 — Partición

Si el problema sigue siendo demasiado grande:

- dividir en subtareas;
- aislar módulo;
- reducir contexto;
- crear reproducción mínima;
- resolver cada parte por separado.

## Regla anti-thrashing

Nunca encadenar parches indefinidamente.
Dos intentos fallidos sobre la misma causa obligan a reanalizar.

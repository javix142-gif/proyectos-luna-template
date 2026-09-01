# PROYECTOS LUNA — AGENTS.md
## Modo GitHub Template / un proyecto por repositorio

## Propósito

Este repositorio usa el framework PROYECTOS LUNA para desarrollar UN SOLO proyecto de software
por repositorio, usando principalmente GPT-5.6 Luna.

Este repositorio puede encontrarse en uno de dos estados:

1. TEMPLATE: repositorio maestro usado únicamente para generar repositorios nuevos.
2. PROJECT: copia independiente creada desde el template para una aplicación concreta.

Consulta `PROJECT_META.json` antes de comenzar.

## Regla principal

En modo PROJECT, el proyecto vive en la RAÍZ de este repositorio.

NO crear `PROYECTOS/<nombre>`.
NO crear repositorios Git anidados.
NO mover el código a otra carpeta contenedora solo para separarlo del framework.

## Núcleo protegido

Estas rutas son infraestructura compartida del framework:

- `/AGENTS.md`
- `/.agents/`
- `/.codex/`
- `/_LUNA_CORE/`
- `/_SCRIPTS/`
- `/GITHUB_SETUP.md`
- `/FRAMEWORK_VERSION.md`

Durante el desarrollo normal de una aplicación:

- pueden leerse;
- pueden utilizarse;
- no deben modificarse.

Solo deben modificarse si el usuario pide expresamente actualizar el framework PROYECTOS LUNA.

Los archivos específicos del proyecto sí deben mantenerse y actualizarse:

- `/PRODUCT_SPEC.md`
- `/TECH_SPEC.md`
- `/TASKS.md`
- `/PROJECT_STATE.md`
- `/SESSION_SUMMARY.md`
- `/README.md`
- `/PROJECT_META.json`

## Inicialización de una copia del template

Si `PROJECT_META.json` contiene `"initialized": false` y el usuario solicita crear una aplicación:

1. No crear otra carpeta contenedora.
2. Trabajar en la raíz actual.
3. Usar la skill `luna-inicializar-proyecto`.
4. Definir nombre, tipo, objetivo y stack.
5. Completar `PRODUCT_SPEC.md`.
6. Completar `TECH_SPEC.md`.
7. Crear tareas en `TASKS.md`.
8. Actualizar `PROJECT_STATE.md`.
9. Cambiar `PROJECT_META.json` a `"initialized": true`.
10. Recién entonces comenzar la implementación si fue solicitada.

## Flujo obligatorio

Para tareas medianas o grandes:

1. Entender.
2. Explorar en modo lectura.
3. Especificar.
4. Planificar.
5. Implementar cambios pequeños.
6. Probar.
7. Revisar el diff.
8. Validar.
9. Actualizar estado.
10. Cerrar.

## Reglas de implementación

- Leer antes de modificar.
- No inventar APIs, rutas, archivos, funciones, librerías, columnas ni esquemas.
- Reutilizar patrones existentes.
- Hacer el cambio mínimo suficiente.
- No hacer refactors globales fuera de alcance.
- No modificar interfaces públicas sin advertir.
- No modificar base de datos o migraciones críticas sin revisión humana.
- No instalar dependencias sin justificar.
- No tocar `.env`, tokens, cookies, secretos o credenciales.
- No ejecutar comandos destructivos sin autorización.
- No borrar datos, archivos o respaldos sin autorización.
- No ocultar errores con fallbacks silenciosos.
- No dejar TODO, mocks, stubs o placeholders como solución final.
- No declarar éxito sin validación real.

## Debugging

1. Reproducir.
2. Recopilar evidencia.
3. Delimitar el flujo.
4. Formular hipótesis.
5. Buscar causa raíz.
6. Aplicar cambio mínimo.
7. Revalidar.

Si dos intentos consecutivos no resuelven el mismo problema:

- detener nuevos parches;
- usar `luna-debug`;
- reanalizar desde el requisito y la arquitectura;
- reportar evidencia y siguiente prueba.

## Review

La implementación y la revisión son fases separadas.

Cuando sea viable:

- una ejecución implementa;
- otra ejecución revisa en modo lectura;
- se corrigen únicamente hallazgos confirmados.

## Definition of Done

Una tarea solo está terminada cuando sean aplicables y se hayan cumplido:

- requisito implementado;
- tests PASS;
- lint PASS;
- typecheck PASS;
- build PASS;
- flujo afectado probado;
- `git diff` revisado;
- sin cambios fuera de alcance;
- sin secretos;
- sin dependencias injustificadas;
- `PROJECT_STATE.md` actualizado;
- riesgos y pendientes reportados.

## Regla GitHub

El repositorio template se usa exclusivamente como fuente para crear proyectos nuevos.

Cada aplicación real debe tener su propio repositorio independiente generado desde el template.

No desarrollar aplicaciones reales directamente en el repositorio template.

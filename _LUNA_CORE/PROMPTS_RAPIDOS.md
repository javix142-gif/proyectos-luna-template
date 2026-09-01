# Prompts rápidos — modo GitHub Template

## Inicializar repositorio

Usa `luna-inicializar-proyecto`.

Inicializa ESTE repositorio como [TIPO] llamado [NOMBRE].
Trabaja en la raíz actual.
Completa PRODUCT_SPEC, TECH_SPEC, TASKS y PROJECT_STATE.
No modifiques el núcleo protegido.
Solo después implementa si corresponde.

## Explorar sin cambiar

Revisa el proyecto en modo lectura.
Lee AGENTS.md y PROJECT_STATE.md.
Identifica estructura, flujo, archivos relevantes, riesgos y plan.
No modifiques nada.

## Implementar

Usa `luna-implementar`.
Implementa solo [TAREA].
No amplíes alcance.
Ejecuta validaciones y revisa el diff.

## Debug

Usa `luna-debug`.
Reproduce el error y determina causa raíz antes de modificar.
Dos intentos fallidos obligan a reanalizar.

## Review

Usa `luna-review`.
Revisa el diff en modo lectura.
Clasifica hallazgos.
No modifiques.

## Cierre

Actualiza PROJECT_STATE y SESSION_SUMMARY.
Reporta archivos, validaciones, riesgos y próximo paso.

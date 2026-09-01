# PROYECTOS LUNA

Versión: 2.0.0-github-template

Modo: un proyecto por repositorio.

Cambios respecto de la versión workspace:

- eliminado el contenedor `PROYECTOS/`;
- cada aplicación vive en la raíz de su propio repositorio;
- preparado para GitHub Template Repository;
- agregado `PROJECT_META.json`;
- agregado flujo de inicialización de copia;
- `new-project.ps1` sustituido por `initialize-project.ps1`;
- `project-health.ps1` propaga fallos del validador;
- documentación PowerShell usa `-ExecutionPolicy Bypass` solo por proceso;
- agregado procedimiento GitHub/Codex Cloud.

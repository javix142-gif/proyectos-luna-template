# Configuración en GitHub

## Arquitectura recomendada

No usar un único repositorio que contenga todas las aplicaciones.

Mantener:

- un repositorio maestro: `proyectos-luna-template`;
- un repositorio independiente por aplicación.

Ejemplo:

- `proyectos-luna-template`
- `control-remoto-android`
- `automatizacion-sirh`
- `rpg-fantasia-oscura`
- `app-gastos`

## 1. Crear el repositorio maestro

En GitHub:

1. New repository.
2. Nombre recomendado: `proyectos-luna-template`.
3. Visibilidad: Private si no necesitas hacerlo público.
4. Start with a template: No template.
5. Add README: Off.
6. Add .gitignore: No .gitignore.
7. License: No license.
8. Create repository.

No agregues README, .gitignore ni licencia desde GitHub porque el paquete ya incluye sus propios archivos.

## 2. Subir este paquete

Extrae el ZIP.

Sube EL CONTENIDO de la carpeta `PROYECTOS-LUNA-TEMPLATE` a la raíz del repositorio.

La raíz de GitHub debe mostrar directamente:

- `AGENTS.md`
- `.agents/`
- `.codex/`
- `_LUNA_CORE/`
- `_SCRIPTS/`
- `PRODUCT_SPEC.md`
- `TECH_SPEC.md`
- `TASKS.md`
- `PROJECT_STATE.md`
- `SESSION_SUMMARY.md`

No debe quedar una carpeta adicional `PROYECTOS-LUNA-TEMPLATE/` dentro del repositorio.

## 3. Convertirlo en Template Repository

Después de subir los archivos:

1. abre el repositorio;
2. entra a `Settings`;
3. en `General`, activa `Template repository`.

No desarrolles aplicaciones reales en este repositorio.

## 4. Crear cada aplicación

Desde `proyectos-luna-template`:

1. pulsa `Use this template`;
2. selecciona `Create a new repository`;
3. asigna el nombre real de la aplicación;
4. elige visibilidad;
5. crea el repositorio.

GitHub genera un repositorio independiente con los archivos del framework.

## 5. Trabajar con Codex / Work

Selecciona el REPOSITORIO DE LA APLICACIÓN, no `proyectos-luna-template`.

Primer prompt sugerido:

> Inicializa este repositorio como proyecto [TIPO] llamado [NOMBRE].
> Usa `luna-inicializar-proyecto`.
> Trabaja en la raíz actual.
> Completa PRODUCT_SPEC, TECH_SPEC, TASKS y PROJECT_STATE antes de implementar.
> No modifiques el núcleo protegido.

## 6. Regla de independencia

Cada repositorio generado tiene:

- su propio historial Git;
- sus propios commits;
- sus propios issues/PR;
- su propio estado;
- sus propios builds.

No depende del historial del template.

## 7. Actualizaciones del framework

Los cambios futuros hechos en `proyectos-luna-template` NO se copian automáticamente a proyectos ya creados.

Esto es intencional para evitar que una actualización del framework rompa aplicaciones existentes.

Para actualizar un proyecto antiguo:

1. comparar versión de `FRAMEWORK_VERSION.md`;
2. revisar cambios del template;
3. portar únicamente cambios necesarios;
4. revisar diff;
5. ejecutar validaciones.

Nunca reemplazar automáticamente el núcleo de un proyecto productivo sin revisar el diff.

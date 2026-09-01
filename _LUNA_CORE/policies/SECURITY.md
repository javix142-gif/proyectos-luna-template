# Política de seguridad

## Siempre

- mínimo privilegio;
- respaldo antes de cambios críticos;
- revisar diff;
- no exponer secretos;
- validar dependencias;
- evitar ejecución de scripts remotos no revisados.

## Revisión humana obligatoria

Antes de ejecutar cambios que afecten:

- base de datos productiva;
- migraciones destructivas;
- eliminación de datos;
- autenticación;
- autorización/permisos;
- pagos;
- secretos;
- despliegue;
- CI/CD;
- infraestructura;
- integraciones externas con privilegios;
- MCP con acceso sensible.

## Archivos sensibles

No leer ni modificar por defecto:

- `.env`;
- llaves privadas;
- credenciales;
- tokens;
- cookies;
- almacenes de secretos.

# Política de debugging

1. No corregir antes de reproducir.
2. Separar síntoma de causa.
3. Revisar logs y stack trace relevante.
4. Localizar el primer punto donde el estado se desvía.
5. Verificar contratos de entrada/salida.
6. Revisar cambios recientes.
7. Formular una hipótesis falsable.
8. Aplicar una sola modificación causal.
9. Repetir reproducción y regresiones.
10. Documentar la causa.

## Prohibido

- cambiar múltiples subsistemas a la vez;
- capturar excepciones genéricamente para ocultar fallas;
- eliminar validaciones para hacer pasar tests;
- desactivar tests;
- sustituir una implementación rota por datos hardcodeados.

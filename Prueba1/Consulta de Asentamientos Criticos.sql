SELECT
    id_asentamiento,
    id_proyecto,
    valor_mm,
    fecha_registro,
    observaciones
FROM asentamiento
WHERE valor_mm >= 10
ORDER BY fecha_registro DESC;
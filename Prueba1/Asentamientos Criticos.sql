SELECT
    id_asentamiento,
    valor_mm,
    fecha_registro,
    observaciones
FROM asentamiento
WHERE valor_mm >= 15;
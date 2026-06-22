CREATE VIEW vw_AlertasCriticas
AS
SELECT
    id_alerta,
    id_proyecto,
    tipo_alerta,
    descripcion,
    nivel_alerta,
    fecha_alerta
FROM alerta
WHERE tipo_alerta IN ('Seguridad', 'Clima', 'Asentamiento');
CREATE VIEW vw_EstadoEstructural
AS
SELECT
    e.id_esfuerzo,
    e.id_proyecto,
    e.elemento,
    e.flexion,
    e.cortante,
    e.torsion,
    a.valor_mm,
    a.fecha_registro
FROM esfuerzo_estructural e
LEFT JOIN asentamiento a
    ON e.id_proyecto = a.id_proyecto;
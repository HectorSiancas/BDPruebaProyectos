SELECT
    b.id_bitacora,
    p.nombre,
    b.fecha,
    b.descripcion,
    b.responsable
FROM bitacora_obra b
INNER JOIN Proyecto p
    ON b.id_proyecto = p.id_proyecto
ORDER BY b.fecha;
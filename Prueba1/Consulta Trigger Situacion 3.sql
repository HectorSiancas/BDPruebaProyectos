SELECT 
    a.id_alerta,
    a.id_proyecto,
    p.nombre AS proyecto,
    a.tipo_alerta,
    a.descripcion,
    a.nivel_alerta,
    a.fecha_alerta
FROM alerta a
INNER JOIN proyecto p
    ON a.id_proyecto = p.id_proyecto
ORDER BY a.id_alerta DESC;
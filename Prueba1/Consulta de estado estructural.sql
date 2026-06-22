SELECT
    id_esfuerzo,
    id_proyecto,
    elemento,
    flexion,
    cortante,
    torsion,
    carga_viva,
    carga_muerta
FROM esfuerzo_estructural
ORDER BY id_esfuerzo DESC;
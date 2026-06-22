CREATE VIEW vw_MaquinariaPendiente
AS
SELECT
    id_maquinaria,
    nombre,
    tipo,
    estado,
    fecha_mantenimiento
FROM maquinaria
WHERE estado <> 'Operativa';
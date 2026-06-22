CREATE PROCEDURE usp_ObtenerEstadoEstructuralRealTime
    @id_proyecto INT = NULL -- Opcional: Filtrar por un proyecto específico o ver todos
AS
BEGIN
    SET NOCOUNT ON;

    -- Consulta que une el historial de bitácora/proyectos con alertas y asentamientos en tiempo real
    SELECT 
        b.id_proyecto,
        b.fecha AS fecha_bitacora,
        b.descripcion AS actividad_actual,
        b.responsable,
        a.tipo_alerta,
        a.descripcion AS detalle_alerta,
        a.nivel_alerta,
        a.fecha_alerta,
        ase.valor_mm AS asentamiento_mm,
        ase.fecha_registro AS fecha_medicion_asentamiento,
        ase.observaciones AS estado_asentamiento
    FROM bitacora_obra b
    -- Unimos con alertas para ver si hay incidencias estructurales o de asentamiento vigentes
    LEFT JOIN alerta a 
        ON b.id_proyecto = a.id_proyecto 
        AND a.tipo_alerta IN ('Estructural', 'Asentamiento')
    -- Unimos con la tabla de asentamientos para traer el último estado físico registrado
    LEFT JOIN asentamiento ase 
        ON b.id_proyecto = ase.id_proyecto
    WHERE 
        (@id_proyecto IS NULL OR b.id_proyecto = @id_proyecto)
        -- Filtramos para priorizar las alertas vigentes o estados que requieren atención inmediata
        AND (a.nivel_alerta IN ('Alta', 'Crítica') OR ase.observaciones IN ('Monitorear', 'Revisar', 'Crítico'))
    ORDER BY 
        ase.fecha_registro DESC, 
        a.fecha_alerta DESC;
END;
GO
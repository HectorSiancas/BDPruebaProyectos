ALTER PROCEDURE dbo.sp_GenerarCSV_AlertasCriticas
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        a.id_alerta,
        p.nombre,   
        a.tipo_alerta,
        a.descripcion,
        a.nivel_alerta,
        a.fecha_alerta
    FROM Obra.dbo.alerta a
    INNER JOIN Obra.dbo.Proyecto p
        ON a.id_proyecto = p.id_proyecto
    WHERE a.tipo_alerta IN ('Seguridad', 'Clima', 'Asentamiento');
END;
GO
CREATE PROCEDURE sp_GenerarCSV_AlertasCriticas
AS
BEGIN

    DECLARE @Comando VARCHAR(8000);

    SET @Comando =
    'bcp "SELECT
            a.id_alerta,
            p.nombre_proyecto,
            a.tipo_alerta,
            a.descripcion,
            a.nivel,
            a.fecha_hora
        FROM SituacionPropuesta.dbo.alerta a
        INNER JOIN SituacionPropuesta.dbo.proyecto p
            ON a.id_proyecto = p.id_proyecto
        WHERE a.tipo_alerta IN (''Seguridad'',''Clima'',''Asentamiento'')"
    queryout "C:\Reportes\AlertasCriticas.csv"
    -c -t, -T -S localhost';

    EXEC xp_cmdshell @Comando;

END;
GO
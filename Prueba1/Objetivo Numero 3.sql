/* =========================================================
   OBJETIVO 3: GUARDAR ESTUDIOS DE SUELO
   USANDO:
   - STORE PROCEDURE
   - INNER JOIN
   - GROUP BY
========================================================= */


CREATE PROCEDURE sp_GuardarEstudioSuelo
(
    @id_proyecto INT,
    @tipo_suelo VARCHAR(50),
    @profundidad DECIMAL(5,2),
    @resistencia DECIMAL(5,2),
    @fecha_estudio DATE,
    @responsable VARCHAR(100)
)
AS
BEGIN

    INSERT INTO Estudio_Suelo
    (
        id_proyecto,
        tipo_suelo,
        profundidad,
        resistencia,
        fecha_estudio,
        responsable
    )
    VALUES
    (
        @id_proyecto,
        @tipo_suelo,
        @profundidad,
        @resistencia,
        @fecha_estudio,
        @responsable
    );

    PRINT 'ESTUDIO DE SUELO GUARDADO CORRECTAMENTE';

END;
GO

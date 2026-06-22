/*
Objetivo 4: Registra datos hidraulicos y topograficos.

*/

------------------------------------------------------------
-- STORE PROCEDURE
-- REGISTRAR DATOS HIDRÁULICOS
------------------------------------------------------------

CREATE PROCEDURE sp_RegistrarDatoHidraulico
(
    @id_proyecto INT,
    @caudal DECIMAL(10,2),
    @perdida_carga DECIMAL(10,2),
    @periodo_retorno INT
)
AS
BEGIN

    INSERT INTO hidraulica
    (
        id_proyecto,
        caudal,
        perdida_carga,
        periodo_retorno
    )
    VALUES
    (
        @id_proyecto,
        @caudal,
        @perdida_carga,
        @periodo_retorno
    );

    PRINT 'DATOS HIDRÁULICOS REGISTRADOS';

END;
GO
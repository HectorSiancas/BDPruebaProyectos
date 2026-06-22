CREATE PROCEDURE sp_RegistrarBitacora
(
    @id_proyecto INT,
    @fecha DATE,
    @descripcion VARCHAR(300),
    @responsable VARCHAR(100)
)
AS
BEGIN
    INSERT INTO bitacora_obra
    VALUES
    (
        @id_proyecto,
        @fecha,
        @descripcion,
        @responsable
    );
END;
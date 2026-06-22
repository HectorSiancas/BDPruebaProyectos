CREATE TRIGGER trg_AuditoriaMaterial
ON material
AFTER UPDATE
AS
BEGIN

    INSERT INTO auditoria
    (
        tabla_afectada,
        accion_realizada,
        usuario_accion,
        fecha_accion,
        descripcion
    )
    VALUES
    (
        'material',
        'UPDATE',
        SYSTEM_USER,
        GETDATE(),
        'Actualización automática de materiales'
    );

END;
CREATE TRIGGER trg_ControlStockMinimo
ON inventario_cemento
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO alerta
    (
        id_proyecto,
        tipo_alerta,
        descripcion,
        nivel_alerta,
        fecha_alerta
    )
    SELECT
        i.id_proyecto,
        'Inventario',
        'ALERTA AUTOMÁTICA: Stock de cemento por debajo del mínimo permitido. Stock actual: '
            + CAST(i.stock_actual_kg AS VARCHAR(20))
            + ' kg',
        'Alta',
        GETDATE()
    FROM inserted i
    WHERE i.stock_actual_kg < i.stock_minimo_kg;
END;
GO
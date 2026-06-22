CREATE TRIGGER trg_ControlStockMinimo
ON inventario_cemento
AFTER UPDATE
AS
BEGIN
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
        'Stock bajo',
        'Stock crítico detectado en inventario',
        'Alta',
        GETDATE()
    FROM inserted i
    WHERE i.stock_actual_kg < i.stock_minimo_kg;
END;
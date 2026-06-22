CREATE VIEW vw_InventarioCritico
AS
SELECT
    id_inventario,
    id_proyecto,
    stock_actual_kg,
    stock_minimo_kg,
    fecha_actualizacion
FROM inventario_cemento
WHERE stock_actual_kg < stock_minimo_kg;
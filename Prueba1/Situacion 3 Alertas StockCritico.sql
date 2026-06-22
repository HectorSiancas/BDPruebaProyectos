SELECT
    id_inventario,
    id_proyecto,
    stock_actual_kg,
    stock_minimo_kg
FROM inventario_cemento
WHERE stock_actual_kg < stock_minimo_kg;
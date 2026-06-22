CREATE VIEW vw_ComprasMateriales
AS
SELECT
    cm.id_compra,
    p.razon_social,
    m.nombre,
    dc.cantidad,
    dc.subtotal,
    cm.fecha_compra
FROM compra_material cm
INNER JOIN proveedor p
    ON cm.id_proveedor = p.id_proveedor
INNER JOIN detalle_compra dc
    ON cm.id_compra = dc.id_compra
INNER JOIN material m
    ON dc.id_material = m.id_material;
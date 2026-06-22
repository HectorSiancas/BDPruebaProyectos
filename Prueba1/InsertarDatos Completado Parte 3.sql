USE Obra;
GO

/* =========================
   MATERIALES
========================= */

INSERT INTO material
(nombre, tipo, unidad_medida, stock_actual, stock_minimo, costo_unitario)
VALUES
('Cemento Portland Tipo I','Construcción','Bolsa',500,100,32.50),
('Acero Corrugado 1/2','Acero','Varilla',350,80,45.00),
('Arena Gruesa','Agregado','m3',200,50,55.00),
('Piedra Chancada','Agregado','m3',180,40,60.00),
('Ladrillo King Kong','Mampostería','Unidad',5000,1000,1.20);


/* =========================
   PROVEEDORES
========================= */

INSERT INTO proveedor
(razon_social, ruc, telefono, correo, direccion)
VALUES
('Cementos Lima SAC','20111111111','987111111','ventas@cementoslima.com','Av. Industrial 120 - Lima'),
('Aceros del Perú SAC','20222222222','987222222','contacto@acerosperu.com','Jr. Metalurgia 450 - Arequipa'),
('Agregados Nacionales SAC','20333333333','987333333','ventas@agregados.com','Av. Principal 890 - Cusco');


/* =========================
   COMPRA MATERIAL
========================= */

INSERT INTO compra_material
(id_proveedor, fecha_compra, monto_total)
VALUES
(1,'2026-05-01',6500.00),
(2,'2026-05-03',9000.00),
(3,'2026-05-05',4200.00),
(1,'2026-05-07',7800.00),
(2,'2026-05-10',12000.00);


/* =========================
   DETALLE COMPRA
========================= */

INSERT INTO detalle_compra
(id_compra, id_material, cantidad, subtotal)
VALUES
(1,1,200,6500.00),

(2,2,200,9000.00),

(3,3,40,2200.00),
(3,4,30,1800.00),

(4,1,240,7800.00),

(5,2,250,11250.00),
(5,5,625,750.00);
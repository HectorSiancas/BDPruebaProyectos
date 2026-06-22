INSERT INTO incidente
(id_proyecto, fecha, descripcion, nivel_gravedad, costo_perdida)
VALUES
(1, '2026-05-01 08:00:00', 'Stock de cemento por debajo del mínimo permitido', 'Alta', 1500.00),
(1, '2026-05-01 10:15:00', 'Trabajador sin EPP detectado en zona de construcción', 'Media', 800.00),
(2, '2026-05-02 06:30:00', 'Lluvias intensas afectan cronograma de obra', 'Alta', 3200.00),
(2, '2026-05-04 09:20:00', 'Falla hidráulica en sistema de drenaje', 'Media', 2500.00),
(3, '2026-05-06 14:10:00', 'Error topográfico detectado durante replanteo', 'Media', 1800.00),
(3, '2026-05-08 16:45:00', 'Colapso parcial de encofrado', 'Alta', 7500.00),
(1, '2026-05-10 11:00:00', 'Fisuras detectadas en columnas estructurales', 'Alta', 6000.00),
(2, '2026-05-12 13:30:00', 'Retraso en suministro de concreto', 'Baja', 1200.00),
(3, '2026-05-15 07:50:00', 'Operador de maquinaria incumple protocolo de seguridad', 'Media', 900.00),
(1, '2026-05-18 17:15:00', 'Exceso de torsión identificado en vigas principales', 'Alta', 5000.00);

INSERT INTO inventario_cemento
(id_proyecto, stock_actual_kg, stock_minimo_kg, fecha_actualizacion)
VALUES
(1, 5000, 1000, '2026-05-01'),
(1, 3500, 800, '2026-05-01'),
(2, 2200, 500, '2026-05-02'),
(2, 1800, 400, '2026-05-02'),
(3, 1200, 300, '2026-05-03'),
(3, 800, 250, '2026-05-03'),
(1, 950, 1000, '2026-05-04'),
(2, 700, 800, '2026-05-05'),
(3, 450, 500, '2026-05-06'),
(1, 5200, 1000, '2026-05-07');

INSERT INTO maquinaria
(nombre, tipo, estado, fecha_mantenimiento)
VALUES
('Excavadora CAT 320', 'Excavadora', 'Operativa', '2026-04-15'),
('Retroexcavadora JCB', 'Retroexcavadora', 'Operativa', '2026-04-20'),
('Grúa Torre Liebherr', 'Grúa', 'Operativa', '2026-03-30'),
('Rodillo Compactador Dynapac', 'Compactadora', 'Mantenimiento', '2026-05-05'),
('Camión Volquete Volvo', 'Transporte', 'Operativa', '2026-04-28'),
('Mezcladora de Concreto', 'Concretera', 'Operativa', '2026-04-18'),
('Perforadora Hidráulica', 'Perforadora', 'Operativa', '2026-04-10'),
('Bulldozer Komatsu D65', 'Bulldozer', 'Fuera de servicio', '2026-05-08'),
('Montacargas Toyota', 'Montacargas', 'Operativa', '2026-04-22');
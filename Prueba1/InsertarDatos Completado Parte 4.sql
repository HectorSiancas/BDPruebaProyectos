/* =========================================================
INSERTAR DATOS EN TABLA RIESGO
========================================================= */

INSERT INTO riesgo
(id_proyecto, descripcion, probabilidad, impacto, nivel_riesgo, medida_preventiva)
VALUES
(1, 'Fisuras en columnas por exceso de carga', 'Alta', 'Alto', 'Crítico',
'Monitoreo estructural permanente'),

(1, 'Asentamiento diferencial en cimentación', 'Media', 'Alto', 'Alto',
'Reforzar compactación del suelo'),

(1, 'Falta de acero corrugado en almacén', 'Alta', 'Medio', 'Alto',
'Control semanal de inventario'),

(2, 'Falla hidráulica en sistema de drenaje', 'Media', 'Medio', 'Moderado',
'Mantenimiento preventivo'),

(2, 'Deslizamiento de terreno por lluvias', 'Alta', 'Alto', 'Crítico',
'Implementar muros de contención'),

(2, 'Retraso en suministro de concreto', 'Media', 'Medio', 'Moderado',
'Coordinar con proveedores'),

(3, 'Error topográfico en alineamiento', 'Baja', 'Alto', 'Moderado',
'Verificación diaria de mediciones'),

(3, 'Colapso parcial de encofrado', 'Alta', 'Alto', 'Crítico',
'Supervisión técnica continua'),

(3, 'Trabajadores sin EPP', 'Alta', 'Medio', 'Alto',
'Capacitación de seguridad'),

(1, 'Exceso de torsión en vigas', 'Media', 'Alto', 'Alto',
'Recalcular cargas estructurales');



/* =========================================================
INSERTAR DATOS EN TABLA TOPOGRAFIA
========================================================= */

INSERT INTO topografia
(id_proyecto, curvas_nivel, alineamiento_horizontal, alineamiento_vertical)
VALUES
(1, 'Curvas cada 1m', 'Correcto', 'Estable'),
(1, 'Curvas cada 0.5m', 'Desviado 2cm', 'Estable'),
(1, 'Curvas cada 1m', 'Correcto', 'Pendiente leve'),
(2, 'Curvas cada 2m', 'Correcto', 'Estable'),
(2, 'Curvas cada 1m', 'Desviado 5cm', 'Pendiente moderada'),
(2, 'Curvas cada 0.5m', 'Correcto', 'Estable'),
(3, 'Curvas cada 1m', 'Correcto', 'Pendiente fuerte'),
(3, 'Curvas cada 2m', 'Desviado 3cm', 'Estable'),
(3, 'Curvas cada 1m', 'Correcto', 'Pendiente leve'),
(1, 'Curvas cada 0.5m', 'Desviado 1cm', 'Estable');



/* =========================================================
INSERTAR DATOS EN TABLA USUARIO
========================================================= */

INSERT INTO usuario
(nombres, apellidos, correo, contraseña, cargo, estado)
VALUES
('Carlos', 'Medina', 'cmedina@constructora.pe', '123456', 'Ingeniero Civil', 'Activo'),

('Luis', 'Ramirez', 'lramirez@constructora.pe', '123456', 'Supervisor', 'Activo'),

('Ana', 'Torres', 'atorres@constructora.pe', '123456', 'Topógrafa', 'Activo'),

('Jorge', 'Salazar', 'jsalazar@constructora.pe', '123456', 'Ingeniero Estructural', 'Activo'),

('María', 'Quispe', 'mquispe@constructora.pe', '123456', 'Seguridad Obra', 'Activo'),

('Pedro', 'Castro', 'pcastro@constructora.pe', '123456', 'Administrador', 'Activo'),

('Lucía', 'Vega', 'lvega@constructora.pe', '123456', 'Geotecnista', 'Activo'),

('Miguel', 'Díaz', 'mdiaz@constructora.pe', '123456', 'Residente Obra', 'Activo'),

('Rosa', 'López', 'rlopez@constructora.pe', '123456', 'Control Calidad', 'Activo'),

('David', 'Herrera', 'dherrera@constructora.pe', '123456', 'Asistente Técnico', 'Inactivo');

/* =========================================================
INSERTAR DATOS EN TABLA ROL
========================================================= */

INSERT INTO rol
(nombre_rol, descripcion)
VALUES
('Administrador', 'Acceso completo al sistema'),
('Ingeniero Civil', 'Gestión estructural y supervisión'),
('Supervisor', 'Control de actividades en obra'),
('Topógrafo', 'Control topográfico y mediciones'),
('Seguridad', 'Gestión de riesgos y seguridad'),
('Geotecnista', 'Análisis de suelos y cimentaciones');



/* =========================================================
INSERTAR DATOS EN TABLA USUARIO_ROL
========================================================= */

INSERT INTO usuario_rol
(id_usuario, id_rol)
VALUES
(1, 2), -- Carlos Medina -> Ingeniero Civil
(2, 3), -- Luis Ramirez -> Supervisor
(3, 4), -- Ana Torres -> Topógrafo
(4, 2), -- Jorge Salazar -> Ingeniero Civil
(5, 5), -- Maria Quispe -> Seguridad
(6, 1), -- Pedro Castro -> Administrador
(7, 6), -- Lucia Vega -> Geotecnista
(8, 3), -- Miguel Diaz -> Supervisor
(9, 2), -- Rosa Lopez -> Ingeniero Civil
(10, 3); -- David Herrera -> Supervisor

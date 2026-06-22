USE Obra;
GO

/* =========================
   AUDITORIA
========================= */

INSERT INTO auditoria
(tabla_afectada, accion_realizada, usuario_accion, fecha_accion, descripcion)
VALUES
('proyecto','INSERT','admin','2026-05-01 08:30:00','Registro de nuevo proyecto'),
('material','UPDATE','admin','2026-05-01 09:00:00','Actualización de stock de cemento'),
('trabajador','INSERT','rrhh','2026-05-02 10:15:00','Registro de nuevo trabajador'),
('asistencia','INSERT','supervisor','2026-05-02 18:00:00','Registro de asistencia diaria'),
('concreto_armado','UPDATE','ingeniero','2026-05-03 11:20:00','Corrección de cantidad de cemento'),
('bitacora_obra','INSERT','supervisor','2026-05-03 17:10:00','Registro de actividades diarias'),
('alerta','INSERT','sistema','2026-05-04 07:45:00','Generación automática de alerta'),
('riesgo','UPDATE','seguridad','2026-05-04 13:00:00','Actualización de nivel de riesgo'),
('compra_material','INSERT','compras','2026-05-05 15:30:00','Registro de compra de materiales'),
('maquinaria','UPDATE','mantenimiento','2026-05-05 16:45:00','Actualización de mantenimiento');


/* =========================
   TRABAJADORES
========================= */

INSERT INTO trabajador
(nombres, especialidad, telefono, sueldo, estado)
VALUES
('Carlos Mendoza','Albañil','987654321',2500,'Activo'),
('Luis Ramos','Electricista','987654322',2800,'Activo'),
('Pedro Quispe','Soldador','987654323',3000,'Activo'),
('Jorge Salas','Topógrafo','987654324',3500,'Activo'),
('Miguel Torres','Operador','987654325',3200,'Activo');


/* =========================
   ASISTENCIA
========================= */

INSERT INTO asistencia
(id_trabajador, fecha, hora_ingreso, hora_salida)
VALUES
(1,'2026-05-01','07:00','17:00'),
(2,'2026-05-01','07:05','17:00'),
(3,'2026-05-01','07:10','17:05'),
(4,'2026-05-01','07:00','16:50'),
(5,'2026-05-01','07:15','17:10'),

(1,'2026-05-02','07:00','17:00'),
(2,'2026-05-02','07:03','17:02'),
(3,'2026-05-02','07:08','17:04'),
(4,'2026-05-02','07:00','16:55'),
(5,'2026-05-02','07:12','17:08'),

(1,'2026-05-03','07:00','17:00'),
(2,'2026-05-03','07:02','17:01'),
(3,'2026-05-03','07:09','17:06'),
(4,'2026-05-03','07:01','16:58'),
(5,'2026-05-03','07:11','17:09');


/* =========================
   BITACORA DE OBRA
========================= */

INSERT INTO bitacora_obra
(id_proyecto, fecha, descripcion, responsable)
VALUES
(1,'2026-05-01','Inicio de vaciado de concreto en zona A','Ing. Ramirez'),
(1,'2026-05-02','Instalación de acero estructural en columnas','Ing. Ramirez'),
(1,'2026-05-03','Supervisión de cimentación y encofrado','Ing. Torres'),
(1,'2026-05-04','Revisión de materiales recibidos en almacén','Supervisor López'),
(1,'2026-05-05','Prueba de resistencia de concreto realizado','Ing. Salazar'),
(2,'2026-05-06','Avance de excavación para pilotes','Ing. Quispe'),
(2,'2026-05-07','Inspección de maquinaria pesada','Supervisor Díaz'),
(2,'2026-05-08','Corrección de alineamiento topográfico','Topógrafo Vega'),
(3,'2026-05-09','Inicio de trabajos hidráulicos','Ing. Medina'),
(3,'2026-05-10','Verificación de normas de seguridad','Supervisor Castro');


/* =========================
   ALERTAS
========================= */

INSERT INTO alerta
(id_proyecto, tipo_alerta, descripcion, nivel_alerta, fecha_alerta)
VALUES
(1,'Stock bajo','El cemento está por debajo del stock mínimo','Alta','2026-05-01 08:00:00'),
(1,'Seguridad','Trabajador sin casco detectado','Media','2026-05-01 10:15:00'),
(1,'Clima','Lluvias intensas previstas en la zona','Alta','2026-05-02 06:30:00'),
(2,'Mantenimiento','Excavadora requiere mantenimiento preventivo','Media','2026-05-03 09:20:00'),
(2,'Estructural','Nivel de torsión elevado en viga principal','Alta','2026-05-03 14:45:00'),
(2,'Asentamiento','Asentamiento fuera del rango permitido','Crítica','2026-05-04 11:10:00'),
(3,'Hidráulica','Caudal excede el límite proyectado','Alta','2026-05-05 07:50:00'),
(3,'Seguridad','Acceso restringido bloqueado parcialmente','Media','2026-05-05 15:25:00'),
(3,'Inventario','Falta de acero corrugado en almacén','Alta','2026-05-06 12:00:00'),
(1,'Sistema','Error de sincronización de registros','Baja','2026-05-06 16:40:00');
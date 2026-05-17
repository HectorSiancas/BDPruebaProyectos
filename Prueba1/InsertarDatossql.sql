--Insertar Datos---

INSERT INTO proyecto
(nombre, ubicacion, fecha_inicio, fecha_fin, presupuesto, estado)
VALUES
('Torre Norte Residencial','Lima, Perú','2026-01-10','2027-12-20',8500000,'En ejecución');

/* Verificacion de datos:
*/

select*from proyecto

/* Nota: Con el select*from nos ayuda a poder verificar nuestros datos*/


INSERT INTO usuario
(nombres, apellidos, correo, contraseña, cargo, estado)
VALUES
('Carlos','Medina','cmedina@obra.com','123456','Ingeniero Civil','Activo'),
('Luis','Torres','ltorres@obra.com','123456','Supervisor','Activo'),
('Ana','Ruiz','aruiz@obra.com','123456','Residente','Activo'),
('Jorge','Vega','jvega@obra.com','123456','Inspector','Activo');



select*from usuario


INSERT INTO usuario
(nombres, apellidos, correo, contraseña, cargo, estado)
VALUES
('Pablito', 'Lucem', 'pab@obra.com', '456788', 'Asistente del supervisor', 'Pro activo'),
('Lami', 'Uturapia', 'lami@obra.com', '56809', 'Ingeniero Industrial', 'Activo'),
('Vulera', 'Perez', 'vul@obra.com', '9054367', 'Asistente del Ing. Industrial', 'Responsable'),
('Ito', 'Jonas', 'Jonas@obra.com', '96543689', 'Ingeniero Industrial', 'Pro-Activo');


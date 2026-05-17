
Use Obra
GO
CREATE TABLE Proyecto (
    id_proyecto INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(50) NOT NULL,
    ubicacion VARCHAR(50),
    fecha_inicio DATE,
    fecha_fin DATE,
    presupuesto DECIMAL(18,2),
    estado VARCHAR(50)
);
CREATE TABLE material(
  id_material INT PRIMARY KEY IDENTITY(1,1),
  nombre varchar (100),
  tipo varchar(50),
  unidad_medida varchar(20),
  stock_actual DECIMAL(10,2),
  stock_minimo DECIMAL(10,2),
  costo_unitario DECIMAL(10,2)

);

CREATE TABLE concreto_armado(
 id_concreto INT PRIMARY KEY IDENTITY(1,1),
     id_proyecto INT,
    resistencia_fc DECIMAL(10,2),
    cantidad_cemento_kg DECIMAL(10,2),
    cantidad_agua_l DECIMAL(10,2),
    fecha_vaciado DATE,

    FOREIGN KEY (id_proyecto)
    REFERENCES proyecto(id_proyecto)

);

CREATE TABLE esfuerzo_estructural(
    id_esfuerzo INT PRIMARY KEY IDENTITY(1,1),
    id_proyecto INT,
    elemento VARCHAR(100),
    flexion DECIMAL(10,2),
    cortante DECIMAL(10,2),
    torsion DECIMAL(10,2),
    carga_viva DECIMAL(10,2),
    carga_muerta DECIMAL(10,2),

    FOREIGN KEY (id_proyecto)
    REFERENCES proyecto(id_proyecto)
);



CREATE TABLE cimentacion (
    id_cimentacion INT PRIMARY KEY IDENTITY(1,1),
    id_proyecto INT,
    tipo VARCHAR(50),
    profundidad DECIMAL(10,2),
    capacidad_carga DECIMAL(10,2),

    FOREIGN KEY (id_proyecto)
    REFERENCES proyecto(id_proyecto)
);


CREATE TABLE estudio_suelo (
    id_estudio INT PRIMARY KEY IDENTITY(1,1),
    id_proyecto INT,
    granulometria VARCHAR(100),
    permeabilidad DECIMAL(10,4),
    capacidad_portante DECIMAL(10,2),

    FOREIGN KEY (id_proyecto)
    REFERENCES proyecto(id_proyecto)
);

CREATE TABLE asentamiento (
    id_asentamiento INT PRIMARY KEY IDENTITY(1,1),
    id_proyecto INT,
    valor_mm DECIMAL(10,2),
    fecha_registro DATE,
    observaciones VARCHAR(250),

    FOREIGN KEY (id_proyecto)
    REFERENCES proyecto(id_proyecto)
);


CREATE TABLE hidraulica (
    id_hidraulica INT PRIMARY KEY IDENTITY(1,1),
    id_proyecto INT,
    caudal DECIMAL(10,2),
    perdida_carga DECIMAL(10,2),
    periodo_retorno INT,

    FOREIGN KEY (id_proyecto)
    REFERENCES proyecto(id_proyecto)
);

CREATE TABLE topografia (
    id_topografia INT PRIMARY KEY IDENTITY(1,1),
    id_proyecto INT,
    curvas_nivel VARCHAR(100),
    alineamiento_horizontal VARCHAR(100),
    alineamiento_vertical VARCHAR(100),

    FOREIGN KEY (id_proyecto)
    REFERENCES proyecto(id_proyecto)
);



CREATE TABLE bitacora_obra (
    id_bitacora INT PRIMARY KEY IDENTITY(1,1),
    id_proyecto INT,
    fecha DATE,
    descripcion VARCHAR(500),
    responsable VARCHAR(100),

    FOREIGN KEY (id_proyecto)
    REFERENCES proyecto(id_proyecto)
);


CREATE TABLE riesgo (
    id_riesgo INT PRIMARY KEY IDENTITY(1,1),
    id_proyecto INT,
    descripcion VARCHAR(250),
    probabilidad VARCHAR(20),
    impacto VARCHAR(20),
    nivel_riesgo VARCHAR(20),
    medida_preventiva VARCHAR(250),

    FOREIGN KEY (id_proyecto)
    REFERENCES proyecto(id_proyecto)
);

CREATE TABLE incidente (
    id_incidente INT PRIMARY KEY IDENTITY(1,1),
    id_proyecto INT,
    fecha DATE,
    descripcion VARCHAR(300),
    nivel_gravedad VARCHAR(50),
    costo_perdida DECIMAL(18,2),

    FOREIGN KEY (id_proyecto)
    REFERENCES proyecto(id_proyecto)
);

CREATE TABLE inventario_cemento (
    id_inventario INT PRIMARY KEY IDENTITY(1,1),
    id_proyecto INT,
    stock_actual_kg DECIMAL(12,2),
    stock_minimo_kg DECIMAL(12,2),
    fecha_actualizacion DATE,

    FOREIGN KEY (id_proyecto)
    REFERENCES proyecto(id_proyecto)
);


CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY IDENTITY(1,1),
    nombres VARCHAR(100),
    apellidos VARCHAR(100),
    correo VARCHAR(150) UNIQUE,
    contraseña VARCHAR(255),
    cargo VARCHAR(50),
    estado VARCHAR(20)
);

CREATE TABLE rol (
    id_rol INT PRIMARY KEY IDENTITY(1,1),
    nombre_rol VARCHAR(50),
    descripcion VARCHAR(200)
);


CREATE TABLE usuario_rol (
    id_usuario INT,
    id_rol INT,

    PRIMARY KEY(id_usuario, id_rol),

    FOREIGN KEY(id_usuario)
    REFERENCES usuario(id_usuario),

    FOREIGN KEY(id_rol)
    REFERENCES rol(id_rol)
);



CREATE TABLE auditoria (
    id_auditoria INT PRIMARY KEY IDENTITY(1,1),
    tabla_afectada VARCHAR(100),
    accion_realizada VARCHAR(50),
    usuario_accion VARCHAR(100),
    fecha_accion DATETIME,
    descripcion VARCHAR(300)
);


CREATE TABLE proveedor (
    id_proveedor INT PRIMARY KEY IDENTITY(1,1),
    razon_social VARCHAR(150),
    ruc VARCHAR(20),
    telefono VARCHAR(20),
    correo VARCHAR(100),
    direccion VARCHAR(200)
);


CREATE TABLE compra_material (
    id_compra INT PRIMARY KEY IDENTITY(1,1),
    id_proveedor INT,
    fecha_compra DATE,
    monto_total DECIMAL(18,2),

    FOREIGN KEY(id_proveedor)
    REFERENCES proveedor(id_proveedor)
);


CREATE TABLE detalle_compra (
    id_detalle INT PRIMARY KEY IDENTITY(1,1),
    id_compra INT,
    id_material INT,
    cantidad DECIMAL(10,2),
    subtotal DECIMAL(18,2),

    FOREIGN KEY(id_compra)
    REFERENCES compra_material(id_compra),

    FOREIGN KEY(id_material)
    REFERENCES material(id_material)
);

CREATE TABLE trabajador (
    id_trabajador INT PRIMARY KEY IDENTITY(1,1),
    nombres VARCHAR(100),
    especialidad VARCHAR(100),
    telefono VARCHAR(20),
    sueldo DECIMAL(10,2),
    estado VARCHAR(20)
);

CREATE TABLE asistencia (
    id_asistencia INT PRIMARY KEY IDENTITY(1,1),
    id_trabajador INT,
    fecha DATE,
    hora_ingreso TIME,
    hora_salida TIME,

    FOREIGN KEY(id_trabajador)
    REFERENCES trabajador(id_trabajador)
);

CREATE TABLE maquinaria (
    id_maquinaria INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100),
    tipo VARCHAR(100),
    estado VARCHAR(50),
    fecha_mantenimiento DATE
);


CREATE TABLE alerta (
    id_alerta INT PRIMARY KEY IDENTITY(1,1),
    id_proyecto INT,
    tipo_alerta VARCHAR(100),
    descripcion VARCHAR(300),
    nivel_alerta VARCHAR(50),
    fecha_alerta DATETIME,

    FOREIGN KEY(id_proyecto)
    REFERENCES proyecto(id_proyecto)
);


























































































































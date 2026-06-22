USE Obra;
GO

CREATE TABLE Estudio_Suelo
(
    id_estudio INT PRIMARY KEY IDENTITY(1,1),
    id_proyecto INT,
    tipo_suelo VARCHAR(50),
    profundidad DECIMAL(5,2),
    resistencia DECIMAL(5,2),
    fecha_estudio DATE,
    responsable VARCHAR(100),

    FOREIGN KEY (id_proyecto)
        REFERENCES Proyecto(id_proyecto)
);
GO

------------------------------------------------------------
-- INSERTAR DATOS DE ESTUDIO DE SUELO
------------------------------------------------------------
INSERT INTO Estudio_Suelo
(id_proyecto, tipo_suelo, profundidad, resistencia, fecha_estudio, responsable)
VALUES
(1,'Arcilloso',12.50,1.20,'2026-05-01','Lucía Vega'),
(1,'Rocoso',15.00,1.50,'2026-05-03','Lucía Vega'),
(1,'Arenoso',18.20,1.80,'2026-05-05','Carlos Medina'),
(1,'Arcilloso',20.40,2.00,'2026-05-07','Carlos Medina'),
(1,'Gravoso',22.10,2.30,'2026-05-10','Luis Torres');
GO

/* =========================================================
   STORE PROCEDURE:
   GUARDA NUEVOS ESTUDIOS DE SUELO
========================================================= */
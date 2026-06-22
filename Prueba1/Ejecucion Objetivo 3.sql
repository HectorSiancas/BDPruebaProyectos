/* =========================================================
   EJECUTAR STORE PROCEDURE
========================================================= */

EXEC sp_GuardarEstudioSuelo
    @id_proyecto = 1,
    @tipo_suelo = 'Limoso',
    @profundidad = 25.50,
    @resistencia = 2.80,
    @fecha_estudio = '2026-05-15',
    @responsable = 'Ing. Salazar';
GO
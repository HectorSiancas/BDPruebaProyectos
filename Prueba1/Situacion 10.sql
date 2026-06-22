SELECT
    id_riesgo,
    descripcion,
    probabilidad,
    impacto,
    nivel_riesgo,
    medida_preventiva
FROM riesgo
WHERE nivel_riesgo IN ('Crítico','Alto');
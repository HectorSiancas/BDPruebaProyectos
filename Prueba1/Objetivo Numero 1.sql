/* 
Planeamiento estrategico de solucion considerando que nos piden
La consultas de no solo la perdida de data.
*/

---Objetivo Numero 1. CANTIDAD DE ALERTAS POR NIVEL DE RIESGO
--Objetivo:
---Detectar qué nivel de riesgo ocurre más en la obra.
---Uso de GROUP BY + JOIN


/* =========================================================
1. ALERTAS POR NIVEL DE RIESGO
Detectar cuántas alertas existen por nivel.
GROUP BY + JOIN
========================================================= */

SELECT 
    p.nombre AS proyecto,
    a.nivel_alerta,
    COUNT(a.id_alerta) AS cantidad_alertas
FROM proyecto p
INNER JOIN alerta a
    ON p.id_proyecto = a.id_proyecto
GROUP BY p.nombre, a.nivel_alerta
ORDER BY cantidad_alertas DESC;



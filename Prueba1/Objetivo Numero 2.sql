/* =========================================================
2. INCIDENTES REGISTRADOS POR PROYECTO
Control de incidentes y pérdidas económicas.
========================================================= */
/* =========================================================
CONSULTA JOIN + GROUP BY
Cantidad de usuarios por rol
========================================================= */

SELECT
    r.nombre_rol,
    COUNT(ur.id_usuario) AS total_usuarios
FROM rol r
INNER JOIN usuario_rol ur
    ON r.id_rol = ur.id_rol
GROUP BY r.nombre_rol
ORDER BY total_usuarios DESC;
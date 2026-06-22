

/*

4. Información incorrecta sobre asistencia de trabajadores
Situación
La asistencia diaria es consolidada mediante hojas Excel enviadas por correo.
Problema
Una versión antigua reemplaza accidentalmente la versión actual.
Consecuencias
•	Cálculo incorrecto de horas trabajadas. 
•	Errores en planillas. 
•	Falta de personal en actividades críticas. 
Solución propuesta
Registro centralizado de asistencia con acceso controlado.




*/


SELECT
    a.id_asistencia,
    t.nombres,
    a.fecha,
    a.hora_ingreso,
    a.hora_salida,
    DATEDIFF(HOUR,
             a.hora_ingreso,
             a.hora_salida) AS horas_trabajadas
FROM asistencia a
INNER JOIN trabajador t
    ON a.id_trabajador = t.id_trabajador;
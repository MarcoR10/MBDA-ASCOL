/*¿ Cual es el partido con mas asistencia ?*/

SELECT Id_Partido, Asistencia
FROM Partido
ORDER BY Asistencia DESC
FETCH FIRST 1 ROW ONLY;

/*¿ Cual es el Jugador con mas patrocinadores?*/
SELECT j.id_jugador, j.Nombre,
    (f.Fuerza + f.Velocidad + f.Agilidad + f.Felxibilidad) AS Rendimiento_Fisico,
    (m.Personalidad + m.Emosional + m.Estres) AS Rendimiento_Mental
FROM Jugador j
JOIN Fisica f ON j.id_jugador = f.Jugador
JOIN Mental m ON j.id_jugador = m.Jugador
ORDER BY (Rendimiento_Fisico + Rendimiento_Mental) DESC
FETCH FIRST 1 ROW ONLY;

/*¿Cual es el jugador con mejor rendimiento fisico y mental?*/

SELECT j.id_jugador, j.Nombre, COUNT(p.Nit) AS Total_Patrocinadores
FROM Jugador j
LEFT JOIN Patrocinadores p ON j.Patrocinador = p.Nit
GROUP BY j.id_jugador, j.Nombre
ORDER BY Total_Patrocinadores DESC
FETCH FIRST 1 ROW ONLY;

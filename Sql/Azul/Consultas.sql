/*¿ Cual es el partido con mas asistencia ?*/

SELECT Id_Partido, Asistencia
FROM Partido
ORDER BY Asistencia DESC
FETCH FIRST 1 ROW ONLY;

/*¿Cual es el jugador con mejor rendimiento fisico y mental?*/

SELECT j.id_jugador, j.Nombre, COUNT(p.Nit) AS Total_Patrocinadores
FROM Jugador j
LEFT JOIN Patrocinadores p ON j.Patrocinador = p.Nit
GROUP BY j.id_jugador, j.Nombre
ORDER BY Total_Patrocinadores DESC
FETCH FIRST 1 ROW ONLY;

--Consulta : Obtener todos los partidos que se jugaron en un estadio específico

SELECT *
FROM Partido
WHERE Estadio = 'NombreDelEstadio';

--Consulta : Mostrar los estadios y la cantidad de partidos que se jugaron en cada uno

SELECT Estadio, COUNT(*) AS Cantidad_de_Partidos
FROM Partido
GROUP BY Estadio;

--: Obtener los eventos ocurridos en un partido específico

SELECT *
FROM Eventos_Partido
WHERE Partido = '1';


-- Vista para el Presidente: Obtener información de Jugadores y sus Equipos
CREATE OR REPLACE VIEW VistaJugadorEquipo AS
SELECT j.id_jugador, j.Nombre AS NombreJugador, j.Posicion, j.Patrocinador, j.Lesion, j.Equipo,
       e.Nombre AS NombreEquipo, e.Ubicacion, e.Entrenador, e.Puntos
FROM Jugador j
JOIN Equipo e ON j.Equipo = e.Nombre;

-- Vista para el Árbitro: Obtener información de Eventos de Partido y Detalles del Partido
CREATE OR REPLACE VIEW VistaEventosPartido AS
SELECT ep.id_evento, ep.Partido, ep.Arbitro, ep.T_Amarillas, ep.T_Rojas, ep.Faltas, ep.Esquinas,
       ep.Fuera_juego, ep.Susituciones, p.Fecha, p.Marcador, p.Estadio, p.Asistencia
FROM Eventos_Partido ep
JOIN Partido p ON ep.Partido = p.Id_Partido;

--Esta vista une la información de jugadores y equipos en una vista para obtener detalles completos sobre los jugadores y los equipos a los que pertenecen.
CREATE OR REPLACE VIEW Vista_JugadoresEquipos AS
SELECT j.id_jugador, j.Nombre, j.Posicion, j.Patrocinador, j.Lesion, j.Equipo, e.Nombre AS NombreEquipo, e.Ubicacion, e.Entrenador
FROM Jugador j
INNER JOIN Equipo e ON j.Equipo = e.Id_Equipo;


CREATE VIEW Vista_Jugador_Equipo_Patrocinador AS
SELECT j.id_jugador, j.Nombre AS Nombre_Jugador, j.Equipo,
       e.Nombre AS Nombre_Equipo, p.Nombre AS Nombre_Patrocinador
FROM Jugador j
INNER JOIN Equipo e ON j.Equipo = e.Id_Equipo
INNER JOIN Patrocinadores p ON j.Patrocinador = p.Nit;

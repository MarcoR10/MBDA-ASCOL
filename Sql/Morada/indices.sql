CREATE INDEX idx_nombre_jugador ON Jugador(Nombre);

CREATE INDEX idx_ubicacion_equipo ON Equipo(Ubicacion);

CREATE INDEX idx_posicion_jugador ON Jugador(Posicion);

CREATE INDEX idx_partido_evento ON Eventos_Partido(Partido);

CREATE INDEX idx_arbitro_evento ON Eventos_Partido(Arbitro);

CREATE INDEX idx_fecha_partido ON Partido(Fecha);

CREATE INDEX idx_equipo_local ON Partido(Equipo_L);

CREATE INDEX idx_equipo_visitante ON Partido(Equipo_V);

CREATE INDEX idx_nombre_patrocinador ON Patrocinadores(Nombre);

CREATE INDEX idx_id_equipo ON Equipo(Nombre);


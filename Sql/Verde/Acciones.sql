
/* Jugador */
ALTER TABLE Jugador DROP CONSTRAINT FK_Jugador_Equipo;
ALTER TABLE Jugador ADD CONSTRAINT FK_Jugador_Equipo
FOREIGN KEY (Equipo) REFERENCES Equipo(Id_Equipo) ON DELETE CASCADE;

/* Partido */
ALTER TABLE Partido DROP CONSTRAINT FK_Partido_Equipo_L;
ALTER TABLE Partido ADD CONSTRAINT FK_Partido_Equipo_L
FOREIGN KEY (Equipo_L) REFERENCES Equipo (Id_Equipo) ON DELETE CASCADE;

/* Eventos_Partido */
ALTER TABLE Eventos_Partido DROP CONSTRAINT FK_Eventos_Partido;
ALTER TABLE Eventos_Partido ADD CONSTRAINT FK_Eventos_Partido
FOREIGN KEY (Partido) REFERENCES Partido (Id_Partido) ON DELETE CASCADE;

/* Medios */
ALTER TABLE Medios DROP CONSTRAINT FK_Medios;
ALTER TABLE Medios ADD CONSTRAINT FK_Medios
FOREIGN KEY (Evento) REFERENCES Eventos_Partido (id_evento)ON DELETE CASCADE;

/* Aficionados */
ALTER TABLE Aficionados DROP CONSTRAINT FK_Aficionados_Medio;
ALTER TABLE Aficionados ADD CONSTRAINT FK_Aficionados_Medio
FOREIGN KEY (Medio_F) REFERENCES Medios(Nit) ON DELETE CASCADE;

/* Aficionados2 */
ALTER TABLE Aficionados DROP CONSTRAINT FK_Aficionados_Asistencia;
ALTER TABLE Aficionados ADD CONSTRAINT FK_Aficionados_Asistencia
FOREIGN KEY (Asistencia) REFERENCES Estadio (Nombre) ON DELETE CASCADE;


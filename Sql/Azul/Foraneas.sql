/*Claves de Tablas Foraneas*/

ALTER TABLE Fisica ADD CONSTRAINTS FK_Fisica FOREIGN KEY (Numero,Jugador) REFERENCES Evaluacion (Numero,Jugador);

ALTER TABLE Mental ADD CONSTRAINTS FK_Mental FOREIGN KEY (Numero,Jugador) REFERENCES Evaluacion (Numero,Jugador);

ALTER TABLE Evaluacion ADD CONSTRAINTS FK_Evaluacion FOREIGN KEY (Jugador) REFERENCES Jugador (id_jugador);

ALTER TABLE Jugador ADD CONSTRAINTS FK_Jugador_Patrocinador FOREIGN KEY (Patrocinador) REFERENCES Patrocinadores (Nit);

ALTER TABLE Jugador ADD CONSTRAINTS FK_Jugador_Equipo FOREIGN KEY (Equipo) REFERENCES Equipo (Id_Equipo);

ALTER TABLE Partido ADD CONSTRAINTS FK_Partido_Equipo_L FOREIGN KEY (Equipo_L) REFERENCES Equipo (Id_Equipo);

ALTER TABLE Partido ADD CONSTRAINTS FK_Partido_Equipo_V FOREIGN KEY (Equipo_V) REFERENCES Equipo (Id_Equipo);

ALTER TABLE Partido ADD CONSTRAINTS FK_Partido_Arbitro FOREIGN KEY (Arbitro) REFERENCES Arbitro (Id_Arbitro);

ALTER TABLE Partido ADD CONSTRAINTS FK_Partido_Estadio FOREIGN KEY (Estadio) REFERENCES Estadio (Nombre);

ALTER TABLE Medios ADD CONSTRAINTS FK_Medios FOREIGN KEY (Evento) REFERENCES Eventos_Partido (id_evento);

ALTER TABLE Aficionados ADD CONSTRAINTS FK_Aficionados_Medio FOREIGN KEY (Medio_F) REFERENCES Medios (Nit);

ALTER TABLE Aficionados ADD CONSTRAINTS FK_Aficionados_Asistencia FOREIGN KEY (Asistencia) REFERENCES Estadio (Nombre);

ALTER TABLE Eventos_Partido ADD CONSTRAINTS FK_Eventos_Partido FOREIGN KEY (Partido) REFERENCES Partido (Id_Partido);

ALTER TABLE Eventos_Partido ADD CONSTRAINTS FK_Eventos_Partido_Arbitro FOREIGN KEY (Arbitro) REFERENCES Arbitro (Id_Arbitro);
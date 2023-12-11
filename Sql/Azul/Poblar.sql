-- Insertar datos en la tabla Patrocinadores
INSERT INTO Patrocinadores (Nombre, Nit, Acuerdo, Producto)
VALUES ('Nike', 123456789, 'S', 1);

INSERT INTO Patrocinadores (Nombre, Nit, Acuerdo, Producto)
VALUES ('Adidas', 987654321, 'S', 2);

-- Insertar datos en la tabla Equipo
INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
VALUES ('EQUIPO1', 'Equipo Uno', TO_DATE('01-01-2000', 'DD-MM-YYYY'), 1, 'Ciudad Uno', 'Entrenador 1', 20);

INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
VALUES ('EQUIPO2', 'Equipo Dos', TO_DATE('01-01-2005', 'DD-MM-YYYY'), 1, 'Ciudad Dos', 'Entrenador 2', 18);

-- Insertar datos en la tabla Jugador
INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('JUGADOR1', 'Jugador Uno', 'Delantero', 123456789, 'N', 'EQUIPO1');

INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('JUGADOR2', 'Jugador Dos', 'Defensa', 987654321, 'N', 'EQUIPO2');

-- Insertar datos en la tabla Jugador
INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('JUGADOR1', 'Jugador Uno', 'Delantero', 123456789, 'N', 'EQUIPO1');

INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('JUGADOR2', 'Jugador Dos', 'Defensa', 987654321, 'N', 'EQUIPO2');

-- Insertar datos en la tabla Equipo
INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
VALUES ('EQUIPO1', 'Equipo Uno', TO_DATE('01-01-2000', 'DD-MM-YYYY'), 1, 'Ciudad Uno', 'Entrenador 1', 20);

INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
VALUES ('EQUIPO2', 'Equipo Dos', TO_DATE('01-01-2005', 'DD-MM-YYYY'), 1, 'Ciudad Dos', 'Entrenador 2', 18);

-- Insertar datos en la tabla Estadio
INSERT INTO Estadio (Nombre, Capacidad, Pais, Ubicacion, Inaguracion)
VALUES ('Estadio A', 60000, 'País del Estadio', 1, TO_DATE('01-01-1990', 'DD-MM-YYYY'));

-- Insertar datos en la tabla Arbitro
INSERT INTO Arbitro (Id_Arbitro, Nombre, Posicion, Pais, Experiencia)
VALUES ('Arbitro1', 'Nombre Arbitro 1', 'Principal', 'País Arbitro', 5);

-- Insertar datos en la tabla Arbitro
INSERT INTO Arbitro (Id_Arbitro, Nombre, Posicion, Pais, Experiencia)
VALUES ('Arbitro1', 'Nombre Arbitro 1', 'Principal', 'País Arbitro', 5);

-- Insertar datos en la tabla Estadio
INSERT INTO Estadio (Nombre, Capacidad, Pais, Ubicacion, Inaguracion)
VALUES ('Estadio A', 60000, 'País del Estadio', 1, TO_DATE('01-01-1990', 'DD-MM-YYYY'));

-- Insertar datos en la tabla Medios
INSERT INTO Medios (Nit, Nombre, Difusion, Redes, Evento)
VALUES ('Medio1', 'Medio', 'TV', 'Red Social 1', 1);

-- Insertar datos en la tabla Aficionados
INSERT INTO Aficionados (Carnet, Nombre, Boleto, Medio_F, Asistencia)
VALUES ('Carnet1', 'Fan 1', 1, 'Medio1', 'Estadio A');




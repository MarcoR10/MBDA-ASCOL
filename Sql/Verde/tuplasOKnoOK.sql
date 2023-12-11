-- Restricciones de clave foránea en Fisica
ALTER TABLE Fisica 
ADD CONSTRAINT FK_Fisica_Evaluacion 
FOREIGN KEY (Numero, Jugador) 
REFERENCES Evaluacion (Numero, Jugador);

-- Restricciones de clave foránea en Mental
ALTER TABLE Mental 
ADD CONSTRAINT FK_Mental_Evaluacion 
FOREIGN KEY (Numero, Jugador) 
REFERENCES Evaluacion (Numero, Jugador);
-- Restricción de clave foránea en Jugador
ALTER TABLE Jugador 
ADD CONSTRAINT FK_Jugador_Patrocinador 
FOREIGN KEY (Patrocinador) 
REFERENCES Patrocinadores (Nit);

-- Ingresar datos 
INSERT INTO Evaluacion (Numero, Jugador) VALUES (1, '001');
INSERT INTO Fisica (Numero, Jugador, Fuerza, Velocidad, Agilidad, Felxibilidad, Composicion_C) VALUES (1, '001', 90, 85, 95, 80, 60);
INSERT INTO Mental (Numero, Jugador, Personalidad, Emosional, Estres, Entrevista) VALUES (1, '001', 75, 90, 60, 'En la entrevista, Messi se mostró tranquilo y enfocado.');
INSERT INTO Patrocinadores (Nombre, Nit, Acuerdo, Producto) VALUES ('Nike', 567890, 'S', 1);
INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo) VALUES ('001', 'Lionel Messi', 'Delantero', 567890, 'N', 'Barcelona');
INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos) VALUES ('BRC', 'Barcelona', '1899-01-01', 1, 'España', 'Ronald Koeman', 30);
INSERT INTO Partido (Id_Partido, Equipo_L, Equipo_V, Fecha, Arbitro, Marcador, Estadio, Asistencia) VALUES ('P001', 'BRC', 'RMD', '2023-01-15', 'John Doe', '3-2', 'Camp Nou', 90000);

--TuplasNoOk
-- Intento de inserción incorrecto en Evaluacion (violando la clave foránea)
INSERT INTO Evaluacion (Numero) VALUES (2);
--Intento de insertar un Jugador con un Patrocinador inexistente:
INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo) VALUES ('002', 'Cristiano Ronaldo', 'Delantero', 999, 'N', 'Manchester United');
-- Intento de inserción incorrecto en Partido (violando la clave foránea)
INSERT INTO Partido (Id_Partido, Equipo_L, Equipo_V, Fecha, Arbitro, Marcador, Estadio, Asistencia) VALUES ('P002', 'XYZ', 'ABC', '2023-01-20', 'Jane Smith', '2-1', 'Old Trafford', 75000);
-- Intento de inserción incorrecto en Fisica (violando la clave foránea)
INSERT INTO Fisica (Numero, Jugador, Fuerza, Velocidad, Agilidad, Felxibilidad, Composicion_C) VALUES (2, '002', 95, 88, 92, 75, 65);
-- Intento de inserción incorrecto en Mental (violando la clave foránea)
INSERT INTO Mental (Numero, Jugador, Personalidad, Emosional, Estres, Entrevista) VALUES (2, '002', 80, 85, 50, 'En la entrevista, Ronaldo se mostró seguro y determinado.');


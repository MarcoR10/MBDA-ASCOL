

-- Insertar equipos en la tabla Equipo
INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
VALUES ('E001', 'Real Madrid', TO_DATE('06-03-1902', 'DD-MM-YYYY'), 1, 'Madrid', 'Carlo Ancelotti', 60);

INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
VALUES ('E002', 'FC Barcelona', TO_DATE('29-11-1899', 'DD-MM-YYYY'), 1, 'Barcelona', 'Xavi Hernandez', 58);

INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
VALUES ('E003', 'Bayern Munich', TO_DATE('27-02-1900', 'DD-MM-YYYY'), 1, 'Munich', 'Julian Nagelsmann', 65);

INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
VALUES ('E004', 'Manchester City', TO_DATE('16-04-1894', 'DD-MM-YYYY'), 1, 'Manchester', 'Pep Guardiola', 62);

INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
VALUES ('E005', 'Liverpool FC', TO_DATE('03-06-1892', 'DD-MM-YYYY'), 1, 'Liverpool', 'Jurgen Klopp', 57);

INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
VALUES ('E006', 'Inter Milan', TO_DATE('09-03-1908', 'DD-MM-YYYY'), 1, 'Milán', 'Simone Inzaghi', 56);

INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
VALUES ('E007', 'Ajax Amsterdam', TO_DATE('18-03-1900', 'DD-MM-YYYY'), 1, 'Ámsterdam', 'Erik ten Hag', 48);

INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
VALUES ('E008', 'Atletico Madrid', TO_DATE('26-04-1903', 'DD-MM-YYYY'), 1, 'Madrid', 'Diego Simeone', 58);

INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
VALUES ('E009', 'Juventus FC', TO_DATE('01-11-1897', 'DD-MM-YYYY'), 1, 'Turín', 'Massimiliano Allegri', 52);

INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
VALUES ('E010', 'AC Milan', TO_DATE('13-12-1899', 'DD-MM-YYYY'), 1, 'Milán', 'Stefano Pioli', 48);

INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
VALUES ('E011', 'Paris Saint-Germain', TO_DATE('12-08-1970', 'DD-MM-YYYY'), 1, 'París', 'Mauricio Pochettino', 57);

INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
VALUES ('E013', 'Borussia Dortmund', TO_DATE('19-12-1909', 'DD-MM-YYYY'), 1, 'Dortmund', 'Marco Rose', 50);

INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
VALUES ('E014', 'Manchester United', TO_DATE('01-04-1878', 'DD-MM-YYYY'), 1, 'Manchester', 'Ralf Rangnick', 52);

-- Patrocinadores

INSERT INTO Patrocinadores (Nombre, Nit, Acuerdo, Producto)
VALUES ('Nike', 123456789, 'Y', 1);

INSERT INTO Patrocinadores (Nombre, Nit, Acuerdo, Producto)
VALUES ('Adidas', 987654321, 'N', 2);

INSERT INTO Patrocinadores (Nombre, Nit, Acuerdo, Producto)
VALUES ('Puma', 567891234, 'Y', 3);

INSERT INTO Patrocinadores (Nombre, Nit, Acuerdo, Producto)
VALUES ('Coca-Cola', 345678912, 'N', 4);

INSERT INTO Patrocinadores (Nombre, Nit, Acuerdo, Producto)
VALUES ('Pepsi', 789123456, 'Y', 5);

-- Jugador

-- Jugadores para Real Madrid
INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J001', 'Karim Benzema', 'Delantero', 123456789, 'N', 'E001');

INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J002', 'Thibaut Courtois', 'Portero', 123456789, 'N', 'E001');

INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J003', 'Sergio Ramos', 'Defensa', 123456789, 'N', 'E001');

-- Jugadores para FC Barcelona
INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J004', 'Lionel Messi', 'Delantero', 987654321, 'N', 'E002');

INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J005', 'Jordi Alba', 'Defensa', 987654321, 'N', 'E002');

-- Jugadores para Bayern Munich
INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J006', 'Robert Lewandowski', 'Delantero', 987654321, 'N', 'E003');

INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J007', 'Manuel Neuer', 'Portero', 987654321, 'N', 'E003');

-- Jugadores para Manchester City
INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J008', 'Kevin De Bruyne', 'Centrocampista', 567891234, 'N', 'E004');

INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J009', 'Rúben Dias', 'Defensa', 567891234, 'N', 'E004');

-- Jugadores para Liverpool FC
INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J010', 'Virgil van Dijk', 'Defensa', 345678912, 'N', 'E005');

INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J011', 'Mohamed Salah', 'Delantero', 345678912, 'N', 'E005');

-- Jugadores para Inter Milan
INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J012', 'Romelu Lukaku', 'Delantero', 345678912, 'N', 'E006');

INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J013', 'Stefan de Vrij', 'Defensa', 789123456, 'N', 'E006');

-- Jugadores para Ajax Amsterdam
INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J014', 'Dusan Tadic', 'Delantero', 789123456, 'N', 'E007');

INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J015', 'Andre Onana', 'Portero', 789123456, 'N', 'E007');

-- Jugadores para Atletico Madrid
INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J016', 'Luis Suárez', 'Delantero', 123456789, 'N', 'E008');

INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J017', 'Koke', 'Centrocampista', 123456789, 'N', 'E008');

-- Jugadores para Juventus FC
INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J018', 'Cristiano Ronaldo', 'Delantero', 123456789, 'N', 'E009');

INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J019', 'Giorgio Chiellini', 'Defensa', 123456789, 'N', 'E009');

-- Jugadores para AC Milan
INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J020', 'Zlatan Ibrahimovic', 'Delantero', 567891234, 'N', 'E010');

INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J021', 'Theo Hernández', 'Defensa', 567891234, 'N', 'E010');

-- Jugadores para Paris Saint-Germain
INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J022', 'Kylian Mbappé', 'Delantero', 567891234, 'N', 'E011');

INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J023', 'Neymar Jr', 'Delantero', 987654321, 'N', 'E011');

-- Jugadores para Borussia Dortmund
INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J024', 'Erling Haaland', 'Delantero', 987654321, 'N', 'E013');

INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J025', 'Marco Reus', 'Centrocampista', 987654321, 'N', 'E013');

-- Jugadores para Manchester United
INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J026', 'Bruno Fernandes', 'Centrocampista', 987654321, 'N', 'E014');

INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
VALUES ('J027', 'Cristiano Ronaldo', 'Delantero', 987654321, 'N', 'E014');

-- Estadios

INSERT INTO Estadio (Nombre, Capacidad, Pais, Ubicacion, Inauguracion)
VALUES ('Camp Nou', 99354, 'España', 1, TO_DATE('24-09-1957', 'DD-MM-YYYY'));

INSERT INTO Estadio (Nombre, Capacidad, Pais, Ubicacion, Inauguracion)
VALUES ('Santiago Bernabeu', 81044, 'España', 1, TO_DATE('14-12-1947', 'DD-MM-YYYY'));

INSERT INTO Estadio (Nombre, Capacidad, Pais, Ubicacion, Inauguracion)
VALUES ('Old Trafford', 75653, 'Inglaterra', 3, TO_DATE('19-02-1910', 'DD-MM-YYYY'));

INSERT INTO Estadio (Nombre, Capacidad, Pais, Ubicacion, Inauguracion)
VALUES ('Anfield', 53394, 'Inglaterra', 3, TO_DATE('28-09-1884', 'DD-MM-YYYY'));

INSERT INTO Estadio (Nombre, Capacidad, Pais, Ubicacion, Inauguracion)
VALUES ('Parc des Princes', 48712, 'Francia', 4, TO_DATE('18-07-1897', 'DD-MM-YYYY'));

INSERT INTO Estadio (Nombre, Capacidad, Pais, Ubicacion, Inauguracion)
VALUES ('Signal Iduna Park', 81359, 'Alemania', 2, TO_DATE('02-04-1974', 'DD-MM-YYYY'));

INSERT INTO Estadio (Nombre, Capacidad, Pais, Ubicacion, Inauguracion)
VALUES ('Emirates Stadium', 60361, 'Inglaterra', 3, TO_DATE('22-07-2006', 'DD-MM-YYYY'));

INSERT INTO Estadio (Nombre, Capacidad, Pais, Ubicacion, Inauguracion)
VALUES ('San Siro', 80018, 'Italia', 5, TO_DATE('19-09-1926', 'DD-MM-YYYY'));

INSERT INTO Estadio (Nombre, Capacidad, Pais, Ubicacion, Inauguracion)
VALUES ('Stamford Bridge', 40834, 'Inglaterra', 3, TO_DATE('28-04-1877', 'DD-MM-YYYY'));

INSERT INTO Estadio (Nombre, Capacidad, Pais, Ubicacion, Inauguracion)
VALUES ('Estadio Metropolitano', 68456, 'España', 1, TO_DATE('16-09-2017', 'DD-MM-YYYY'));

INSERT INTO Estadio (Nombre, Capacidad, Pais, Ubicacion, Inauguracion)
VALUES ('Allianz Arena', 75000, 'Alemania', 2, TO_DATE('30-05-2005', 'DD-MM-YYYY'));

INSERT INTO Estadio (Nombre, Capacidad, Pais, Ubicacion, Inauguracion)
VALUES ('Estadio Olímpico de Roma', 70387, 'Italia', 5, TO_DATE('17-05-1953', 'DD-MM-YYYY'));

INSERT INTO Estadio (Nombre, Capacidad, Pais, Ubicacion, Inauguracion)
VALUES ('Estadio da Luz', 64400, 'Portugal', 4, TO_DATE('25-10-2003', 'DD-MM-YYYY'));

INSERT INTO Estadio (Nombre, Capacidad, Pais, Ubicacion, Inauguracion)
VALUES ('Estadio José Alvalade', 50865, 'Portugal', 4, TO_DATE('06-08-2003', 'DD-MM-YYYY'));

INSERT INTO Estadio (Nombre, Capacidad, Pais, Ubicacion, Inauguracion)
VALUES ('Vodafone Park', 41703, 'Turquía', 6, TO_DATE('19-11-2016', 'DD-MM-YYYY'));


-- partidos
INSERT INTO Partido (Id_Partido, Equipo_L, Equipo_V, Fecha, Arbitro, Marcador, Estadio, Asistencia)
VALUES ('P001', 'E001', 'E002', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'Michael Oliver', '3-2', 'Santiago Bernabeu', 80000);

INSERT INTO Partido (Id_Partido, Equipo_L, Equipo_V, Fecha, Arbitro, Marcador, Estadio, Asistencia)
VALUES ('P002', 'E003', 'E011', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'Felix Brych', '2-1', 'Allianz Arena', 70000);

INSERT INTO Partido (Id_Partido, Equipo_L, Equipo_V, Fecha, Arbitro, Marcador, Estadio, Asistencia)
VALUES ('P003', 'E004', 'E014', TO_DATE('2023-03-05', 'YYYY-MM-DD'), 'Anthony Taylor', '1-0', 'Etihad Stadium', 65000);

INSERT INTO Partido (Id_Partido, Equipo_L, Equipo_V, Fecha, Arbitro, Marcador, Estadio, Asistencia)
VALUES ('P004', 'E005', 'E004', TO_DATE('2023-04-10', 'YYYY-MM-DD'), 'Martin Atkinson', '2-2', 'Anfield', 75000);

INSERT INTO Partido (Id_Partido, Equipo_L, Equipo_V, Fecha, Arbitro, Marcador, Estadio, Asistencia)
VALUES ('P005', 'E009', 'E010', TO_DATE('2023-05-17', 'YYYY-MM-DD'), 'Gianluca Rocchi', '3-1', 'Allianz Stadium', 60000);

INSERT INTO Partido (Id_Partido, Equipo_L, Equipo_V, Fecha, Arbitro, Marcador, Estadio, Asistencia)
VALUES ('P006', 'E006', 'E010', TO_DATE('2023-06-25', 'YYYY-MM-DD'), 'Daniele Orsato', '2-2', 'San Siro', 65000);

INSERT INTO Partido (Id_Partido, Equipo_L, Equipo_V, Fecha, Arbitro, Marcador, Estadio, Asistencia)
VALUES ('P007', 'E008', 'E001', TO_DATE('2023-07-12', 'YYYY-MM-DD'), 'Jose Luis Gonzalez', '1-1', 'Wanda Metropolitano', 60000);

INSERT INTO Partido (Id_Partido, Equipo_L, Equipo_V, Fecha, Arbitro, Marcador, Estadio, Asistencia)
VALUES ('P008', 'E007', 'E004', TO_DATE('2023-08-05', 'YYYY-MM-DD'), 'Bjorn Kuipers', '3-0', 'Johan Cruyff Arena', 54000);

INSERT INTO Partido (Id_Partido, Equipo_L, Equipo_V, Fecha, Arbitro, Marcador, Estadio, Asistencia)
VALUES ('P009', 'E013', 'E003', TO_DATE('2023-09-18', 'YYYY-MM-DD'), 'Felix Zwayer', '1-3', 'Signal Iduna Park', 66000);

INSERT INTO Partido (Id_Partido, Equipo_L, Equipo_V, Fecha, Arbitro, Marcador, Estadio, Asistencia)
VALUES ('P010', 'E014', 'E005', TO_DATE('2023-10-22', 'YYYY-MM-DD'), 'Craig Pawson', '0-0', 'Old Trafford', 72000);

-- ARBITROS

INSERT INTO Arbitro (Id_Arbitro, Nombre, Posicion, Pais, Experiencia)
VALUES ('AR001', 'Daniele Orsato', 'Árbitro principal', 'Italia', 15);

INSERT INTO Arbitro (Id_Arbitro, Nombre, Posicion, Pais, Experiencia)
VALUES ('AR002', 'Jose Luis Gonzalez', 'Árbitro principal', 'España', 12);

INSERT INTO Arbitro (Id_Arbitro, Nombre, Posicion, Pais, Experiencia)
VALUES ('AR003', 'Bjorn Kuipers', 'Árbitro principal', 'Países Bajos', 14);

INSERT INTO Arbitro (Id_Arbitro, Nombre, Posicion, Pais, Experiencia)
VALUES ('AR004', 'Felix Zwayer', 'Árbitro principal', 'Alemania', 11);

INSERT INTO Arbitro (Id_Arbitro, Nombre, Posicion, Pais, Experiencia)
VALUES ('AR005', 'Craig Pawson', 'Árbitro principal', 'Inglaterra', 13);

INSERT INTO Arbitro (Id_Arbitro, Nombre, Posicion, Pais, Experiencia)
VALUES ('AR006', 'Anastasios', 'Árbitro principal', 'Grecia', 10);

INSERT INTO Arbitro (Id_Arbitro, Nombre, Posicion, Pais, Experiencia)
VALUES ('AR007', 'Szymon Marciniak', 'Árbitro principal', 'Polonia', 11);

INSERT INTO Arbitro (Id_Arbitro, Nombre, Posicion, Pais, Experiencia)
VALUES ('AR008', 'Tobias Stieler', 'Árbitro principal', 'Alemania', 9);

INSERT INTO Arbitro (Id_Arbitro, Nombre, Posicion, Pais, Experiencia)
VALUES ('AR009', 'Artur Soares Dias', 'Árbitro principal', 'Portugal', 12);

INSERT INTO Arbitro (Id_Arbitro, Nombre, Posicion, Pais, Experiencia)
VALUES ('AR010', 'Clement Turpin', 'Árbitro principal', 'Francia', 13);

-----Eventos_Partido

INSERT INTO Eventos_Partido (id_evento, Partido, Arbitro, T_Amarillas, T_Rojas, Faltas, Esquinas, Fuera_juego, Susituciones)
VALUES (1, 'Real Madrid vs. FC Barcelona', 'AR001', 4, 0, 12, 6, 3, 5);

INSERT INTO Eventos_Partido (id_evento, Partido, Arbitro, T_Amarillas, T_Rojas, Faltas, Esquinas, Fuera_juego, Susituciones)
VALUES (2, 'Bayern Munich vs. Manchester City', 'AR002', 3, 1, 15, 8, 2, 4);

INSERT INTO Eventos_Partido (id_evento, Partido, Arbitro, T_Amarillas, T_Rojas, Faltas, Esquinas, Fuera_juego, Susituciones)
VALUES (3, 'Liverpool FC vs. AC Milan', 'AR003', 2, 0, 10, 5, 1, 3);

INSERT INTO Eventos_Partido (id_evento, Partido, Arbitro, T_Amarillas, T_Rojas, Faltas, Esquinas, Fuera_juego, Susituciones)
VALUES (4, 'Paris S vs. Manchester United', 'AR004', 5, 2, 18, 10, 4, 6);

INSERT INTO Eventos_Partido (id_evento, Partido, Arbitro, T_Amarillas, T_Rojas, Faltas, Esquinas, Fuera_juego, Susituciones)
VALUES (5, 'Juventus FC vs. Borussia Dortmund', 'AR005', 4, 1, 14, 7, 3, 5);

INSERT INTO Eventos_Partido (id_evento, Partido, Arbitro, T_Amarillas, T_Rojas, Faltas, Esquinas, Fuera_juego, Susituciones)
VALUES (6, 'Inter Milan vs. Atletico Madrid', 'AR006', 3, 0, 11, 7, 2, 4);

INSERT INTO Eventos_Partido (id_evento, Partido, Arbitro, T_Amarillas, T_Rojas, Faltas, Esquinas, Fuera_juego, Susituciones)
VALUES (7, 'Ajax Amsterdam vs. Liverpool FC', 'AR007', 2, 0, 8, 4, 1, 2);

INSERT INTO Eventos_Partido (id_evento, Partido, Arbitro, T_Amarillas, T_Rojas, Faltas, Esquinas, Fuera_juego, Susituciones)
VALUES (8, 'Juventus FC vs. Real Madrid', 'AR008', 4, 1, 14, 8, 3, 5);

INSERT INTO Eventos_Partido (id_evento, Partido, Arbitro, T_Amarillas, T_Rojas, Faltas, Esquinas, Fuera_juego, Susituciones)
VALUES (9, 'Manchester City vs. Paris Saint-Germain', 'AR009', 5, 2, 18, 9, 4, 6);

INSERT INTO Eventos_Partido (id_evento, Partido, Arbitro, T_Amarillas, T_Rojas, Faltas, Esquinas, Fuera_juego, Susituciones)
VALUES (10, 'FC Barcelona vs. Bayern Munich', 'AR010', 3, 1, 12, 6, 2, 4);

------Medios

INSERT INTO Medios (Nit, Nombre, Difusion, Redes, Evento)
VALUES ('NIT001', 'DeportesTV', 'Tele', 'deportestv_official', 1);

INSERT INTO Medios (Nit, Nombre, Difusion, Redes, Evento)
VALUES ('NIT002', 'RadioSports', 'Radio', 'radiosports', 2);

INSERT INTO Medios (Nit, Nombre, Difusion, Redes, Evento)
VALUES ('NIT003', 'DigitalNews', 'Internet', 'digitalnewsnet', 3);

INSERT INTO Medios (Nit, Nombre, Difusion, Redes, Evento)
VALUES ('NIT004', 'SportsMagazine', 'Revista', 'sportsmagazine', 4);

INSERT INTO Medios (Nit, Nombre, Difusion, Redes, Evento)
VALUES ('NIT005', 'SocialSports', 'Redes', 'socialsportsnet', 5);

INSERT INTO Medios (Nit, Nombre, Difusion, Redes, Evento)
VALUES ('NIT006', 'SportsNow', 'Internet', 'sportsnow', 6);

INSERT INTO Medios (Nit, Nombre, Difusion, Redes, Evento)
VALUES ('NIT007', 'LiveSportsTV', 'Tele', 'livesportstv', 7);

INSERT INTO Medios (Nit, Nombre, Difusion, Redes, Evento)
VALUES ('NIT008', 'GoalUpdates', 'Redes', 'goalupdates', 8);

INSERT INTO Medios (Nit, Nombre, Difusion, Redes, Evento)
VALUES ('NIT009', 'SportsRadioFM', 'Radio', 'sportsradiofm', 9);

INSERT INTO Medios (Nit, Nombre, Difusion, Redes, Evento)
VALUES ('NIT010', 'SportingTimes', 'Revista', 'sportingtimes', 10);

---Aficionados

INSERT INTO Aficionados (Carnet, Nombre, Boleto, Medio_F, Asistencia)
VALUES ('AFC001', 'Juan Perez', 1254, 'SportsNow', 'Estadio');

INSERT INTO Aficionados (Carnet, Nombre, Boleto, Medio_F, Asistencia)
VALUES ('AFC002', 'Ana Garcia', 2245, 'LiveSportsTV', 'Casa');

INSERT INTO Aficionados (Carnet, Nombre, Boleto, Medio_F, Asistencia)
VALUES ('AFC003', 'Carlos López', 1897, 'GoalUpdates', 'Estadio');

INSERT INTO Aficionados (Carnet, Nombre, Boleto, Medio_F, Asistencia)
VALUES ('AFC004', 'Sofía Ramirez', 3321, 'SportsRadioFM', 'Estadio');

INSERT INTO Aficionados (Carnet, Nombre, Boleto, Medio_F, Asistencia)
VALUES ('AFC005', 'Diego Martinez', 1455, 'SportingTimes', 'Casa');

INSERT INTO Aficionados (Carnet, Nombre, Boleto, Medio_F, Asistencia)
VALUES ('AFC006', 'Laura Gómez', 2798, 'LiveSportsTV', 'Estadio');

INSERT INTO Aficionados (Carnet, Nombre, Boleto, Medio_F, Asistencia)
VALUES ('AFC007', 'Pedro Hernández', 1943, 'SportsNow', 'Casa');

INSERT INTO Aficionados (Carnet, Nombre, Boleto, Medio_F, Asistencia)
VALUES ('AFC008', 'María Torres', 3010, 'GoalUpdates', 'Estadio');

INSERT INTO Aficionados (Carnet, Nombre, Boleto, Medio_F, Asistencia)
VALUES ('AFC009', 'Javier Rodríguez', 2145, 'SportsRadioFM', 'Casa');

INSERT INTO Aficionados (Carnet, Nombre, Boleto, Medio_F, Asistencia)
VALUES ('AFC010', 'Andrea Ruiz', 2567, 'SportingTimes', 'Estadio');

-- Inserciones en la tabla Evaluacion
INSERT INTO Evaluacion (Numero, Jugador)
VALUES (1, 'J001');

INSERT INTO Evaluacion (Numero, Jugador)
VALUES (2, 'J002');

INSERT INTO Evaluacion (Numero, Jugador)
VALUES (3, 'J003');

INSERT INTO Evaluacion (Numero, Jugador)
VALUES (4, 'J004');

INSERT INTO Evaluacion (Numero, Jugador)
VALUES (5, 'J005');

-- Inserciones en la tabla Fisica
INSERT INTO Fisica (Numero, Jugador, Fuerza, Velocidad, Agilidad, Felxibilidad, Composicion_C)
VALUES (1, 'J001', 85, 78, 80, 75, 70);

INSERT INTO Fisica (Numero, Jugador, Fuerza, Velocidad, Agilidad, Felxibilidad, Composicion_C)
VALUES (2, 'J002', 88, 82, 75, 77, 71);

INSERT INTO Fisica (Numero, Jugador, Fuerza, Velocidad, Agilidad, Felxibilidad, Composicion_C)
VALUES (3, 'J003', 83, 85, 78, 80, 75);

INSERT INTO Fisica (Numero, Jugador, Fuerza, Velocidad, Agilidad, Felxibilidad, Composicion_C)
VALUES (4, 'J004', 80, 75, 77, 71, 68);

INSERT INTO Fisica (Numero, Jugador, Fuerza, Velocidad, Agilidad, Felxibilidad, Composicion_C)
VALUES (5, 'J005', 82, 83, 85, 78, 80);

-- Inserciones en la tabla Mental
INSERT INTO Mental (Numero, Jugador, Personalidad, Emocional, Estres, Entrevista)
VALUES (1, 'J001', 78, 85, 70, 'El jugador ha mostrado buena adaptabilidad en el equipo.');

INSERT INTO Mental (Numero, Jugador, Personalidad, Emocional, Estres, Entrevista)
VALUES (2, 'J002', 80, 82, 71, 'Tiene una actitud positiva y se desempeña bien bajo presión.');

INSERT INTO Mental (Numero, Jugador, Personalidad, Emocional, Estres, Entrevista)
VALUES (3, 'J003', 75, 88, 75, 'Muestra gran compromiso con el equipo y altos niveles de motivación.');

INSERT INTO Mental (Numero, Jugador, Personalidad, Emocional, Estres, Entrevista)
VALUES (4, 'J004', 77, 83, 72, 'Demuestra liderazgo y tiene buena comunicación con el equipo.');

INSERT INTO Mental (Numero, Jugador, Personalidad, Emocional, Estres, Entrevista)
VALUES (5, 'J005', 78, 80, 73, 'Posee gran concentración y disciplina en el campo.');







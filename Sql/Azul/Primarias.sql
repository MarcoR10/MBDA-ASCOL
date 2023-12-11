/*Clave primarias de Tablas*/

ALTER TABLE Fisica ADD CONSTRAINTS PK_Fisica PRIMARY KEY (Numero,Jugador);

ALTER TABLE Mental ADD CONSTRAINTS PK_Mental PRIMARY KEY (Numero,Jugador);

ALTER TABLE Evaluacion ADD CONSTRAINTS PK_Evaluacion PRIMARY KEY (Numero,Jugador);

ALTER TABLE Jugador ADD CONSTRAINTS PK_Jugador PRIMARY KEY (id_jugador);

ALTER TABLE Patrocinadores ADD CONSTRAINTS PK_Patrocinadores PRIMARY KEY (Nit);

ALTER TABLE Equipo ADD CONSTRAINTS PK_Equipo PRIMARY KEY (Id_Equipo);

ALTER TABLE Partido ADD CONSTRAINTS PK_Partido PRIMARY KEY (Id_Partido);

ALTER TABLE Arbitro ADD CONSTRAINTS PK_Arbitro PRIMARY KEY (Id_Arbitro);

ALTER TABLE Estadio ADD CONSTRAINTS PK_Estadio PRIMARY KEY (Nombre);

ALTER TABLE Medios ADD CONSTRAINTS PK_Medios PRIMARY KEY (Nit);

ALTER TABLE Aficionados ADD CONSTRAINTS PK_Aficionados PRIMARY KEY (Carnet);

ALTER TABLE Eventos_Partido ADD CONSTRAINTS PK_Eventos_Partido PRIMARY KEY (id_evento);
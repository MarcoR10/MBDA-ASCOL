/*Claves de Tablas Unicas*/

ALTER TABLE Patrocinadores ADD CONSTRAINT UK_Patrocinadores UNIQUE (Nombre);

ALTER TABLE Equipo ADD CONSTRAINT UK_Equipos UNIQUE (Nombre);

ALTER TABLE Aficionados ADD CONSTRAINT UK_Aficionados UNIQUE (Boleto);
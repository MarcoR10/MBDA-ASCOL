-- Definir acci�n de referencia en Fisica
ALTER TABLE Fisica 
ADD CONSTRAINT FK_Fisica_Evaluacion 
FOREIGN KEY (Numero, Jugador) 
REFERENCES Evaluacion (Numero, Jugador)
ON DELETE CASCADE;
-- Definir acci�n de referencia en Jugador
ALTER TABLE Jugador 
ADD CONSTRAINT FK_Jugador_Equipo 
FOREIGN KEY (Equipo) 
REFERENCES Equipo (Id_Equipo)
ON DELETE CASCADE;
-- Definir acci�n de referencia en Mental
ALTER TABLE Mental 
ADD CONSTRAINT FK_Mental_Evaluacion 
FOREIGN KEY (Numero, Jugador) 
REFERENCES Evaluacion (Numero, Jugador)
ON DELETE SET NULL;
--AccionesOK---
-- Eliminar una Evaluacion con 
DELETE FROM Evaluacion WHERE Numero = 1 AND Jugador = '001';
-- La acci�n CASCADE eliminar� autom�ticamente las filas correspondientes en Fisica y Mental.
-- Actualizar un Jugador en Evaluacion 
UPDATE Evaluacion SET Jugador = NULL WHERE Numero = 2 AND Jugador = '002';
-- La acci�n SET NULL establecer� autom�ticamente el campo Jugador en NULL en Fisica y Mental.

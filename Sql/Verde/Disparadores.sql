
---------------Asigna Arbitro Espa�oles
CREATE OR REPLACE TRIGGER AsignarArbitroEspa�ol
BEFORE INSERT ON Partido
FOR EACH ROW
DECLARE
    v_experiencia_maxima Arbitro.Experiencia%TYPE;
    v_id_arbitro Arbitro.Id_Arbitro%TYPE;
BEGIN
    SELECT MAX(Experiencia) INTO v_experiencia_maxima
    FROM Arbitro
    WHERE Pais = 'Espa�a';
    
    SELECT Id_Arbitro INTO v_id_arbitro
    FROM Arbitro
    WHERE Pais = 'Espa�a' AND Experiencia = v_experiencia_maxima;

    IF :NEW.Estadio = 'Santiago Bernab�u' THEN
        :NEW.Arbitro := v_id_arbitro;
    END IF;
END;
/
---------------Disparador para controlar el n�mero m�ximo de asistentes en un estadio
CREATE OR REPLACE TRIGGER trg_control_asistencia_estadio
BEFORE INSERT ON Partido
FOR EACH ROW
DECLARE
    capacidad_maxima NUMBER := 50000; -- Capacidad m�xima del estadio
    asistencia_actual NUMBER;
BEGIN
    SELECT Capacidad INTO asistencia_actual
    FROM Estadio
    WHERE Nombre = :NEW.Estadio;

    IF asistencia_actual + :NEW.Asistencia > capacidad_maxima THEN
        RAISE_APPLICATION_ERROR(-20002, 'Se ha alcanzado la capacidad m�xima de asistentes para este estadio.');
    END IF;
END;
/
--------------- Disparador para impedir la eliminaci�n de un estadio si hay partidos programados
CREATE OR REPLACE TRIGGER trg_evitar_eliminacion_estadio
BEFORE DELETE ON Estadio
FOR EACH ROW
DECLARE
    cnt_partidos NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO cnt_partidos
    FROM Partido
    WHERE Estadio = :OLD.Nombre;

    IF cnt_partidos > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'No se puede eliminar el estadio. Hay partidos programados para este estadio.');
    END IF;
END;
/
---Disparador para mantener actualizado el n�mero de puntos de un equipo
CREATE OR REPLACE TRIGGER trg_actualizar_puntos_equipo
AFTER INSERT ON Partido
FOR EACH ROW
BEGIN
    IF :NEW.Marcador = 'Gan�EquipoLocal' THEN
        UPDATE Equipo
        SET Puntos = Puntos + 3
        WHERE Id_Equipo = :NEW.Equipo_L;
    ELSIF :NEW.Marcador = 'Gan�EquipoVisitante' THEN
        UPDATE Equipo
        SET Puntos = Puntos + 3
        WHERE Id_Equipo = :NEW.Equipo_V;
    ELSE
        UPDATE Equipo
        SET Puntos = Puntos + 1
        WHERE Id_Equipo = :NEW.Equipo_L OR Id_Equipo = :NEW.Equipo_V;
    END IF;
END;
/

---- Disparador para actualizar la fecha de fundaci�n del equipo cuando se inserta un nuevo partido

CREATE OR REPLACE TRIGGER trg_actualizar_fecha_fundacion_equipo
AFTER INSERT ON Partido
FOR EACH ROW
BEGIN
    UPDATE Equipo
    SET Fundacion = SYSDATE
    WHERE Id_Equipo = :NEW.Equipo_L OR Id_Equipo = :NEW.Equipo_V;
END;
/

------------ Disparador para controlar la eliminaci�n de registros en la tabla Arbitro

CREATE OR REPLACE TRIGGER trg_control_eliminar_arbitro
BEFORE DELETE ON Arbitro
FOR EACH ROW
BEGIN
    IF :OLD.Experiencia < 5 THEN
        RAISE_APPLICATION_ERROR(-20004, 'No se puede eliminar este �rbitro debido a su baja experiencia.');
    END IF;
END;
/





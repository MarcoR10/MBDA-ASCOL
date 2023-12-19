-------PC_PRESIDENTE-----------------

CREATE OR REPLACE PACKAGE BODY PC_PRESIDENTE AS
  -- Procedimiento para insertar un nuevo jugador
  PROCEDURE InsertarJugador(
    id_jugador IN VARCHAR2,
    Nombre IN VARCHAR2,
    Posicion IN VARCHAR2,
    Patrocinador IN NUMBER,
    Lesion IN CHAR,
    Equipo IN VARCHAR2
  ) AS
  BEGIN
    INSERT INTO Jugador (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo)
    VALUES (id_jugador, Nombre, Posicion, Patrocinador, Lesion, Equipo);
    COMMIT;
  END InsertarJugador;

  -- Procedimiento para actualizar la información de un jugador
  PROCEDURE ActualizarJugador(
    id_jugador IN VARCHAR2,
    NuevoNombre IN VARCHAR2,
    NuevaPosicion IN VARCHAR2,
    NuevoPatrocinador IN NUMBER,
    NuevaLesion IN CHAR,
    NuevoEquipo IN VARCHAR2
  ) AS
  BEGIN
    UPDATE Jugador
    SET Nombre = NuevoNombre,
        Posicion = NuevaPosicion,
        Patrocinador = NuevoPatrocinador,
        Lesion = NuevaLesion,
        Equipo = NuevoEquipo
    WHERE id_jugador = id_jugador;
    COMMIT;
  END ActualizarJugador;

  -- Función para obtener información de un jugador
  FUNCTION ObtenerJugadorInfo(id_jugador IN VARCHAR2) RETURN VARCHAR2 AS
    v_Info VARCHAR2(100);
  BEGIN
    SELECT Nombre || ', ' || Posicion || ', ' || Equipo
    INTO v_Info
    FROM Jugador
    WHERE id_jugador = id_jugador;

    RETURN v_Info;
  END ObtenerJugadorInfo;
  
  -- Procedimiento para insertar un nuevo equipo
  PROCEDURE InsertarEquipo(
    Id_Equipo IN VARCHAR2,
    Nombre IN VARCHAR2,
    Fundacion IN DATE,
    Liga IN NUMBER,
    Ubicacion IN VARCHAR2,
    Entrenador IN VARCHAR2,
    Puntos IN NUMBER
  ) AS
  BEGIN
    INSERT INTO Equipo (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos)
    VALUES (Id_Equipo, Nombre, Fundacion, Liga, Ubicacion, Entrenador, Puntos);
    COMMIT;
  END InsertarEquipo;

  -- Procedimiento para actualizar la información de un equipo
  PROCEDURE ActualizarEquipo(
    Id_Equipo IN VARCHAR2,
    NuevoNombre IN VARCHAR2,
    NuevaUbicacion IN VARCHAR2,
    NuevoEntrenador IN VARCHAR2,
    NuevosPuntos IN NUMBER
  ) AS
  BEGIN
    UPDATE Equipo
    SET Nombre = NuevoNombre,
        Ubicacion = NuevaUbicacion,
        Entrenador = NuevoEntrenador,
        Puntos = NuevosPuntos
    WHERE Id_Equipo = Id_Equipo;
    COMMIT;
  END ActualizarEquipo;

  -- Función para obtener información de un equipo
  FUNCTION ObtenerEquipoInfo(Id_Equipo IN VARCHAR2) RETURN VARCHAR2 AS
    v_Info VARCHAR2(100);
  BEGIN
    SELECT Nombre || ', ' || Ubicacion || ', ' || Entrenador
    INTO v_Info
    FROM Equipo
    WHERE Id_Equipo = Id_Equipo;

    RETURN v_Info;
  END ObtenerEquipoInfo;
  
    -- Procedimiento para actualizar la información de un patrocinador
  PROCEDURE ActualizarPatrocinador(
    Nombre IN VARCHAR2,
    NuevoNit IN NUMBER,
    NuevoAcuerdo IN CHAR,
    NuevoProducto IN NUMBER
  ) AS
  BEGIN
    UPDATE Patrocinadores
    SET Nit = NuevoNit,
        Acuerdo = NuevoAcuerdo,
        Producto = NuevoProducto
    WHERE Nombre = Nombre;
    COMMIT;
  END ActualizarPatrocinador;
  
END PC_PRESIDENTE;
/

-------MEDICO-----------------

CREATE OR REPLACE PACKAGE BODY PC_MEDICO AS
  -- Procedimiento para insertar una nueva evaluación
  PROCEDURE InsertarEvaluacion(
    Numero IN NUMBER,
    Jugador IN VARCHAR2
  ) AS
  BEGIN
    INSERT INTO Evaluacion (Numero, Jugador)
    VALUES (Numero, Jugador);
    COMMIT;
  END InsertarEvaluacion;

  -- Procedimiento para eliminar una evaluación
  PROCEDURE EliminarEvaluacion(
    Numero IN NUMBER
  ) AS
  BEGIN
    DELETE FROM Evaluacion WHERE Numero = Numero;
    COMMIT;
  END EliminarEvaluacion;

  -- Función para obtener información de una evaluación
  FUNCTION ObtenerInfoEvaluacion(Numero IN NUMBER) RETURN VARCHAR2 AS
    v_Info VARCHAR2(100);
  BEGIN
    SELECT Jugador
    INTO v_Info
    FROM Evaluacion
    WHERE Numero = Numero;

    RETURN v_Info;
  END ObtenerInfoEvaluacion;
  
  -- Procedimiento para actualizar los datos mentales
  PROCEDURE ActualizarDatosMentales(
    Numero IN NUMBER,
    NuevoPersonalidad IN NUMBER,
    NuevoEmocional IN NUMBER,
    NuevoEstres IN NUMBER,
    NuevaEntrevista IN VARCHAR2
  ) AS
  BEGIN
    UPDATE Mental
    SET Personalidad = NuevoPersonalidad,
        Emocional = NuevoEmocional,
        Estres = NuevoEstres,
        Entrevista = NuevaEntrevista
    WHERE Numero = Numero;
    COMMIT;
  END ActualizarDatosMentales;
  
   -- Procedimiento para actualizar los datos físicos
  PROCEDURE ActualizarDatosFisicos(
    Numero IN NUMBER,
    NuevaFuerza IN NUMBER,
    NuevaVelocidad IN NUMBER,
    NuevaAgilidad IN NUMBER,
    NuevaFlexibilidad IN NUMBER,
    NuevaComposicion_C IN NUMBER
  ) AS
  BEGIN
    UPDATE Fisica
    SET Fuerza = NuevaFuerza,
        Velocidad = NuevaVelocidad,
        Agilidad = NuevaAgilidad,
        Felxibilidad = NuevaFlexibilidad,
        Composicion_C = NuevaComposicion_C
    WHERE Numero = Numero;
    COMMIT;
  END ActualizarDatosFisicos;
  
END PC_MEDICO;
/

-------ARBITRO-----------------
CREATE OR REPLACE PACKAGE BODY PC_ARBITRO AS
  -- Procedimiento para insertar un nuevo evento de partido
  PROCEDURE InsertarEventoPartido(
    id_evento IN NUMBER,
    Partido IN VARCHAR2,
    Arbitro IN VARCHAR2,
    T_Amarillas IN NUMBER,
    T_Rojas IN NUMBER,
    Faltas IN NUMBER,
    Esquinas IN NUMBER,
    Fuera_juego IN NUMBER,
    Susituciones IN NUMBER
  ) AS
  BEGIN
    INSERT INTO Eventos_Partido (id_evento, Partido, Arbitro, T_Amarillas, T_Rojas, Faltas, Esquinas, Fuera_juego, Susituciones)
    VALUES (id_evento, Partido, Arbitro, T_Amarillas, T_Rojas, Faltas, Esquinas, Fuera_juego, Susituciones);
    COMMIT;
  END InsertarEventoPartido;

  -- Procedimiento para actualizar información de evento de partido
  PROCEDURE ActualizarEventoPartido(
    id_evento IN NUMBER,
    NuevoPartido IN VARCHAR2,
    NuevoArbitro IN VARCHAR2,
    NuevasAmarillas IN NUMBER,
    NuevasRojas IN NUMBER,
    NuevasFaltas IN NUMBER,
    NuevasEsquinas IN NUMBER,
    NuevasFueraJuego IN NUMBER,
    NuevasSustituciones IN NUMBER
  ) AS
  BEGIN
    UPDATE Eventos_Partido
    SET Partido = NuevoPartido,
        Arbitro = NuevoArbitro,
        T_Amarillas = NuevasAmarillas,
        T_Rojas = NuevasRojas,
        Faltas = NuevasFaltas,
        Esquinas = NuevasEsquinas,
        Fuera_juego = NuevasFueraJuego,
        Susituciones = NuevasSustituciones
    WHERE id_evento = id_evento;
    COMMIT;
  END ActualizarEventoPartido;

  -- Función para obtener información de evento de partido
  FUNCTION ObtenerInfoEventoPartido(id_evento IN NUMBER) RETURN VARCHAR2 AS
    v_Info VARCHAR2(100);
  BEGIN
    SELECT Partido || ', ' || Arbitro || ', ' || T_Amarillas || ', ' || T_Rojas || ', ' || Faltas || ', ' ||
           Esquinas || ', ' || Fuera_juego || ', ' || Susituciones
    INTO v_Info
    FROM Eventos_Partido
    WHERE id_evento = id_evento;

    RETURN v_Info;
  END ObtenerInfoEventoPartido;
  
  -- Procedimiento para actualizar información de un partido
  PROCEDURE ActualizarPartido(
    Id_Partido IN VARCHAR2,
    NuevoEquipo_L IN VARCHAR2,
    NuevoEquipo_V IN VARCHAR2,
    NuevaFecha IN DATE,
    NuevoArbitro IN VARCHAR2,
    NuevoMarcador IN VARCHAR2,
    NuevoEstadio IN VARCHAR2,
    NuevaAsistencia IN NUMBER
  ) AS
  BEGIN
    UPDATE Partido
    SET Equipo_L = NuevoEquipo_L,
        Equipo_V = NuevoEquipo_V,
        Fecha = NuevaFecha,
        Arbitro = NuevoArbitro,
        Marcador = NuevoMarcador,
        Estadio = NuevoEstadio,
        Asistencia = NuevaAsistencia
    WHERE Id_Partido = Id_Partido;
    COMMIT;
  END ActualizarPartido;
  
END PC_ARBITRO;
/

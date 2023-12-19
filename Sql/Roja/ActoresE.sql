
-------PRESIDENTE-----------------
CREATE OR REPLACE PACKAGE PC_PRESIDENTE AS
  -- Procedimiento para insertar un nuevo jugador
  PROCEDURE InsertarJugador(
    id_jugador IN VARCHAR2,
    Nombre IN VARCHAR2,
    Posicion IN VARCHAR2,
    Patrocinador IN NUMBER,
    Lesion IN CHAR,
    Equipo IN VARCHAR2
  );

  -- Procedimiento para actualizar la información de un jugador
  PROCEDURE ActualizarJugador(
    id_jugador IN VARCHAR2,
    NuevoNombre IN VARCHAR2,
    NuevaPosicion IN VARCHAR2,
    NuevoPatrocinador IN NUMBER,
    NuevaLesion IN CHAR,
    NuevoEquipo IN VARCHAR2
  );

  -- Función para obtener información de un jugador
  FUNCTION ObtenerJugadorInfo(id_jugador IN VARCHAR2) RETURN VARCHAR2;
  
  -- Procedimiento para insertar un nuevo equipo
  PROCEDURE InsertarEquipo(
    Id_Equipo IN VARCHAR2,
    Nombre IN VARCHAR2,
    Fundacion IN DATE,
    Liga IN NUMBER,
    Ubicacion IN VARCHAR2,
    Entrenador IN VARCHAR2,
    Puntos IN NUMBER
  );

  -- Procedimiento para actualizar la información de un equipo
  PROCEDURE ActualizarEquipo(
    Id_Equipo IN VARCHAR2,
    NuevoNombre IN VARCHAR2,
    NuevaUbicacion IN VARCHAR2,
    NuevoEntrenador IN VARCHAR2,
    NuevosPuntos IN NUMBER
  );

  -- Función para obtener información de un equipo
  FUNCTION ObtenerEquipoInfo(Id_Equipo IN VARCHAR2) RETURN VARCHAR2;
  
   -- Procedimiento para actualizar la información de un patrocinador
  PROCEDURE ActualizarPatrocinador(
    Nombre IN VARCHAR2,
    NuevoNit IN NUMBER,
    NuevoAcuerdo IN CHAR,
    NuevoProducto IN NUMBER
  );
  
END PC_PRESIDENTE;
/

-------MEDICO-----------------
CREATE OR REPLACE PACKAGE PC_MEDICO AS
   -- Procedimiento para insertar una nueva evaluación
  PROCEDURE InsertarEvaluacion(
    Numero IN NUMBER,
    Jugador IN VARCHAR2
  );

  -- Procedimiento para eliminar una evaluación
  PROCEDURE EliminarEvaluacion(
    Numero IN NUMBER
  );

  -- Función para obtener información de una evaluación
  FUNCTION ObtenerInfoEvaluacion(Numero IN NUMBER) RETURN VARCHAR2;
  
  -- Procedimiento para actualizar los datos mentales
  PROCEDURE ActualizarDatosMentales(
    Numero IN NUMBER,
    NuevoPersonalidad IN NUMBER,
    NuevoEmocional IN NUMBER,
    NuevoEstres IN NUMBER,
    NuevaEntrevista IN VARCHAR2
  );
  
   -- Procedimiento para actualizar los datos físicos
  PROCEDURE ActualizarDatosFisicos(
    Numero IN NUMBER,
    NuevaFuerza IN NUMBER,
    NuevaVelocidad IN NUMBER,
    NuevaAgilidad IN NUMBER,
    NuevaFlexibilidad IN NUMBER,
    NuevaComposicion_C IN NUMBER
  );
  
END PC_MEDICO;
/

-------ARBITRO-----------------
CREATE OR REPLACE PACKAGE PC_ARBITRO AS
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
  );

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
  );

  -- Función para obtener información de evento de partido
  FUNCTION ObtenerInfoEventoPartido(id_evento IN NUMBER) RETURN VARCHAR2;
  
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
  );
  
END PC_ARBITRO;
/
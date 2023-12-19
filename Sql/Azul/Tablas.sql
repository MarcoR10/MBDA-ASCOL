/*Creacion de Tablas*/

CREATE TABLE Fisica(
    Numero NUMBER NOT NULL,
    Jugador VARCHAR2(18) NOT NULL,
    Fuerza NUMBER NOT NULL,
    Velocidad NUMBER NOT NULL,
    Agilidad NUMBER NOT NULL,
    Felxibilidad NUMBER NOT NULL,
    Composicion_C NUMBER NOT NULL
);

CREATE TABLE Mental(
    Numero NUMBER NOT NULL,
    Jugador VARCHAR2(18) NOT NULL,
    Personalidad NUMBER NOT NULL,
    Emocional NUMBER NOT NULL,
    Estres NUMBER NOT NULL,
    Entrevista VARCHAR2(100) NOT NULL
);

CREATE TABLE Evaluacion(
    Numero NUMBER NOT NULL,
    Jugador VARCHAR2(18) NOT NULL
);

CREATE TABLE Jugador(
    id_jugador VARCHAR2(18) NOT NULL,
    Nombre VARCHAR2(20) NOT NULL,
    Posicion VARCHAR2(20) NOT NULL,
    Patrocinador NUMBER NOT NULL,
    Lesion CHAR(1) NOT NULL,
    Equipo VARCHAR2(40) NOT NULL
);

CREATE TABLE Patrocinadores(
    Nombre VARCHAR2(20) NOT NULL, 
    Nit NUMBER NOT NULL,
    Acuerdo CHAR(1) NOT NULL,
    Producto NUMBER NOT NULL
);

CREATE TABLE Equipo(
    Id_Equipo VARCHAR2(40) NOT NULL, 
    Nombre VARCHAR2(20) NOT NULL,
    Fundacion DATE NOT NULL,
    Liga NUMBER NOT NULL,
    Ubicacion VARCHAR2(20) NOT NULL,
    Entrenador VARCHAR2(40) NOT NULL,
    Puntos NUMBER NOT NULL
);

CREATE TABLE Partido(
    Id_Partido VARCHAR2(20) NOT NULL,
    Equipo_L VARCHAR2(40) NOT NULL, 
    Equipo_V VARCHAR2(40) NOT NULL, 
    Fecha DATE NOT NULL,
    Arbitro VARCHAR2(25) NOT NULL,
    Marcador VARCHAR2(20) NOT NULL,
    Estadio VARCHAR2(30) NOT NULL,
    Asistencia NUMBER NOT NULL
);

CREATE TABLE Arbitro(
    Id_Arbitro VARCHAR2(25) NOT NULL, 
    Nombre VARCHAR2(20) NOT NULL,
    Posicion VARCHAR2(25) NOT NULL,
    Pais VARCHAR2(25) NOT NULL,
    Experiencia NUMBER NOT NULL
);

CREATE TABLE Eventos_Partido(
    id_evento NUMBER NOT NULL,
    Partido VARCHAR2(40) NOT NULL, 
    Arbitro VARCHAR2(25) NOT NULL,
    T_Amarillas NUMBER ,
    T_Rojas NUMBER ,
    Faltas NUMBER ,
    Esquinas NUMBER ,
    Fuera_juego NUMBER ,
    Susituciones NUMBER 
);

CREATE TABLE Estadio(
    Nombre VARCHAR2(30) NOT NULL, 
    Capacidad NUMBER NOT NULL,
    Pais VARCHAR2(20) NOT NULL,
    Ubicacion NUMBER NOT NULL,
    Inauguracion DATE NOT NULL
);

CREATE TABLE Medios(
    Nit VARCHAR2(30) NOT NULL, 
    Nombre VARCHAR2(20) NOT NULL,
    Difusion CHAR(10) NOT NULL,
    Redes VARCHAR(50) NOT NULL,
    Evento NUMBER NOT NULL
);

CREATE TABLE Aficionados(
    Carnet VARCHAR2(20) NOT NULL, 
    Nombre VARCHAR2(20) NOT NULL,
    Boleto NUMBER(10) NOT NULL,
    Medio_F VARCHAR2(30) NOT NULL,
    Asistencia VARCHAR2(30) NOT NULL
);
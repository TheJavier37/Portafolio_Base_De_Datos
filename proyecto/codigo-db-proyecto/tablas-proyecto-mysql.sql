DROP DATABASE IF EXISTS premier_league_db;

-- ============================================================
-- Proyecto de Base de Datos - Premier League
-- Autor: Javier Guarnizo Vega
-- Motor: MySQL
-- ============================================================

CREATE DATABASE premier_league_db;
USE premier_league_db;

-- Tablas DDL optimizado con todas las restricciones de integridad (PRIMARY KEY, NOT NULL, UNIQUE, DEFAULT, CHECK)

CREATE TABLE club (
    id_club VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    ciudad VARCHAR(50) NOT NULL,
    numero_trofeos INT DEFAULT 0 CHECK (numero_trofeos >= 0),
    fecha_fundacion DATE NOT NULL,
    escudo VARCHAR(500)
);

CREATE TABLE estadio (
    id_estadio VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    capacidad INT NOT NULL CHECK (capacidad > 0),
    fecha_fundacion DATE NOT NULL,
    ubicacion VARCHAR(150) NOT NULL,
    club VARCHAR(10) NOT NULL UNIQUE,
    FOREIGN KEY (club) REFERENCES club(id_club) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE jugador (
    id_jugador VARCHAR(13) PRIMARY KEY,
    primer_nombre VARCHAR(50) NOT NULL,
    segundo_nombre VARCHAR(50) DEFAULT NULL,
    primer_apellido VARCHAR(50) NOT NULL,
    segundo_apellido VARCHAR(50) DEFAULT NULL,
    nacionalidad VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    club VARCHAR(10) NOT NULL,
    FOREIGN KEY (club) REFERENCES club(id_club) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE arbitro_principal (
    id_arbitro VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    nacionalidad VARCHAR(50) NOT NULL
);

CREATE TABLE partido (
    id_partido VARCHAR(13) PRIMARY KEY,
    fecha_partido DATE NOT NULL,
    hora_partido TIME NOT NULL,
    equipo_local VARCHAR(10) NOT NULL,
    equipo_visitante VARCHAR(10) NOT NULL,
    arbitro VARCHAR(10) NOT NULL,
    estadio VARCHAR(10) NOT NULL,
    FOREIGN KEY (equipo_local) REFERENCES club(id_club),
    FOREIGN KEY (equipo_visitante) REFERENCES club(id_club),
    FOREIGN KEY (arbitro) REFERENCES arbitro_principal(id_arbitro),
    FOREIGN KEY (estadio) REFERENCES estadio(id_estadio),
    CONSTRAINT chk_equipos_distintos CHECK (equipo_local <> equipo_visitante)
);

CREATE TABLE disputa (
    id_disputa VARCHAR(13) PRIMARY KEY,
    posicion_juego VARCHAR(30) NOT NULL,
    minutos_jugados INT NOT NULL CHECK (minutos_jugados BETWEEN 0 AND 130),
    titularidad BOOLEAN NOT NULL DEFAULT TRUE,
    goles_anotados INT DEFAULT 0 CHECK (goles_anotados >= 0),
    asistencias INT DEFAULT 0 CHECK (asistencias >= 0),
    tarjetas_amarillas INT DEFAULT 0 CHECK (tarjetas_amarillas BETWEEN 0 AND 2),
    tarjetas_rojas INT DEFAULT 0 CHECK (tarjetas_rojas BETWEEN 0 AND 1),
    jugador VARCHAR(13) NOT NULL,
    partido VARCHAR(13) NOT NULL,
    FOREIGN KEY (jugador) REFERENCES jugador(id_jugador),
    FOREIGN KEY (partido) REFERENCES partido(id_partido),
    CONSTRAINT unique_jugador_partido UNIQUE (jugador, partido)
);

CREATE TABLE tabla_posicion (
    id_tabla VARCHAR(10) PRIMARY KEY,
    temporada VARCHAR(10) NOT NULL,
    puntos_totales INT DEFAULT 0 CHECK (puntos_totales >= 0),
    partidos_jugados INT DEFAULT 0 CHECK (partidos_jugados >= 0),
    partidos_ganados INT DEFAULT 0 CHECK (partidos_ganados >= 0),
    partidos_empatados INT DEFAULT 0 CHECK (partidos_empatados >= 0),
    partidos_perdidos INT DEFAULT 0 CHECK (partidos_perdidos >= 0),
    goles_favor INT DEFAULT 0 CHECK (goles_favor >= 0),
    goles_contra INT DEFAULT 0 CHECK (goles_contra >= 0),
    diferencia_goles INT DEFAULT 0,
    club VARCHAR(10) NOT NULL,
    FOREIGN KEY (club) REFERENCES club(id_club),
    CONSTRAINT unique_club_temporada UNIQUE (club, temporada)
);

CREATE TABLE resultado (
    id_resultado VARCHAR(10) PRIMARY KEY,
    tipo_resultado VARCHAR(10) NOT NULL CHECK (tipo_resultado IN ('victoria', 'empate', 'derrota')),
    puntos_otorgados INT NOT NULL CHECK (puntos_otorgados IN (0, 1, 3)),
    tabla_posicion VARCHAR(10) NOT NULL,
    partido VARCHAR(13) NOT NULL,
    FOREIGN KEY (tabla_posicion) REFERENCES tabla_posicion(id_tabla),
    FOREIGN KEY (partido) REFERENCES partido(id_partido),
    CONSTRAINT unique_equipo_partido UNIQUE (tabla_posicion, partido)
);
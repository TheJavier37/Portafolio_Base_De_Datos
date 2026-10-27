-- ejercicio 7
-- autor: javier guarnizo vega
CREATE DATABASE IF NOT EXISTS ejercicio7_db;
USE ejercicio7_db;
CREATE TABLE disco(
    titulo VARCHAR(50) PRIMARY KEY,
    precio DECIMAL(10,2) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    cantante INT AUTO_INCREMENT NOT NULL,
    FOREIGN KEY (genero) REFERENCES genero_musical (nombre_genero),
    FOREIGN KEY (cantante) REFERENCES cantante (id)
);

CREATE TABLE genero_musical(
    nombre_genero VARCHAR(50) PRIMARY KEY
);

CREATE TABLE cantante(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    pais VARCHAR(50) NOT NULL
);

CREATE TABLE cancion(
    identificador VARCHAR(10) PRIMARY KEY,
    titulo VARCHAR(50) NOT NULL
);

CREATE TABLE disco_cancion(
    id INT AUTO_INCREMENT PRIMARY KEY,
    posicion INT NOT NULL,
    disco VARCHAR(50) NOT NULL,
    cancion VARCHAR(10) NOT NULL,
    FOREIGN KEY (disco) REFERENCES disco (titulo),
    FOREIGN KEY (cancion) REFERENCES cancion (identificador)
);
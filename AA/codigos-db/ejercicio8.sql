--ejercicio 8
--autor: javier guarnizo vega
CREATE DATABASE IF NOT EXISTS ejercicio8_db;
USE ejercicio8_db;
CREATE TABLE camionero(
    cedula VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(13) NOT NULL,
    direccion TEXT NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    poblacion VARCHAR(50) NOT NULL,
    camion VARCHAR(10) NOT NULL,
    FOREIGN KEY (camion) REFERENCES camion (matricula)
);

CREATE TABLE camion(
    matricula VARCHAR(10) PRIMARY KEY,
    modelo VARCHAR(30) NOT NULL,
    tipo VARCHAR(25) NOT NULL,
    potencia INT NOT NULL
);

CREATE TABLE paquete(
    codigo VARCHAR(15) PRIMARY KEY,
    direccion TEXT NOT NULL,
    descripcion TEXT NOT NULL,
    camion VARCHAR(10) NOT NULL,
    provincias VARCHAR(8) NOT NULL,
    destinatario VARCHAR(10) NOT NULL,
    FOREIGN KEY (camion) REFERENCES camion (matricula)
);

CREATE TABLE provincia(
    codigo VARCHAR(8) PRIMARY KEY,
    nombre_provincia VARCHAR(50) NOT NULL
);

CREATE TABLE destinatario(
    cedula VARCHAR(10) PRIMARY KEY,
    direccion TEXT NOT NULL
);
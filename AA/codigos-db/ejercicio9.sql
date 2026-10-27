-- ejercicio 9
-- autor: javier guarnizo vega
CREATE DATABASE IF NOT EXISTS ejercicio9_db;
USE ejercicio9_db;
CREATE TABLE propietario(
    cedula VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL
);

CREATE TABLE telefono(
    cedula VARCHAR(10) NOT NULL,
    numero_telefono VARCHAR(13) NOT NULL,
    FOREIGN KEY (cedula) REFERENCES propietario (cedula),
    PRIMARY KEY (cedula, numero_telefono)
)

CREATE TABLE contacto_emergencia(
    cedula VARCHAR(10) NOT NULL,
    nombre_contacto VARCHAR(50) NOT NULL,
    numero_telefono VARCHAR(13) NOT NULL,
    FOREIGN KEY (cedula) REFERENCES propietario (cedula)
);

CREATE TABLE mascota(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    propietario VARCHAR(10) NOT NULL,
    FOREIGN KEY (propietario) REFERENCES propietario (cedula)
);

CREATE TABLE consulta(
    id INT AUTO_INCREMENT PRIMARY KEY,
    mascota INT NOT NULL,
    veterinario VARCHAR(12) NOT NULL,
    FOREIGN KEY (mascota) REFERENCES mascota (id),
    FOREIGN KEY (veterinario) REFERENCES veterinario (codigo)
);

CREATE TABLE diagnostico(
    consulta INT NOT NULL,
    FOREIGN KEY (consulta) REFERENCES consulta (id)
);

CREATE TABLE personal(
    codigo VARCHAR(12) PRIMARY KEY,
    cedula VARCHAR(10) NOT NULL,
    nombre VARCHAR(10) NOT NULL
);

CREATE TABLE veterinario(
    codigo VARCHAR(12) PRIMARY KEY,
    especialidad VARCHAR(45) NOT NULL,
    fecha_alta DATE NOT NULL,
    FOREIGN KEY (codigo) REFERENCES personal (codigo)
);

CREATE TABLE auxiliar(
    codigo VARCHAR(12) PRIMARY KEY,
    cotizacion DECIMAL(5,2) NOT NULL
);
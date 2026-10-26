-- ejercicio 5
-- autor: javier guarnizo vega

CREATE TABLE manager(
    id_manager VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
);

CREATE TABLE artista(
    nif VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    nombre_artistico VARCHAR(50) NOT NULL,
    manager VARCHAR(10) UNIQUE NOT NULL,
    evento VARCHAR(10) UNIQUE NOT NULL,
    FOREIGN KEY (manager) REFERENCES manager (id_manager),
    FOREIGN KEY (evento) REFERENCES evento (id_evento)
);

CREATE TABLE evento(
    id_evento VARCHAR(10) PRIMARY KEY,
    nombre_evento VARCHAR(50) NOT NULL,
    fecha DATE NOT NULL,
    numero_asistentes INT NOT NULL
);
-- ejercicio 1
-- autor: javier guarnizo vega

CREATE TABLE bibliotecario(
    id_bibliotecario VARCHAR(10) PRIMARY KEY
);

CREATE TABLE autor(
    id_autor VARCHAR(10) PRIMARY KEY
);

CREATE TABLE libro(
    isbn VARCHAR(13) PRIMARY KEY,
    bibliotecario VARCHAR(10) NOT NULL,
    FOREIGN KEY (bibliotecario) REFERENCES bibliotecario (id_bibliotecario)
);

CREATE TABLE autoria(
    id INT AUTO_INCREMENT PRIMARY KEY,
    autor VARCHAR(10) NOT NULL,
    isbn VARCHAR(13) NOT NULL,
    FOREIGN KEY (autor) REFERENCES autor,
    FOREIGN KEY (isbn) REFERENCES libro
);

CREATE TABLE socio(
    cedula VARCHAR(10) PRIMARY KEY
);

CREATE TABLE prestamo(
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_retiro DATE NOT NULL,
    fecha_entrega DATE NOT NULL,
    isbn VARCHAR(13) NOT NULL,
    socio VARCHAR(10) NOT NULL,
    FOREIGN KEY (isbn) REFERENCES libro (isbn),
    FOREIGN KEY (socio) REFERENCES socio (cedula)
);
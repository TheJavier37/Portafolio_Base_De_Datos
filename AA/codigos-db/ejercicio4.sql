-- ejercicio 4
-- autor: javier guarnizo vega

CREATE TABLE avion(
    id_avion VARCHAR(10) PRIMARY KEY
);

CREATE TABLE vuelo(
    id_vuelo INT AUTO_INCREMENT PRIMARY KEY,
    hora TIME NOT NULL,
    fecha DATE NOT NULL,
    avion VARCHAR(10) UNIQUE NOT NULL,
    FOREIGN KEY (avion) REFERENCES avion (id_avion),
);

CREATE TABLE reserva(
    asiento VARCHAR(10) PRIMARY KEY,
    tarifa DECIMAL(10,2) NOT NULL,
    vuelo INT NOT NULL,
    FOREIGN KEY (vuelo) REFERENCES vuelo (id_vuelo)
);

CREATE TABLE pasajero(
    cedula VARCHAR(10) PRIMARY KEY,
    reserva VARCHAR(10) UNIQUE NOT NULL,
    FOREIGN KEY (reserva) REFERENCES reserva (asiento)
);
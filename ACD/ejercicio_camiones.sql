-- Ejercicio realizado en clases
-- Autor: Javier Guarnizo Vega

CREATE TABLE persona(
    cedula VARCHAR(10) PRIMARY KEY,
    primer_nombre VARCHAR(25) NOT NULL,
    segundo_nombre VARCHAR(25),
    apellido_paterno VARCHAR(25) NOT NULL,
    apellido_materno VARCHAR(25) NOT NULL,
    fecha_nacimiento DATE NOT NULL
);

CREATE TABLE chofer(
    cedula VARCHAR(10) PRIMARY KEY,
    tipo_licencia SET('A','B','C','D','E','F','G') NOT NULL,
    FOREIGN KEY (cedula) REFERENCES persona (cedula)
);

CREATE TABLE pasajero(
    cedula VARCHAR(10) PRIMARY KEY,
    correo_electronico VARCHAR(50) NOT NULL,
    FOREIGN KEY (cedula) REFERENCES persona (cedula)
);

CREATE TABLE telefono(
    cedula VARCHAR(10) NOT NULL,
    telefono VARCHAR(13) NOT NULL,
    FOREIGN KEY (cedula) REFERENCES pasajero (cedula),
    PRIMARY KEY(cedula, telefono)
);

CREATE TABLE bus(
    id_bus VARCHAR(6) PRIMARY KEY,
    placa VARCHAR(8) NOT NULL,
    modelo VARCHAR(30) NOT NULL,
    numero_asientos INT NOT NULL,
    chofer_titular VARCHAR NOT NULL,
    FOREIGN KEY (chofer_titular) REFERENCES chofer (cedula)
);

CREATE TABLE ruta(
    id_ruta VARCHAR(7) PRIMARY KEY,
    origen VARCHAR(15) NOT NULL,
    destino VARCHAR(15) NOT NULL,
    distancia INT NOT NULL
);

CREATE TABLE boleto(
    id_boleto varchar(5) PRIMARY KEY,
    asiento INT NOT NULL,
    precio_cobrado DECIMAL(4,2) NOT NULL,
    datos_pasajero text NOT NULL,
    pasajero VARCHAR(10) NOT NULL,
    bus VARCHAR(6) NOT NULL,
    viaje VARCHAR(4) NOT NULL,
    FOREIGN KEY (pasajero) REFERENCES pasajero (cedula),
    FOREIGN KEY (bus) REFERENCES bus (id_bus),
    FOREIGN KEY (viaje) REFERENCES viaje (id_viaje)
);

CREATE TABLE viaje(
    id_viaje VARCHAR(4) PRIMARY KEY,
    fecha_salida DATE NOT NULL,
    hora_salida TIME NOT NULL,
    ruta VARCHAR(7) NOT NULL,
    FOREIGN KEY (ruta) REFERENCES ruta (id_ruta)
);

CREATE TABLE bus_viaje(
    viaje VARCHAR(4) NOT NULL,
    bus VARCHAR(6) NOT NULL,
    rol_bus SET('principal','apoyo') NOT NULL,
    FOREIGN KEY (viaje) REFERENCES viaje (id_viaje),
    FOREIGN KEY (bus) REFERENCES bus (id_bus),
    PRIMARY KEY (viaje, bus)
);

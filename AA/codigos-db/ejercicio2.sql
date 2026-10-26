-- ejercicio 2
-- autor: javier guarnizo vega

CREATE TABLE cliente(
    cedula VARCHAR(10) PRIMARY KEY
);

CREATE TABLE pedido(
    numero_orden INT AUTO_INCREMENT PRIMARY KEY,
    precio_unidad DECIMAL(10,2) NOT NULL,
    cliente VARCHAR(10) NOT NULL,
    mesero VARCHAR(10) NOT NULL,
    FOREIGN KEY (cliente) REFERENCES cliente (cedula),
    FOREIGN KEY (mesero) REFERENCES mesero (id_mesero)
);

CREATE TABLE mesero(
    id_mesero VARCHAR(10) PRIMARY KEY
);

CREATE TABLE plato(
    nombre_plato VARCHAR(50) PRIMARY KEY,
    categoria VARCHAR(50) NOT NULL,
    pedido INT NOT NULL,
    FOREIGN KEY (pedido) REFERENCES pedido (numero_orden),
    FOREIGN KEY (categoria) REFERENCES categoria (nombre_categoria)
);

CREATE TABLE categoria(
    nombre_categoria VARCHAR(50) PRIMARY KEY
);
-- ejercicio 6
-- autor: javier guarnizo vega

CREATE TABLE cliente(
    codigo VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    direccion TEXT NOT NULL,
    numero_telefonico VARCHAR(13) NOT NULL
);

CREATE TABLE producto(
    codigo VARCHAR(10) PRIMARY KEY,
    precio DECIMAL(10,2) NOT NULL,
    descripcion TEXT NOT NULL,
    numero_existencias INT NOT NULL,
    factura VARCHAR(10) UNIQUE NOT NULL,
    FOREIGN KEY (factura) REFERENCES factura (codigo)
);

CREATE TABLE cliente_producto(
    id INT AUTO_INCREMENT PRIMARY,
    cliente VARCHAR(10),
    producto VARCHAR(10),
    FOREIGN KEY (cliente) REFERENCES cliente (codigo),
    FOREIGN KEY (producto) REFERENCES producto (codigo)
);

CREATE TABLE proveedor(
    codigo VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    direccion TEXT NOT NULL,
    provincia VARCHAR(50) NOT NULL,
    numero_telefonico VARCHAR(13) NOT NULL
);

CREATE TABLE producto_proveedor(
    id INT AUTO_INCREMENT PRIMARY,
    producto VARCHAR(10),
    proveedor VARCHAR(10),
    FOREIGN KEY (producto) REFERENCES producto (codigo),
    FOREIGN KEY (proveedor) REFERENCES proveedor (codigo)
);

CREATE TABLE factura(
    codigo VARCHAR(10) PRIMARY KEY,
    fecha_compra DATE NOT NULL
);
-- ejercicio 3
-- autor: javier guarnizo vega

CREATE TABLE paciente(
    cedula VARCHAR(10) PRIMARY KEY
);

CREATE TABLE cita(
    id INT AUTO_INCREMENT PRIMARY KEY,
    hora TIME NOT NULL,
    fecha DATE NOT NULL,
    paciente VARCHAR(10) UNIQUE NOT NULL,
    medico VARCHAR(10) UNIQUE NOT NULL,
    FOREIGN KEY (paciente) REFERENCES paciente (cedula),
    FOREIGN KEY (medico) REFERENCES medico (id_medico)
);

CREATE TABLE receta(
    id_cita INT AUTO_INCREMENT PRIMARY KEY,
    dosis VARCHAR(25) NOT NULL,
    duracion VARCHAR(25) NOT NULL,
    FOREIGN KEY (id_cita) REFERENCES cita (id)
);

CREATE TABLE medicamento(
    codigo VARCHAR(15) PRIMARY KEY,
    receta INT NOT NULL,
    FOREIGN KEY (receta) REFERENCES receta (id_cita)
);

CREATE TABLE medico(
    id_medico VARCHAR(10) PRIMARY KEY,
    especialidad VARCHAR(50) NOT NULL,
    FOREIGN KEY (especialidad) REFERENCES especialidad (nombre_especialidad)
);

CREATE TABLE especialidad(
    nombre_especialidad VARCHAR(50) PRIMARY KEY
);
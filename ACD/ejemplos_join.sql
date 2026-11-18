CREATE DATABASE universidad;
USE universidad;

CREATE TABLE carreras (
    id_carrera INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE estudiantes (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    cedula VARCHAR(10) UNIQUE,
    nombres VARCHAR(100),
    apellidos VARCHAR(100),
    correo VARCHAR(100),
    id_carrera INT,
    FOREIGN KEY (id_carrera) REFERENCES carreras(id_carrera)
);

CREATE TABLE asignaturas (
    id_asignatura INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    semestre INT,
    creditos INT
);

CREATE TABLE matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT,
    id_asignatura INT,
    fecha DATE,
    nota DECIMAL(4,2),
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante),
    FOREIGN KEY (id_asignatura) REFERENCES asignaturas(id_asignatura)
);

INSERT INTO carreras (nombre) VALUES
('Computación'),
('Electrónica'),
('Telecomunicaciones');

INSERT INTO estudiantes
(cedula, nombres, apellidos, correo, id_carrera)
VALUES
('1101000001', 'Juan', 'Pérez', 'juan@gmail.com', 1),
('1101000002', 'María', 'López', 'maria@gmail.com', 1),
('1101000003', 'Carlos', 'Torres', 'carlos@gmail.com', 2),
('1101000004', 'Ana', 'Gómez', 'ana@gmail.com', 1),
('1101000005', 'Pedro', 'Castillo', 'pedro@gmail.com', 3);

INSERT INTO asignaturas (nombre, semestre, creditos) VALUES
('Bases de Datos', 3, 4),
('Programación', 2, 5),
('Matemáticas', 1, 4),
('Inteligencia Artificial', 5, 4),
('Redes', 3, 3);

INSERT INTO matriculas
(id_estudiante, id_asignatura, fecha, nota)
VALUES
(1, 1, '2026-10-01', 9.50),
(1, 2, '2026-10-01', 8.75),
(2, 1, '2026-10-01', 9.00),
(2, 3, '2026-10-01', 8.50),
(3, 5, '2026-10-01', 7.80),
(4, 1, '2026-10-01', 9.75),
(4, 2, '2026-10-01', 8.00);

-- Consultas
SELECT cedula, nombres, apellidos, correo, c.nombre AS carrera FROM estudiantes e INNER JOIN carreras c ON e.id_carrera = c.id_carrera;

SELECT cedula, nombres, apellidos, correo, c.nombre AS carrera FROM estudiantes e INNER JOIN carreras c ON e.id_carrera = c.id_carrera AND c.nombre="Computación";

SELECT cedula, nombres, apellidos, correo, a.nombre AS asignatura FROM estudiantes e INNER JOIN matriculas m INNER JOIN asignaturas a ON a.id_asignatura=m.id_asignatura AND e.id_estudiante=
m.id_estudiante WHERE a.nombre="Bases de Datos";
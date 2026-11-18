-- Ejemplo 2: Subconsultas en MySQL
-- Objetivo: Seleccionar los hinchas que pertenecen a los equipos registrados en la tabla correspondiente (equipos_primera).

-- 1. Creación y selección de la base de datos
CREATE DATABASE IF NOT EXISTS futbol_ecuador;
USE futbol_ecuador;

-- Limpieza previa por si se vuelve a ejecutar el script
DROP TABLE IF EXISTS hinchas;
DROP TABLE IF EXISTS equipos_primera;

-- 2. FORMULACIÓN DE TABLAS (DDL)

-- Tabla: equipos_primera (estructura exacta según DESC equipos_primera)
CREATE TABLE equipos_primera (
    num_equipo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(25),
    cantidad_socios INT,
    localidad VARCHAR(25),
    categoria SET('primera', 'segunda')
);

-- Tabla: hinchas
CREATE TABLE hinchas (
    num_hincha INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    equipo_futbol VARCHAR(25) NOT NULL
);

-- 3. INSERCIÓN DE DATOS (DML)

-- Datos de equipos_primera (se incluyen los clubes de Primera División correspondientes para demostrar el filtrado de la subconsulta frente a 'Chacaritas' o 'Bielorusia')
INSERT INTO equipos_primera (nombre_equipo, cantidad_socios, localidad, categoria) VALUES
('Barcelona', 45000, 'Guayaquil', 'primera'),
('Emelec', 32000, 'Guayaquil', 'primera'),
('LDQ', 28000, 'Quito', 'primera'),
('El Nacional', 18000, 'Quito', 'primera'),
('Delfin', 8500, 'Manta', 'primera'),
('Libertad', 5000, 'Loja', 'primera'),
('Aucas', 15000, 'Quito', 'primera');

-- Datos exactos mostrados en la tabla 'hinchas' de la imagen
INSERT INTO hinchas (num_hincha, nombres, apellidos, equipo_futbol) VALUES
(1, 'Marco', 'García', 'Barcelona'),
(2, 'Esteban', 'Guainm', 'Emelec'),
(3, 'Lucia', 'Gómez', 'LDQ'),
(4, 'Lucas', 'Maltos', 'El Nacional'),
(5, 'Mike', 'Machuca', 'Delfin'),
(6, 'Karla', 'Tigua', 'Libertad'),
(7, 'Karina', 'Juarez', 'Aucas'),
(8, 'Diana', 'Verdesoto', 'Chacaritas'),
(9, 'José', 'González', 'Bielorusia');

-- 4. CONSULTA REQUERIDA (SUBCONSULTA)

-- Seleccionar los hinchas cuyo equipo_futbol exista en la tabla equipos_primera
SELECT *
FROM hinchas
WHERE equipo_futbol IN (
    SELECT nombre_equipo
    FROM equipos_primera
);
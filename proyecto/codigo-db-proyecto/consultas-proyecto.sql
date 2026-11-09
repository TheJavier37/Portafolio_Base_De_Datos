-- ============================================================
-- Proyecto de Base de Datos - Premier League
-- Autor: Javier Guarnizo Vega
-- Motor: MySQL
-- ============================================================

USE premier_league_db;

-- Consulta 1: Listar todos los jugadores que juegan como delanteros y no son de nacionalidad inglesa.
SELECT DISTINCT 
    j.primer_nombre, 
    j.primer_apellido, 
    j.nacionalidad
FROM jugador j
INNER JOIN disputa d ON j.id_jugador = d.jugador
WHERE d.posicion_juego = 'delantero' 
    AND j.nacionalidad <> 'Inglaterra';

-- Consulta 2: Listar los clubes que han ganado al menos un partido en la temporada actual, pero que no han perdido ningún partido.
(
    SELECT p.equipo_local AS id_club
    FROM partido p
    INNER JOIN resultado r ON p.id_partido = r.partido
    WHERE r.tipo_resultado = 'victoria'

    UNION

    SELECT p.equipo_visitante AS id_club
    FROM partido p
    INNER JOIN resultado r ON p.id_partido = r.partido
    WHERE r.tipo_resultado = 'victoria'
)
EXCEPT
(
    SELECT p.equipo_local AS id_club
    FROM partido p
    INNER JOIN resultado r ON p.id_partido = r.partido
    WHERE r.tipo_resultado = 'derrota'
);

-- Consulta 3: Listar los árbitros que han arbitrado partidos en los que ha participado el club con id 'CLB01' y también han arbitrado partidos en los que ha participado el club con id 'CLB02'.
(
SELECT a.nombre, a.apellido
FROM arbitro_principal a
INNER JOIN partido p ON a.id_arbitro = p.arbitro
WHERE p.equipo_local = 'CLB01' OR p.equipo_visitante = 'CLB01'
)
INTERSECT
(
SELECT a.nombre, a.apellido
FROM arbitro_principal a
INNER JOIN partido p ON a.id_arbitro = p.arbitro
WHERE p.equipo_local = 'CLB02' OR p.equipo_visitante = 'CLB02'
);

-- Consulta 4: Listar los clubes y los árbitros que han arbitrado partidos en los que el club ha recibido al menos una tarjeta roja, junto con el total de tarjetas rojas recibidas por cada club en esos partidos.
SELECT 
    c.nombre AS equipo,
    CONCAT(a.nombre, ' ', a.apellido) AS arbitro,
    COALESCE(SUM(d.tarjetas_rojas), 0) AS total_rojas_recibidas
FROM club c
CROSS JOIN arbitro_principal a
LEFT JOIN partido p 
    ON (p.equipo_local = c.id_club OR p.equipo_visitante = c.id_club) 
    AND p.arbitro = a.id_arbitro
LEFT JOIN jugador j 
    ON j.club = c.id_club
LEFT JOIN disputa d 
    ON p.id_partido = d.partido 
    AND d.jugador = j.id_jugador
GROUP BY c.id_club, c.nombre, a.id_arbitro, a.nombre, a.apellido
HAVING total_rojas_recibidas > 0;

--- Consulta 5: Listar los jugadores que han sido titulares en todos los partidos en los que han participado.
SELECT 
    j.id_jugador,
    CONCAT(j.primer_nombre, ' ', j.primer_apellido) AS jugador,
    c.nombre AS equipo
FROM jugador j
INNER JOIN club c 
    ON j.club = c.id_club
WHERE EXISTS (
    SELECT 1 
    FROM disputa d_tit 
    WHERE d_tit.jugador = j.id_jugador 
    AND d_tit.titularidad = TRUE
)
AND NOT EXISTS (
    SELECT 1 
    FROM disputa d 
    WHERE d.jugador = j.id_jugador 
    AND d.titularidad = TRUE 
    AND d.goles_anotados = 0
);


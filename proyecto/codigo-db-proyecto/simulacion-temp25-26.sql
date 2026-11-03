-- ============================================================
-- INSERCIÓN DE DATOS DE EJEMPLO (DML) - TEMPORADA 2025-2026
-- ============================================================
-- Proyecto de Base de Datos - Premier League
-- Autor: Javier Guarnizo Vega
-- Motor: MySQL
-- ============================================================
USE premier_league_db;

-- Insertando los 20 clubes de la Premier League
INSERT INTO club (id_club, nombre, ciudad, numero_trofeos, fecha_fundacion, escudo) 
VALUES 
('CLB01', 'Arsenal FC', 'Londres', 13, '1886-10-01', '/assets/escudos/arsenal.png'),
('CLB02', 'Manchester City FC', 'Mánchester', 10, '1880-04-16', '/assets/escudos/mancity.png'),
('CLB03', 'Liverpool FC', 'Liverpool', 19, '1892-06-03', '/assets/escudos/liverpool.png'),
('CLB04', 'Chelsea FC', 'Londres', 6, '1905-03-10', '/assets/escudos/chelsea.png'),
('CLB05', 'Tottenham Hotspur', 'Londres', 2, '1882-09-05', '/assets/escudos/tottenham.png'),
('CLB06', 'Aston Villa FC', 'Birmingham', 7, '1874-11-21', '/assets/escudos/astonvilla.png'),
('CLB07', 'Manchester United FC', 'Mánchester', 20, '1878-03-05', '/assets/escudos/manutd.png'),
('CLB08', 'Newcastle United FC', 'Newcastle', 4, '1892-12-09', '/assets/escudos/newcastle.png'),
('CLB09', 'Brighton & Hove Albion', 'Brighton', 0, '1901-06-24', '/assets/escudos/brighton.png'),
('CLB10', 'West Ham United', 'Londres', 0, '1895-06-29', '/assets/escudos/westham.png'),
('CLB11', 'Wolverhampton Wanderers', 'Wolverhampton', 3, '1877-01-01', '/assets/escudos/wolves.png'),
('CLB12', 'Fulham FC', 'Londres', 0, '1879-08-16', '/assets/escudos/fulham.png'),
('CLB13', 'AFC Bournemouth', 'Bournemouth', 0, '1899-01-01', '/assets/escudos/bournemouth.png'),
('CLB14', 'Crystal Palace FC', 'Londres', 0, '1905-09-10', '/assets/escudos/crystalpalace.png'),
('CLB15', 'Everton FC', 'Liverpool', 9, '1878-01-01', '/assets/escudos/everton.png'),
('CLB16', 'Brentford FC', 'Londres', 0, '1889-10-10', '/assets/escudos/brentford.png'),
('CLB17', 'Nottingham Forest FC', 'Nottingham', 1, '1865-01-01', '/assets/escudos/nottingham.png'),
('CLB18', 'Leicester City FC', 'Leicester', 1, '1884-01-01', '/assets/escudos/leicester.png'),
('CLB19', 'Ipswich Town FC', 'Ipswich', 1, '1878-10-16', '/assets/escudos/ipswich.png'),
('CLB20', 'Southampton FC', 'Southampton', 0, '1885-11-21', '/assets/escudos/southampton.png');

-- Insertando los estadios de los 20 clubes de la Premier League
INSERT INTO estadio (id_estadio, nombre, capacidad, fecha_fundacion, ubicacion, club) 
VALUES 
('E001', 'Emirates Stadium', 60704, '2006-07-22', 'Holloway, Londres', 'CLB01'),
('E002', 'Etihad Stadium', 53400, '2002-07-25', 'Sportcity, Mánchester', 'CLB02'),
('E003', 'Anfield', 61276, '1884-09-28', 'Anfield Rd, Liverpool', 'CLB03'),
('E004', 'Stamford Bridge', 40341, '1877-04-28', 'Fulham, Londres', 'CLB04'),
('E005', 'Tottenham Hotspur Stadium', 62850, '2019-04-03', 'Tottenham, Londres', 'CLB05'),
('E006', 'Villa Park', 42640, '1897-04-17', 'Aston, Birmingham', 'CLB06'),
('E007', 'Old Trafford', 74310, '1910-02-19', 'Stretford, Mánchester', 'CLB07'),
('E008', 'St James Park', 52305, '1892-09-03', 'Newcastle upon Tyne', 'CLB08'),
('E009', 'American Express Stadium', 31876, '2011-07-30', 'Falmer, Brighton', 'CLB09'),
('E010', 'London Stadium', 62500, '2012-05-06', 'Stratford, Londres', 'CLB10'),
('E011', 'Molineux Stadium', 32050, '1889-09-02', 'Wolverhampton', 'CLB11'),
('E012', 'Craven Cottage', 25700, '1896-10-10', 'Fulham, Londres', 'CLB12'),
('E013', 'Vitality Stadium', 11307, '1910-01-01', 'Bournemouth', 'CLB13'),
('E014', 'Selhurst Park', 25486, '1924-08-30', 'Selhurst, Londres', 'CLB14'),
('E015', 'Goodison Park', 39572, '1892-08-24', 'Walton, Liverpool', 'CLB15'),
('E016', 'Gtech Community Stadium', 17250, '2020-09-01', 'Brentford, Londres', 'CLB16'),
('E017', 'City Ground', 30445, '1898-09-03', 'West Bridgford, Nottingham', 'CLB17'),
('E018', 'King Power Stadium', 32261, '2002-07-23', 'Leicester', 'CLB18'),
('E019', 'Portman Road', 29673, '1884-01-01', 'Ipswich', 'CLB19'),
('E020', 'St Marys Stadium', 32384, '2001-08-01', 'Southampton', 'CLB20');

-- Inserción de 2 jugadores por cada uno de los 20 clubes (40 jugadores en total)
INSERT INTO jugador (id_jugador, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, nacionalidad, fecha_nacimiento, club) 
VALUES 
('JUG0000000001', 'Bukayo', 'Ayoyinka', 'Saka', NULL, 'Inglaterra', '2001-09-05', 'CLB01'),
('JUG0000000002', 'Martin', NULL, 'Odegaard', NULL, 'Noruega', '1998-12-17', 'CLB01'),
('JUG0000000003', 'Erling', 'Braut', 'Haaland', NULL, 'Noruega', '2000-07-21', 'CLB02'),
('JUG0000000004', 'Kevin', NULL, 'De Bruyne', NULL, 'Bélgica', '1991-06-28', 'CLB02'),
('JUG0000000005', 'Mohamed', NULL, 'Salah', NULL, 'Egipto', '1992-06-15', 'CLB03'),
('JUG0000000006', 'Virgil', NULL, 'van Dijk', NULL, 'Países Bajos', '1991-07-08', 'CLB03'),
('JUG0000000007', 'Cole', 'Jermaine', 'Palmer', NULL, 'Inglaterra', '2002-05-06', 'CLB04'),
('JUG0000000008', 'Enzo', 'Jérémie', 'Fernández', NULL, 'Argentina', '2001-01-17', 'CLB04'),
('JUG0000000009', 'Heung-min', NULL, 'Son', NULL, 'Corea del Sur', '1992-07-08', 'CLB05'),
('JUG0000000010', 'James', 'Daniel', 'Maddison', NULL, 'Inglaterra', '1996-11-23', 'CLB05'),
('JUG0000000011', 'Ollie', 'George', 'Watkins', NULL, 'Inglaterra', '1995-12-30', 'CLB06'),
('JUG0000000012', 'Emiliano', NULL, 'Martínez', NULL, 'Argentina', '1992-09-02', 'CLB06'),
('JUG0000000013', 'Bruno', 'Miguel', 'Fernandes', NULL, 'Portugal', '1994-09-08', 'CLB07'),
('JUG0000000014', 'Marcus', NULL, 'Rashford', NULL, 'Inglaterra', '1997-10-31', 'CLB07'),
('JUG0000000015', 'Alexander', NULL, 'Isak', NULL, 'Suecia', '1999-09-21', 'CLB08'),
('JUG0000000016', 'Bruno', NULL, 'Guimaraes', NULL, 'Brasil', '1997-11-16', 'CLB08'),
('JUG0000000017', 'Kaoru', NULL, 'Mitoma', NULL, 'Japón', '1997-05-20', 'CLB09'),
('JUG0000000018', 'Evan', 'Joe', 'Ferguson', NULL, 'Irlanda', '2004-10-19', 'CLB09'),
('JUG0000000019', 'Jarrod', NULL, 'Bowen', NULL, 'Inglaterra', '1996-12-20', 'CLB10'),
('JUG0000000020', 'Lucas', NULL, 'Paqueta', NULL, 'Brasil', '1997-08-27', 'CLB10'),
('JUG0000000021', 'Matheus', NULL, 'Cunha', NULL, 'Brasil', '1999-05-27', 'CLB11'),
('JUG0000000022', 'Hee-chan', NULL, 'Hwang', NULL, 'Corea del Sur', '1996-01-26', 'CLB11'),
('JUG0000000023', 'Raul', 'Alonso', 'Jimenez', 'Rodriguez', 'México', '1991-05-05', 'CLB12'),
('JUG0000000024', 'Andreas', 'Hugo', 'Pereira', NULL, 'Brasil', '1996-01-01', 'CLB12'),
('JUG0000000025', 'Francisco', NULL, 'Evanilson', NULL, 'Brasil', '1999-10-06', 'CLB13'),
('JUG0000000026', 'Antoine', 'Serlom', 'Semenyo', NULL, 'Ghana', '2000-01-07', 'CLB13'),
('JUG0000000027', 'Eberechi', 'Oluchi', 'Eze', NULL, 'Inglaterra', '1998-06-29', 'CLB14'),
('JUG0000000028', 'Jean-Philippe', NULL, 'Mateta', NULL, 'Francia', '1997-06-28', 'CLB14'),
('JUG0000000029', 'Dominic', 'Nathaniel', 'Calvert-Lewin', NULL, 'Inglaterra', '1997-03-16', 'CLB15'),
('JUG0000000030', 'Jordan', 'Lee', 'Pickford', NULL, 'Inglaterra', '1994-03-07', 'CLB15'),
('JUG0000000031', 'Bryan', NULL, 'Mbeumo', NULL, 'Camerún', '1999-08-07', 'CLB16'),
('JUG0000000032', 'Yoane', NULL, 'Wissa', NULL, 'RD del Congo', '1996-09-03', 'CLB16'),
('JUG0000000033', 'Morgan', NULL, 'Gibbs-White', NULL, 'Inglaterra', '2000-01-27', 'CLB17'),
('JUG0000000034', 'Christopher', 'Grant', 'Wood', NULL, 'Nueva Zelanda', '1991-12-07', 'CLB17'),
('JUG0000000035', 'Jamie', 'Richard', 'Vardy', NULL, 'Inglaterra', '1987-01-11', 'CLB18'),
('JUG0000000036', 'Oshinani', 'Wilfred', 'Ndidi', NULL, 'Nigeria', '1996-12-16', 'CLB18'),
('JUG0000000037', 'Liam', NULL, 'Delap', NULL, 'Inglaterra', '2003-02-08', 'CLB19'),
('JUG0000000038', 'Omari', 'Elijah', 'Hutchinson', NULL, 'Jamaica', '2003-10-29', 'CLB19'),
('JUG0000000039', 'Adam', NULL, 'Armstrong', NULL, 'Inglaterra', '1997-02-10', 'CLB20'),
('JUG0000000040', 'Taylor', NULL, 'Harwood-Bellis', NULL, 'Inglaterra', '2002-01-30', 'CLB20');

-- Insertando arbitros de la Premier League
INSERT INTO arbitro_principal (id_arbitro, nombre, apellido, nacionalidad) 
VALUES 
('ARB001', 'Anthony', 'Taylor', 'Inglaterra'),
('ARB002', 'Michael', 'Oliver', 'Inglaterra'),
('ARB003', 'Paul', 'Tierney', 'Inglaterra'),
('ARB004', 'Simon', 'Hooper', 'Inglaterra'),
('ARB005', 'Jarred', 'Gillett', 'Australia'),
('ARB006', 'Stuart', 'Attwell', 'Inglaterra'),
('ARB007', 'Robert', 'Jones', 'Inglaterra'),
('ARB008', 'Craig', 'Pawson', 'Inglaterra'),
('ARB009', 'Chris', 'Kavanagh', 'Inglaterra'),
('ARB010', 'Darren', 'England', 'Inglaterra'),
('ARB011', 'Andy', 'Madley', 'Inglaterra'),
('ARB012', 'John', 'Brooks', 'Inglaterra');

-- Inserción de 20 partidos de la temporada 2025-2026
INSERT INTO partido (id_partido, fecha_partido, hora_partido, equipo_local, equipo_visitante, arbitro, estadio) 
VALUES 
('PAR202500001', '2025-08-15', '20:00:00', 'CLB01', 'CLB11', 'ARB001', 'E001'), -- Arsenal vs Wolves (Emirates)
('PAR202500002', '2025-08-16', '12:30:00', 'CLB19', 'CLB03', 'ARB002', 'E019'), -- Ipswich vs Liverpool (Portman Road)
('PAR202500003', '2025-08-16', '15:00:00', 'CLB04', 'CLB02', 'ARB003', 'E004'), -- Chelsea vs Man City (Stamford Bridge)
('PAR202500004', '2025-08-16', '17:30:00', 'CLB07', 'CLB12', 'ARB004', 'E007'), -- Man Utd vs Fulham (Old Trafford)
('PAR202500005', '2025-08-17', '14:00:00', 'CLB08', 'CLB20', 'ARB005', 'E008'), -- Newcastle vs Southampton (St James' Park)
('PAR202500006', '2025-08-17', '16:30:00', 'CLB05', 'CLB18', 'ARB006', 'E005'), -- Tottenham vs Leicester (Tottenham Stadium)
('PAR202500007', '2025-08-23', '15:00:00', 'CLB06', 'CLB01', 'ARB007', 'E006'), -- Aston Villa vs Arsenal (Villa Park)
('PAR202500008', '2025-08-24', '16:30:00', 'CLB03', 'CLB16', 'ARB008', 'E003'), -- Liverpool vs Brentford (Anfield)
('PAR202500009', '2025-08-31', '16:30:00', 'CLB07', 'CLB03', 'ARB002', 'E007'), -- Man Utd vs Liverpool (Old Trafford)
('PAR202500010', '2025-09-14', '14:00:00', 'CLB05', 'CLB01', 'ARB001', 'E005'), -- Tottenham vs Arsenal (Tottenham Stadium)
('PAR202500011', '2025-09-21', '16:30:00', 'CLB02', 'CLB01', 'ARB009', 'E002'), -- Man City vs Arsenal (Etihad Stadium)
('PAR202500012', '2025-10-05', '15:00:00', 'CLB09', 'CLB10', 'ARB010', 'E009'), -- Brighton vs West Ham (Amex Stadium)
('PAR202500013', '2025-10-19', '17:30:00', 'CLB13', 'CLB04', 'ARB011', 'E013'), -- Bournemouth vs Chelsea (Vitality Stadium)
('PAR202500014', '2025-11-02', '15:00:00', 'CLB14', 'CLB15', 'ARB012', 'E014'), -- Crystal Palace vs Everton (Selhurst Park)
('PAR202500015', '2025-11-23', '12:30:00', 'CLB17', 'CLB06', 'ARB003', 'E017'), -- Nottm Forest vs Aston Villa (City Ground)
('PAR202500016', '2025-12-06', '15:00:00', 'CLB10', 'CLB08', 'ARB004', 'E010'), -- West Ham vs Newcastle (London Stadium)
('PAR202600017', '2026-01-17', '17:30:00', 'CLB01', 'CLB05', 'ARB001', 'E001'), -- Arsenal vs Tottenham (Emirates)
('PAR202600018', '2026-02-07', '16:30:00', 'CLB03', 'CLB02', 'ARB002', 'E003'), -- Liverpool vs Man City (Anfield)
('PAR202600019', '2026-03-14', '15:00:00', 'CLB04', 'CLB07', 'ARB008', 'E004'), -- Chelsea vs Man Utd (Stamford Bridge)
('PAR202600020', '2026-05-17', '16:00:00', 'CLB02', 'CLB06', 'ARB009', 'E002'); -- Man City vs Aston Villa (Etihad Stadium)

-- Inserción de 40 disputas (Rendimiento individual de jugadores por partido)
INSERT INTO disputa (id_disputa, posicion_juego, minutos_jugados, titularidad, goles_anotados, asistencias, tarjetas_amarillas, tarjetas_rojas, jugador, partido) 
VALUES 
('DIS202500001', 'delantero', 90, TRUE, 1, 1, 0, 0, 'JUG0000000001', 'PAR202500001'), -- Saka
('DIS202500002', 'delantero', 85, TRUE, 0, 0, 1, 0, 'JUG0000000021', 'PAR202500001'), -- Cunha
('DIS202500003', 'delantero', 70, TRUE, 0, 0, 0, 0, 'JUG0000000037', 'PAR202500002'), -- Delap
('DIS202500004', 'delantero', 90, TRUE, 1, 1, 0, 0, 'JUG0000000005', 'PAR202500002'), -- Salah
('DIS202500005', 'mediocampista', 90, TRUE, 0, 0, 1, 0, 'JUG0000000007', 'PAR202500003'), -- Palmer
('DIS202500006', 'delantero', 90, TRUE, 2, 0, 0, 0, 'JUG0000000003', 'PAR202500003'), -- Haaland
('DIS202500007', 'mediocampista', 90, TRUE, 1, 0, 0, 0, 'JUG0000000013', 'PAR202500004'), -- Bruno Fernandes
('DIS202500008', 'delantero', 75, TRUE, 0, 0, 0, 0, 'JUG0000000023', 'PAR202500004'), -- Raúl Jiménez
('DIS202500009', 'delantero', 90, TRUE, 1, 0, 0, 0, 'JUG0000000015', 'PAR202500005'), -- Isak
('DIS202500010', 'delantero', 80, TRUE, 0, 0, 1, 0, 'JUG0000000039', 'PAR202500005'), -- Armstrong
('DIS202500011', 'delantero', 90, TRUE, 1, 1, 0, 0, 'JUG0000000009', 'PAR202500006'), -- Son
('DIS202500012', 'delantero', 78, TRUE, 1, 0, 0, 0, 'JUG0000000035', 'PAR202500006'), -- Vardy
('DIS202500013', 'delantero', 90, TRUE, 1, 0, 1, 0, 'JUG0000000011', 'PAR202500007'), -- Watkins
('DIS202500014', 'mediocampista', 90, TRUE, 0, 1, 0, 0, 'JUG0000000002', 'PAR202500007'), -- Odegaard
('DIS202500015', 'defensa', 90, TRUE, 0, 0, 0, 0, 'JUG0000000006', 'PAR202500008'), -- Van Dijk
('DIS202500016', 'delantero', 90, TRUE, 1, 0, 0, 0, 'JUG0000000031', 'PAR202500008'), -- Mbeumo
('DIS202500017', 'delantero', 82, TRUE, 0, 0, 1, 0, 'JUG0000000014', 'PAR202500009'), -- Rashford
('DIS202500018', 'delantero', 90, TRUE, 2, 1, 0, 0, 'JUG0000000005', 'PAR202500009'), -- Salah
('DIS202500019', 'mediocampista', 88, TRUE, 0, 1, 1, 0, 'JUG0000000010', 'PAR202500010'), -- Maddison
('DIS202500020', 'delantero', 90, TRUE, 1, 0, 0, 0, 'JUG0000000001', 'PAR202500010'), -- Saka
('DIS202500021', 'mediocampista', 90, TRUE, 0, 1, 0, 0, 'JUG0000000004', 'PAR202500011'), -- De Bruyne
('DIS202500022', 'mediocampista', 90, TRUE, 1, 0, 1, 0, 'JUG0000000002', 'PAR202500011'), -- Odegaard
('DIS202500023', 'delantero', 90, TRUE, 1, 0, 0, 0, 'JUG0000000017', 'PAR202500012'), -- Mitoma
('DIS202500024', 'delantero', 90, TRUE, 1, 1, 0, 0, 'JUG0000000019', 'PAR202500012'), -- Bowen
('DIS202500025', 'delantero', 75, TRUE, 0, 0, 1, 0, 'JUG0000000025', 'PAR202500013'), -- Evanilson
('DIS202500026', 'mediocampista', 90, TRUE, 0, 1, 1, 0, 'JUG0000000008', 'PAR202500013'), -- Enzo Fernández
('DIS202500027', 'mediocampista', 90, TRUE, 1, 0, 0, 0, 'JUG0000000027', 'PAR202500014'), -- Eze
('DIS202500028', 'portero', 90, TRUE, 0, 0, 0, 0, 'JUG0000000030', 'PAR202500014'), -- Pickford
('DIS202500029', 'delantero', 85, TRUE, 1, 0, 0, 0, 'JUG0000000034', 'PAR202500015'), -- Wood
('DIS202500030', 'portero', 90, TRUE, 0, 0, 1, 0, 'JUG0000000012', 'PAR202500015'), -- Dibu Martínez
('DIS202500031', 'mediocampista', 90, TRUE, 0, 1, 1, 0, 'JUG0000000020', 'PAR202500016'), -- Paquetá
('DIS202500032', 'mediocampista', 90, TRUE, 1, 0, 0, 0, 'JUG0000000016', 'PAR202500016'), -- Bruno Guimaraes
('DIS202500033', 'delantero', 90, TRUE, 2, 0, 0, 0, 'JUG0000000001', 'PAR202600017'), -- Saka
('DIS202500034', 'delantero', 90, TRUE, 1, 0, 0, 0, 'JUG0000000009', 'PAR202600017'), -- Son
('DIS202500035', 'delantero', 90, TRUE, 1, 1, 0, 0, 'JUG0000000005', 'PAR202600018'), -- Salah
('DIS202500036', 'delantero', 90, TRUE, 1, 0, 1, 0, 'JUG0000000003', 'PAR202600018'), -- Haaland
('DIS202500037', 'mediocampista', 90, TRUE, 1, 1, 0, 0, 'JUG0000000007', 'PAR202600019'), -- Palmer
('DIS202500038', 'mediocampista', 90, TRUE, 1, 0, 1, 0, 'JUG0000000013', 'PAR202600019'), -- Bruno Fernandes
('DIS202500039', 'delantero', 90, TRUE, 2, 1, 0, 0, 'JUG0000000003', 'PAR202600020'), -- Haaland
('DIS202500040', 'delantero', 90, TRUE, 1, 0, 0, 0, 'JUG0000000011', 'PAR202600020'); -- Watkins

INSERT INTO tabla_posicion (id_tabla, temporada, puntos_totales, partidos_jugados, partidos_ganados, partidos_empatados, partidos_perdidos, goles_favor, goles_contra, diferencia_goles, club) 
VALUES 
('TAB01', '2025-2026', 13, 5, 4, 1, 0, 8, 3, 5, 'CLB01'),  -- Arsenal
('TAB02', '2025-2026', 8, 5, 2, 2, 1, 9, 6, 3, 'CLB02'),   -- Manchester City
('TAB03', '2025-2026', 12, 4, 4, 0, 0, 9, 2, 7, 'CLB03'),  -- Liverpool
('TAB04', '2025-2026', 6, 4, 2, 0, 2, 5, 5, 0, 'CLB04'),   -- Chelsea
('TAB05', '2025-2026', 4, 3, 1, 1, 1, 3, 3, 0, 'CLB05'),   -- Tottenham Hotspur
('TAB06', '2025-2026', 0, 3, 0, 0, 3, 2, 7, -5, 'CLB06'),  -- Aston Villa
('TAB07', '2025-2026', 3, 3, 1, 0, 2, 2, 7, -5, 'CLB07'),  -- Manchester United
('TAB08', '2025-2026', 6, 2, 2, 0, 0, 3, 1, 2, 'CLB08'),   -- Newcastle United
('TAB09', '2025-2026', 1, 1, 0, 1, 0, 1, 1, 0, 'CLB09'),   -- Brighton
('TAB10', '2025-2026', 1, 2, 0, 1, 1, 2, 3, -1, 'CLB10'),  -- West Ham
('TAB11', '2025-2026', 0, 1, 0, 0, 1, 0, 2, -2, 'CLB11'),  -- Wolves
('TAB12', '2025-2026', 0, 1, 0, 0, 1, 0, 1, -1, 'CLB12'),  -- Fulham
('TAB13', '2025-2026', 0, 1, 0, 0, 1, 0, 1, -1, 'CLB13'),  -- Bournemouth
('TAB14', '2025-2026', 3, 1, 1, 0, 0, 1, 0, 1, 'CLB14'),   -- Crystal Palace
('TAB15', '2025-2026', 0, 1, 0, 0, 1, 0, 1, -1, 'CLB15'),  -- Everton
('TAB16', '2025-2026', 0, 1, 0, 0, 1, 1, 2, -1, 'CLB16'),  -- Brentford
('TAB17', '2025-2026', 3, 1, 1, 0, 0, 1, 0, 1, 'CLB17'),   -- Nottingham Forest
('TAB18', '2025-2026', 1, 1, 0, 1, 0, 1, 1, 0, 'CLB18'),   -- Leicester City
('TAB19', '2025-2026', 0, 1, 0, 0, 1, 0, 2, -2, 'CLB19'),  -- Ipswich Town
('TAB20', '2025-2026', 0, 1, 0, 0, 1, 0, 1, -1, 'CLB20');  -- Southampton

INSERT INTO resultado (id_resultado, tipo_resultado, puntos_otorgados, tabla_posicion, partido) 
VALUES 
('RES202501', 'victoria', 3, 'TAB01', 'PAR202500001'), -- Arsenal
('RES202502', 'derrota',  0, 'TAB11', 'PAR202500001'), -- Wolves
('RES202503', 'derrota',  0, 'TAB19', 'PAR202500002'), -- Ipswich
('RES202504', 'victoria', 3, 'TAB03', 'PAR202500002'), -- Liverpool
('RES202505', 'derrota',  0, 'TAB04', 'PAR202500003'), -- Chelsea
('RES202506', 'victoria', 3, 'TAB02', 'PAR202500003'), -- Man City
('RES202507', 'victoria', 3, 'TAB07', 'PAR202500004'), -- Man Utd
('RES202508', 'derrota',  0, 'TAB12', 'PAR202500004'), -- Fulham
('RES202509', 'victoria', 3, 'TAB08', 'PAR202500005'), -- Newcastle
('RES202510', 'derrota',  0, 'TAB20', 'PAR202500005'), -- Southampton
('RES202511', 'empate',   1, 'TAB05', 'PAR202500006'), -- Tottenham
('RES202512', 'empate',   1, 'TAB18', 'PAR202500006'), -- Leicester
('RES202513', 'derrota',  0, 'TAB06', 'PAR202500007'), -- Aston Villa
('RES202514', 'victoria', 3, 'TAB01', 'PAR202500007'), -- Arsenal
('RES202515', 'victoria', 3, 'TAB03', 'PAR202500008'), -- Liverpool
('RES202516', 'derrota',  0, 'TAB16', 'PAR202500008'), -- Brentford
('RES202517', 'derrota',  0, 'TAB07', 'PAR202500009'), -- Man Utd
('RES202518', 'victoria', 3, 'TAB03', 'PAR202500009'), -- Liverpool
('RES202519', 'derrota',  0, 'TAB05', 'PAR202500010'), -- Tottenham
('RES202520', 'victoria', 3, 'TAB01', 'PAR202500010'), -- Arsenal
('RES202521', 'empate',   1, 'TAB02', 'PAR202500011'), -- Man City
('RES202522', 'empate',   1, 'TAB01', 'PAR202500011'), -- Arsenal
('RES202523', 'empate',   1, 'TAB09', 'PAR202500012'), -- Brighton
('RES202524', 'empate',   1, 'TAB10', 'PAR202500012'), -- West Ham
('RES202525', 'derrota',  0, 'TAB13', 'PAR202500013'), -- Bournemouth
('RES202526', 'victoria', 3, 'TAB04', 'PAR202500013'), -- Chelsea
('RES202527', 'victoria', 3, 'TAB14', 'PAR202500014'), -- Crystal Palace
('RES202528', 'derrota',  0, 'TAB15', 'PAR202500014'), -- Everton
('RES202529', 'victoria', 3, 'TAB17', 'PAR202500015'), -- Nottm Forest
('RES202530', 'derrota',  0, 'TAB06', 'PAR202500015'), -- Aston Villa
('RES202531', 'derrota',  0, 'TAB10', 'PAR202500016'), -- West Ham
('RES202532', 'victoria', 3, 'TAB08', 'PAR202500016'), -- Newcastle
('RES202533', 'victoria', 3, 'TAB01', 'PAR202600017'), -- Arsenal
('RES202534', 'derrota',  0, 'TAB05', 'PAR202600017'), -- Tottenham
('RES202535', 'victoria', 3, 'TAB03', 'PAR202600018'), -- Liverpool
('RES202536', 'derrota',  0, 'TAB02', 'PAR202600018'), -- Man City
('RES202537', 'victoria', 3, 'TAB04', 'PAR202600019'), -- Chelsea
('RES202538', 'derrota',  0, 'TAB07', 'PAR202600019'), -- Man Utd
('RES202539', 'victoria', 3, 'TAB02', 'PAR202600020'), -- Man City
('RES202540', 'derrota',  0, 'TAB06', 'PAR202600020'); -- Aston Villa
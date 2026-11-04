# Sistema de Base de Datos Relacional - Premier League (Temporada 2025-2026)

Este repositorio contiene el diseño, implementación física y consultas analíticas del sistema de base de datos relacional para la gestión estadística y seguimiento operativo de la **Premier League (Temporada 2025-2026)**, desarrollado siguiendo las normas de documentación IEEE.

---

## 📋 Tabla de Contenidos

- [Contexto del Problema](#-contexto-del-problema)
- [Objetivos del Proyecto](#-objetivos-del-proyecto)
- [Arquitectura del Esquema Relacional](#-arquitectura-del-esquema-relacional)
- [Restricciones de Integridad Aplicadas](#-restricciones-de-integridad-aplicadas)
- [Estructura del Proyecto](#-estructura-del-proyecto)
- [Instrucciones de Instalación y Ejecución](#-instrucciones-de-instalación-y-ejecución)
- [Ejemplos de Consultas y Álgebra Relacional](#-ejemplos-de-consultas-y-álgebra-relacional)
- [Referencias](#-referencias)

---

## ⚽ Contexto del Problema

La Premier League gestiona un elevado volumen de datos estadísticos y transaccionales en cada jornada. La falta de una infraestructura relacional centralizada genera inconsistencias en la información, duplicación de datos de futbolistas, errores en la asignación de escenarios deportivos e imprecisiones en el cálculo de las posiciones de la liga.

Este proyecto resuelve dicha problemática mediante un sistema de base de datos en **MySQL** normalizado en **Tercera Forma Normal (3FN)**, estructurado para garantizar la integridad referencial y optimizar la ejecución de consultas analíticas para analistas deportivos, prensa y la organización de la competición.

---

## 🎯 Objetivos del Proyecto

### Objetivo General
Diseñar e implementar un sistema de base de datos relacional en MySQL para centralizar, estructurar y optimizar el almacenamiento e integridad de la información estadística y operativa de la Premier League durante la temporada 2025-2026.

### Objetivos Específicos
1. **Modelado Conceptual y Lógico:** Elaborar los diagramas Entidad-Relación y Relacional normalizados en 3FN que representen las entidades, atributos y restricciones del dominio deportivo.
2. **Implementación Física y DDL/DML:** Construir el esquema físico en MySQL aplicando restricciones de integridad (`PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `UNIQUE`, `DEFAULT`, `CHECK`) y poblar la base de datos con datos coherentes de 20 clubes, 20 estadios, 40 jugadores, 12 árbitros y 20 partidos, por el momento.

---

## 📐 Arquitectura del Esquema Relacional

El sistema está compuesto por **8 tablas relacionales**:

1. **`club`**: Registro oficial de los 20 equipos participantes.
2. **`estadio`**: Escenarios deportivos con relación estrictamente 1:1 con cada club.
3. **`jugador`**: Datos demográficos y de pertenencia de los futbolistas.
4. **`arbitro_principal`**: Registro del cuerpo arbitral habilitado.
5. **`partido`**: Programación de los encuentros entre equipo local y visitante.
6. **`disputa`**: Tabla asociativa de rendimiento individual por jugador y partido (minutos, goles, asistencias, tarjetas).
7. **`tabla_posicion`**: Acumulado estadístico por club y temporada.
8. **`resultado`**: Marcador final y puntos otorgados por partido.

---

## 🛡️ Restricciones de Integridad Aplicadas

* **`PRIMARY KEY`**: Garantiza la identificación única de cada registro (`id_club`, `id_partido`, etc.).
* **`FOREIGN KEY`**: Mantiene la integridad referencial con reglas de actualización en cascada y borrado restringido (`ON UPDATE CASCADE ON DELETE RESTRICT`).
* **`NOT NULL`**: Obliga el registro de campos críticos para el sistema.
* **`UNIQUE`**: Impide duplicados en nombres de clubes/estadios, relaciones 1:1 y evita registrar dos veces a un jugador en el mismo partido (`unique_jugador_partido`).
* **`DEFAULT`**: Asigna valores por defecto (0 goles, 0 tarjetas, `titularidad = TRUE`).
* **`CHECK`**: Valida condiciones lógicas como `equipo_local <> equipo_visitante`, rangos de minutos (0 a 130) y tarjetas válidas.

---

## 🚀 Instrucciones de Instalación y Ejecución

### Prerrequisitos
* **MySQL Server** 8.0 o superior
* Un cliente SQL como MySQL Workbench, DBeaver, phpMyAdmin o VS Code (con extensión SQL Tools).

### Orden Obligatorio de Ejecución de Scripts

Para evitar errores de clave foránea (`FOREIGN KEY constraint fails`), recomiendo ejecutar las sentencias DDL y DML en el siguiente orden jerárquico:

1. `CREATE TABLE club` & `INSERT INTO club`
2. `CREATE TABLE arbitro_principal` & `INSERT INTO arbitro_principal`
3. `CREATE TABLE estadio` & `INSERT INTO estadio`
4. `CREATE TABLE jugador` & `INSERT INTO jugador`
5. `CREATE TABLE partido` & `INSERT INTO partido`
6. `CREATE TABLE tabla_posicion` & `INSERT INTO tabla_posicion`
7. `CREATE TABLE disputa` & `INSERT INTO disputa`
8. `CREATE TABLE resultado` & `INSERT INTO resultado`

---

## 📊 Ejemplos de Consultas y Álgebra Relacional

El proyecto incluye 5 consultas analíticas avanzadas traducidas de Álgebra Relacional a SQL:

1. **Selección ($\sigma$) y Proyección ($\pi$):** Delanteros extranjeros registrados.
2. **Unión ($\cup$) y Diferencia ($-$ / `EXCEPT`):** Clubes con victorias sin derrotas sufridas en casa.
3. **Reunión Natural ($\bowtie$) e Intersección ($\cap$):** Árbitros que han dirigido tanto al Arsenal como al Manchester City, basado en el id_club.
4. **Producto Cartesiano ($\times$):** Matriz disciplinaria cruzando clubes y árbitros.
5. **División Relacional ($\div$):** Jugadores con 100% de efectividad goleadora en partidos donde fueron titulares.

---

## 📚 Referencias

* **[1]** R. Elmasri y S. B. Navathe, *Fundamentos de Sistemas de Bases de Datos*, 7.ª ed. Madrid, España: Pearson Educación, 2017.
* **[2]** Premier League, "Premier League Handbook Season 2025/26," Premier League Operations & Regulations, Londres, Reino Unido, 2025.
* **[3]** C. J. Date, *Introducción a los Sistemas de Bases de Datos*, 8.ª ed. México D.F., México: Pearson Educación, 2004.
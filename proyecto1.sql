USE Proyecto;
-- Tabla Alumnos --

CREATE TABLE alumnno (
    id_alumno INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Boleta INT(100) NOT NULL,
    Carrera VARCHAR(50) NOT NULL,
    Nombre VARCHAR(100) NOT NULL
) ENGINE = innoDB;

-- Tabla Materias --

CREATE TABLE materias (
    id_materia INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_materia VARCHAR(50) NOT NULL,
    grupo VARCHAR (50) NOT NULL
) ENGINE = innoDB;

-- Tabla relacionada Alumnos-Materias --

CREATE TABLE Alumnos_Materias (
    id_alumno INT NOT NULL,
    id_materia INT NOT NULL,
    parcial_1 REAL CHECK (parcial_1 BETWEEN 0 AND 10),
    parcial_2 REAL CHECK (parcial_2 BETWEEN 0 AND 10),
    parcial_3 REAL CHECK (parcial_3 BETWEEN 0 and 10),
    total_clases INT NOT NULL,
    asistencias INT NOT NULL,
    porcentaje_asistecias DECIMAL (5, 2) GENERATED ALWAYS AS (
        ROUND ( (asistencias / NULLIF(total_clases,0)) * 100, 2)
    ) STORED, 
    total_participaciones INT NOT NULL,
    participaciones INT NOT NULL,
    porcentaje_participaciones DECIMAL (5, 2) GENERATED ALWAYS AS (
        ROUND ( (participaciones) / NULLIF(total_participaciones, 0) * 100,2)
    ) STORED,
    recursa BOOLEAN NOT NULL DEFAULT 0,
    total_tareas INT NOT NULL,
    tareas INT NOT NULL,
    porcentaje_tareas DECIMAL (5, 2) GENERATED ALWAYS AS (
        ROUND ( (tareas) / NULLIF(total_tareas, 0) * 100, 2)
    ) STORED,
    notas BOOLEAN NOT NULL DEFAULT 0,
    total_materias INT NOT NULL,
    cantidad_materias INT NOT NULL,
    porcentaje_materias DECIMAL (5, 2) GENERATED ALWAYS AS (
        ROUND ( (cantidad_materias) / NULLIF (total_materias, 0) * 100, 2)
    ) STORED,
    trabaja BOOLEAN NOT NULL DEFAULT 0,
    traslado BOOLEAN NOT NULL DEFAULT 0,
    PRIMARY KEY (id_alumno, id_materia),
    FOREIGN KEY (id_alumno) REFERENCES alumnno (id_alumno),
    FOREIGN KEY (id_materia) REFERENCES materias (id_materia)
) ENGINE = innoDB;
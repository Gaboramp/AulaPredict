USE Proyecto;
-- Tabla Alumnos --

-- 1. Tabla Alumnos 
CREATE TABLE Alumnos (
    id_alumno INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    boleta VARCHAR(20) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    carrera VARCHAR(50) NOT NULL,
    trabaja BOOLEAN NOT NULL DEFAULT 0,
    traslado BOOLEAN NOT NULL DEFAULT 0,
    total_materias INT NOT NULL CHECK (total_materias >= 0),
    cantidad_materias INT NOT NULL CHECK (cantidad_materias >= 0),
    porcentaje_materias DECIMAL(5, 2) GENERATED ALWAYS AS (
        ROUND((cantidad_materias / NULLIF(total_materias, 0)) * 100, 2)
    ) STORED
) ENGINE = InnoDB;

-- 2. Tabla Materias
CREATE TABLE Materias (
    id_materia INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_materia VARCHAR(50) NOT NULL,
    grupo VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

-- 3. Tabla intermedia Alumnos_Materias 
CREATE TABLE Alumnos_Materias (
    id_alumno INT NOT NULL,
    id_materia INT NOT NULL,
    parcial_1 DECIMAL(4, 2) CHECK (parcial_1 BETWEEN 0 AND 10),
    parcial_2 DECIMAL(4, 2) CHECK (parcial_2 BETWEEN 0 AND 10),
    parcial_3 DECIMAL(4, 2) CHECK (parcial_3 BETWEEN 0 AND 10),
    total_clases INT NOT NULL CHECK (total_clases >= 0),
    asistencias INT NOT NULL CHECK (asistencias >= 0),
    porcentaje_asistencias DECIMAL(5, 2) GENERATED ALWAYS AS (
        ROUND((asistencias / NULLIF(total_clases, 0)) * 100, 2)
    ) STORED,
    total_participaciones INT NOT NULL CHECK (total_participaciones >= 0),
    participaciones INT NOT NULL CHECK (participaciones >= 0),
    porcentaje_participaciones DECIMAL(5, 2) GENERATED ALWAYS AS (
        ROUND((participaciones / NULLIF(total_participaciones, 0)) * 100, 2)
    ) STORED,
    total_tareas INT NOT NULL CHECK (total_tareas >= 0),
    tareas INT NOT NULL CHECK (tareas >= 0),
    porcentaje_tareas DECIMAL(5, 2) GENERATED ALWAYS AS (
        ROUND((tareas / NULLIF(total_tareas, 0)) * 100, 2)
    ) STORED,
    recursa BOOLEAN NOT NULL DEFAULT 0,
    notas BOOLEAN NOT NULL DEFAULT 0,
    PRIMARY KEY (id_alumno, id_materia),
    FOREIGN KEY (id_alumno) REFERENCES Alumnos (id_alumno)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_materia) REFERENCES Materias (id_materia)
        ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

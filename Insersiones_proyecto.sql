USE Proyecto;

-- Licenciatura en Física y Matemáticas 
INSERT INTO Materias (nombre_materia, grupo) VALUES
('Cálculo I', '1FM1'),
('Álgebra I', '1FM1'),
('Mecánica Clásica', '1FM2'),
('Cálculo II', '2FM1'),
('Electromagnetismo', '3FM1'),
('Ecuaciones Diferenciales Ordinarias', '3FM2'),
('Análisis Real I', '4FM1'),
('Variable Compleja', '5FM1');

-- Licenciatura en Ingeniería Matemática 
INSERT INTO Materias (nombre_materia, grupo) VALUES
('Cálculo Diferencial e Integral', '1IM1'),
('Álgebra Lineal', '2IM1'),
('Probabilidad', '3IM1'),
('Estadística Inferencial', '4IM1'),
('Análisis Numérico', '4IM2'),
('Investigación de Operaciones', '5IM1'),
('Procesos Estocásticos', '5IM2'),
('Optimización Lineal', '6IM1');

-- Licenciatura en Matemática Algorítmica 
INSERT INTO Materias (nombre_materia, grupo) VALUES
('Introducción a la Programación', '1AV1'),
('Matemáticas Discretas', '1AV2'),
('Estructura de Datos', '2AV1'),
('Bases de Datos', '2AV1'),
('Lógica Matemática', '2AV2'),
('Teoría de la Computación', '3AV1'),
('Algoritmos y Complejidad', '3AV2'),
('Criptografía', '4AV1');

-- ============================================================================
-- 2. INSERCIÓN DE 50 ALUMNOS
-- ============================================================================
INSERT INTO Alumnos (boleta, nombre, carrera, trabaja, traslado, total_materias, cantidad_materias) VALUES
-- Licenciatura en Física y Matemáticas 
('2025610011', 'Hernández García Juan Carlos', 'Licenciatura en Física y Matemáticas', 0, 1, 4, 4),
('2025610024', 'Martínez López Ana Sofía', 'Licenciatura en Física y Matemáticas', 0, 0, 4, 4),
('2024610105', 'Rodríguez Pérez Luis Ángel', 'Licenciatura en Física y Matemáticas', 1, 1, 4, 3),
('2024610118', 'González Sánchez María Fernanda', 'Licenciatura en Física y Matemáticas', 0, 1, 4, 4),
('2023610203', 'Ramírez Torres Diego Alejandro', 'Licenciatura en Física y Matemáticas', 1, 0, 4, 2),
('2026610007', 'Cruz Flores Valeria', 'Licenciatura en Física y Matemáticas', 0, 0, 4, 4),
('2026610019', 'Morales Jiménez José Manuel', 'Licenciatura en Física y Matemáticas', 0, 1, 4, 3),
('2025610045', 'Vázquez Reyes Daniela Paola', 'Licenciatura en Física y Matemáticas', 0, 0, 4, 4),
('2024610132', 'Castro Ortiz Héctor Iván', 'Licenciatura en Física y Matemáticas', 1, 1, 4, 3),
('2023610219', 'Rojas Mendoza Gabriela Alejandra', 'Licenciatura en Física y Matemáticas', 0, 1, 4, 4),
('2026610033', 'Méndez Chávez Fernando', 'Licenciatura en Física y Matemáticas', 0, 0, 4, 4),
('2025610068', 'Silva Guzmán Mariana', 'Licenciatura en Física y Matemáticas', 1, 0, 4, 3),
('2024610150', 'Ortega Domínguez Ricardo', 'Licenciatura en Física y Matemáticas', 0, 1, 4, 4),
('2023610241', 'Delgado Vargas Andrea Guadalupe', 'Licenciatura en Física y Matemáticas', 1, 1, 4, 2),
('2026610052', 'Aguilar Ramos Sebastián', 'Licenciatura en Física y Matemáticas', 0, 1, 4, 3),
('2025610089', 'Navarro Medina Camila', 'Licenciatura en Física y Matemáticas', 0, 0, 4, 4),
('2024610174', 'Campos Herrera Emilio', 'Licenciatura en Física y Matemáticas', 0, 1, 4, 3);

-- Licenciatura en Ingeniería Matemática
INSERT INTO Alumnos (boleta, nombre, carrera, trabaja, traslado, total_materias, cantidad_materias) VALUES
('2026610061', 'Salazar Romero Nataly', 'Licenciatura en Ingeniería Matemática', 0, 0, 5, 5),
('2025610104', 'Guzmán Peña Rodrigo', 'Licenciatura en Ingeniería Matemática', 0, 1, 5, 4),
('2024610188', 'Reyes Juárez Ximena', 'Licenciatura en Ingeniería Matemática', 1, 1, 5, 3),
('2023610265', 'Paredes Luna Kevin Arturo', 'Licenciatura en Ingeniería Matemática', 1, 0, 5, 4),
('2026610078', 'Cortés Cabrera Paola Montserrat', 'Licenciatura en Ingeniería Matemática', 0, 1, 5, 5),
('2025610119', 'Núñez Miranda Ángel Gabriel', 'Licenciatura en Ingeniería Matemática', 0, 0, 5, 5),
('2024610201', 'Sandoval Fuentes Karla Beatriz', 'Licenciatura en Ingeniería Matemática', 0, 1, 5, 4),
('2023610280', 'Ibarra Contreras Mauricio', 'Licenciatura en Ingeniería Matemática', 1, 1, 5, 3),
('2026610090', 'Velázquez Acosta Renée', 'Licenciatura en Ingeniería Matemática', 0, 0, 5, 5),
('2025610135', 'Molina Cervantes Jorge Luis', 'Licenciatura en Ingeniería Matemática', 1, 0, 5, 4),
('2024610217', 'Ríos Maldonado Regina', 'Licenciatura en Ingeniería Matemática', 0, 1, 5, 5),
('2023610299', 'Cárdenas Espinoza Alejandro', 'Licenciatura en Ingeniería Matemática', 0, 0, 5, 4),
('2026610108', 'Orozco Soto Melissa', 'Licenciatura en Ingeniería Matemática', 0, 1, 5, 5),
('2025610148', 'Pacheco Serrano Cristian Eduardo', 'Licenciatura en Ingeniería Matemática', 1, 1, 5, 3),
('2024610234', 'Fuentes León Diana Laura', 'Licenciatura en Ingeniería Matemática', 0, 0, 5, 5),
('2023610312', 'Mejía Solís Iván', 'Licenciatura en Ingeniería Matemática', 1, 0, 5, 4),
('2026610121', 'Rosas Domínguez Abril', 'Licenciatura en Ingeniería Matemática', 0, 1, 5, 5);

-- Licenciatura en Matemática Algorítmicas
INSERT INTO Alumnos (boleta, nombre, carrera, trabaja, traslado, total_materias, cantidad_materias) VALUES
('2026610134', 'Carrillo Vázquez Mateo', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2025610162', 'Serrano Aguilar Lucía', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2024610250', 'Bautista Morales Axel Jair', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2023610330', 'Escobar Ramírez Fátima', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2026610149', 'Gallegos Cruz Santiago', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2025610177', 'Valdez Castillo Paulina', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 4),
('2024610269', 'Zamora Ortega Leonardo Daniel', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2023610348', 'Montoya Silva Carolina', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 3),
('2026610165', 'Trejo Mendoza Emiliano', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2025610193', 'Arias Navarro Fernanda', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2024610285', 'Lozano Campos Eduardo', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2023610361', 'Pineda Herrera Valentina', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 4),
('2026610180', 'Zúñiga Rojas Benjamín', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2025610209', 'Cervantes Guzmán Natalia', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2024610302', 'Arellano Soto Héctor Hugo', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2023610379', 'Villalobos Pérez Mariana Isabel', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5);

-- ============================================================================
-- 3. INSERCIÓN DE EVALUACIONES EN ALUMNOS_MATERIAS
-- ============================================================================

-- ALumno 1
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(1, 1, 8.50, 8.00, 9.00, 36, 34, 15, 12, 10, 9, 0, 1),
(1, 2, 7.50, 8.00, 8.50, 36, 33, 12, 10, 10, 8, 0, 1),
(1, 3, 9.00, 8.50, 9.20, 36, 35, 14, 13, 12, 11, 0, 1),
(1, 6, 7.00, 7.50, 8.00, 36, 32, 10, 7, 10, 9, 0, 0);

-- Alumno 2 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(2, 1, 9.50, 9.20, 9.80, 36, 36, 15, 15, 10, 10, 0, 1),
(2, 2, 9.00, 9.40, 9.10, 36, 35, 12, 11, 10, 10, 0, 1),
(2, 3, 8.80, 9.00, 9.30, 36, 36, 14, 12, 12, 12, 0, 1),
(2, 4, 8.50, 8.70, 9.00, 36, 34, 12, 10, 10, 9, 0, 1);

-- Alumno 3 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(3, 4, 6.50, 7.00, 7.50, 36, 29, 12, 6, 10, 7, 0, 0),
(3, 5, 6.00, 6.50, 7.00, 36, 28, 10, 5, 10, 7, 1, 0),
(3, 6, 7.20, 7.80, 8.00, 36, 30, 10, 7, 10, 8, 0, 1);

-- Alumno 4 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(4, 4, 8.00, 8.20, 8.50, 36, 33, 12, 9, 10, 9, 0, 1),
(4, 5, 7.80, 8.00, 8.40, 36, 34, 10, 8, 10, 9, 0, 1),
(4, 6, 8.50, 8.80, 9.00, 36, 35, 10, 9, 10, 10, 0, 1),
(4, 7, 7.50, 7.90, 8.20, 36, 32, 12, 8, 8, 7, 0, 0);

-- Alumno 5 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(5, 7, 6.80, 7.20, 7.50, 36, 30, 12, 7, 8, 6, 0, 0),
(5, 8, 7.40, 7.60, 8.10, 36, 31, 10, 7, 8, 7, 0, 1);

-- Alumno 6 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(6, 1, 9.00, 9.10, 9.50, 36, 35, 15, 14, 10, 10, 0, 1),
(6, 2, 8.70, 8.90, 9.20, 36, 36, 12, 11, 10, 9, 0, 1),
(6, 3, 8.40, 8.60, 8.90, 36, 34, 14, 11, 12, 11, 0, 1),
(6, 6, 8.20, 8.50, 8.80, 36, 35, 10, 9, 10, 9, 0, 1);

-- Alumno 7 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(7, 1, 7.00, 7.40, 7.80, 36, 31, 15, 9, 10, 8, 0, 0),
(7, 2, 6.80, 7.20, 7.50, 36, 30, 12, 8, 10, 8, 0, 0),
(7, 3, 7.50, 7.90, 8.10, 36, 32, 14, 10, 12, 10, 0, 1);

-- Alumno 8 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(8, 3, 8.80, 9.00, 9.10, 36, 35, 14, 12, 12, 11, 0, 1),
(8, 4, 8.40, 8.60, 8.90, 36, 34, 12, 10, 10, 9, 0, 1),
(8, 5, 8.90, 9.20, 9.40, 36, 36, 10, 9, 10, 10, 0, 1),
(8, 6, 8.10, 8.30, 8.70, 36, 33, 10, 8, 10, 9, 0, 1);

-- Alumno 9 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(9, 5, 6.20, 6.80, 7.20, 36, 28, 10, 6, 10, 7, 1, 0),
(9, 6, 7.00, 7.30, 7.70, 36, 30, 10, 7, 10, 8, 0, 0),
(9, 7, 6.50, 7.00, 7.40, 36, 29, 12, 6, 8, 6, 0, 0);

-- Alumno 10 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(10, 5, 8.60, 8.90, 9.20, 36, 35, 10, 9, 10, 9, 0, 1),
(10, 6, 9.00, 9.10, 9.40, 36, 36, 10, 10, 10, 10, 0, 1),
(10, 7, 8.30, 8.50, 8.80, 36, 34, 12, 10, 8, 8, 0, 1),
(10, 8, 8.70, 9.00, 9.30, 36, 35, 10, 9, 8, 8, 0, 1);

-- Alumno 11 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(11, 1, 7.80, 8.10, 8.40, 36, 33, 15, 11, 10, 9, 0, 1),
(11, 2, 8.00, 8.20, 8.50, 36, 34, 12, 10, 10, 9, 0, 1),
(11, 3, 7.60, 7.90, 8.20, 36, 32, 14, 10, 12, 10, 0, 0),
(11, 4, 7.90, 8.30, 8.60, 36, 33, 12, 9, 10, 9, 0, 1);

-- Alumno 12 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(12, 2, 7.40, 7.80, 8.00, 36, 31, 12, 8, 10, 8, 0, 1),
(12, 4, 7.10, 7.50, 7.90, 36, 30, 12, 7, 10, 8, 0, 0),
(12, 6, 7.70, 8.00, 8.30, 36, 32, 10, 8, 10, 9, 0, 1);

-- Alumno 13 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(13, 3, 8.20, 8.40, 8.70, 36, 34, 14, 11, 12, 11, 0, 1),
(13, 4, 7.90, 8.10, 8.50, 36, 33, 12, 9, 10, 9, 0, 1),
(13, 5, 8.50, 8.70, 9.00, 36, 35, 10, 8, 10, 9, 0, 1),
(13, 7, 7.60, 8.00, 8.30, 36, 32, 12, 9, 8, 7, 0, 1);

-- Alumno 14 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(14, 6, 6.70, 7.10, 7.50, 36, 29, 10, 6, 10, 7, 1, 0),
(14, 8, 7.20, 7.60, 8.00, 36, 31, 10, 7, 8, 7, 0, 1);

-- Alumno 15 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(15, 1, 7.30, 7.70, 8.10, 36, 32, 15, 10, 10, 8, 0, 1),
(15, 2, 7.00, 7.40, 7.80, 36, 31, 12, 8, 10, 8, 0, 0),
(15, 3, 7.60, 8.00, 8.30, 36, 33, 14, 11, 12, 10, 0, 1);

-- Alumno 16 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(16, 1, 9.20, 9.40, 9.60, 36, 36, 15, 14, 10, 10, 0, 1),
(16, 3, 8.90, 9.10, 9.30, 36, 35, 14, 13, 12, 12, 0, 1),
(16, 4, 8.70, 9.00, 9.20, 36, 35, 12, 11, 10, 10, 0, 1),
(16, 6, 9.00, 9.20, 9.50, 36, 36, 10, 9, 10, 10, 0, 1);

-- Alumno 17 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(17, 4, 7.80, 8.00, 8.40, 36, 33, 12, 9, 10, 9, 0, 1),
(17, 5, 7.50, 7.90, 8.20, 36, 32, 10, 8, 10, 8, 0, 0),
(17, 8, 8.10, 8.40, 8.70, 36, 34, 10, 8, 8, 7, 0, 1);

-- Alumno 18 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(18, 9, 9.10, 9.30, 9.50, 40, 39, 16, 15, 12, 12, 0, 1),
(18, 10, 8.80, 9.00, 9.20, 40, 38, 15, 13, 12, 11, 0, 1),
(18, 11, 8.50, 8.80, 9.10, 40, 39, 14, 12, 10, 10, 0, 1),
(18, 12, 8.90, 9.10, 9.40, 40, 40, 12, 11, 10, 10, 0, 1),
(18, 13, 8.40, 8.70, 9.00, 40, 37, 12, 10, 10, 9, 0, 1);

-- Alumno 19 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(19, 10, 7.60, 8.00, 8.30, 40, 35, 15, 10, 12, 10, 0, 1),
(19, 11, 7.40, 7.80, 8.10, 40, 34, 14, 9, 10, 8, 0, 0),
(19, 12, 7.90, 8.20, 8.50, 40, 36, 12, 9, 10, 9, 0, 1),
(19, 13, 7.20, 7.50, 7.90, 40, 33, 12, 8, 10, 8, 0, 0);

-- Alumno 20 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(20, 11, 6.50, 7.00, 7.40, 40, 31, 14, 7, 10, 7, 1, 0),
(20, 14, 7.10, 7.50, 7.80, 40, 32, 12, 8, 10, 8, 0, 0),
(20, 16, 6.80, 7.20, 7.60, 40, 30, 12, 7, 10, 7, 0, 0);

-- Alumno 21 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(21, 13, 7.50, 7.80, 8.10, 40, 34, 12, 8, 10, 8, 0, 1),
(21, 14, 8.00, 8.30, 8.60, 40, 36, 12, 9, 10, 9, 0, 1),
(21, 15, 7.20, 7.60, 7.90, 40, 33, 10, 7, 10, 8, 0, 0),
(21, 16, 7.80, 8.10, 8.40, 40, 35, 12, 9, 10, 9, 0, 1);

-- Alumno 22 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(22, 9, 8.70, 8.90, 9.20, 40, 38, 16, 14, 12, 11, 0, 1),
(22, 10, 8.50, 8.80, 9.00, 40, 37, 15, 13, 12, 11, 0, 1),
(22, 11, 8.20, 8.50, 8.80, 40, 36, 14, 11, 10, 9, 0, 1),
(22, 13, 8.00, 8.30, 8.60, 40, 36, 12, 10, 10, 9, 0, 1),
(22, 16, 8.60, 8.90, 9.10, 40, 38, 12, 10, 10, 10, 0, 1);

-- Alumno 23 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(23, 9, 9.00, 9.20, 9.40, 40, 39, 16, 15, 12, 12, 0, 1),
(23, 10, 8.90, 9.10, 9.30, 40, 40, 15, 14, 12, 12, 0, 1),
(23, 11, 8.60, 8.80, 9.00, 40, 38, 14, 12, 10, 10, 0, 1),
(23, 12, 8.80, 9.00, 9.20, 40, 39, 12, 11, 10, 10, 0, 1),
(23, 14, 9.10, 9.30, 9.50, 40, 40, 12, 11, 10, 10, 0, 1);

-- Alumno 24 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(24, 11, 7.90, 8.20, 8.50, 40, 36, 14, 10, 10, 9, 0, 1),
(24, 12, 8.10, 8.40, 8.70, 40, 37, 12, 10, 10, 9, 0, 1),
(24, 13, 7.60, 7.90, 8.20, 40, 35, 12, 9, 10, 8, 0, 0),
(24, 15, 7.80, 8.00, 8.30, 40, 36, 10, 8, 10, 9, 0, 1);

-- Alumno 25 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(25, 14, 6.90, 7.30, 7.70, 40, 32, 12, 7, 10, 7, 0, 0),
(25, 15, 6.40, 6.80, 7.20, 40, 30, 10, 6, 10, 7, 1, 0),
(25, 16, 7.20, 7.50, 7.90, 40, 33, 12, 8, 10, 8, 0, 1);

-- Alumno 26 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(26, 9, 8.40, 8.60, 8.90, 40, 38, 16, 13, 12, 11, 0, 1),
(26, 10, 8.20, 8.50, 8.80, 40, 37, 15, 12, 12, 11, 0, 1),
(26, 11, 8.00, 8.30, 8.60, 40, 36, 14, 11, 10, 9, 0, 1),
(26, 12, 8.50, 8.70, 9.00, 40, 38, 12, 10, 10, 10, 0, 1),
(26, 13, 8.10, 8.40, 8.70, 40, 37, 12, 10, 10, 9, 0, 1);

-- Alumno 27 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(27, 10, 7.50, 7.80, 8.10, 40, 34, 15, 10, 12, 9, 0, 1),
(27, 11, 7.30, 7.60, 8.00, 40, 33, 14, 9, 10, 8, 0, 0),
(27, 14, 7.80, 8.10, 8.40, 40, 35, 12, 9, 10, 9, 0, 1),
(27, 16, 7.60, 7.90, 8.20, 40, 34, 12, 8, 10, 8, 0, 1);

-- Alumno 28 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(28, 11, 8.60, 8.90, 9.10, 40, 38, 14, 12, 10, 10, 0, 1),
(28, 12, 8.80, 9.00, 9.30, 40, 39, 12, 11, 10, 10, 0, 1),
(28, 13, 8.20, 8.50, 8.80, 40, 37, 12, 10, 10, 9, 0, 1),
(28, 14, 8.50, 8.70, 9.00, 40, 38, 12, 10, 10, 9, 0, 1),
(28, 15, 8.30, 8.60, 8.90, 40, 37, 10, 9, 10, 9, 0, 1);

-- Alumno 29 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(29, 12, 8.00, 8.30, 8.60, 40, 36, 12, 9, 10, 9, 0, 1),
(29, 13, 7.70, 8.00, 8.40, 40, 35, 12, 9, 10, 8, 0, 1),
(29, 15, 7.90, 8.20, 8.50, 40, 36, 10, 8, 10, 9, 0, 1),
(29, 16, 8.20, 8.50, 8.80, 40, 37, 12, 10, 10, 9, 0, 1);

-- Alumno 30 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(30, 9, 8.80, 9.00, 9.20, 40, 38, 16, 14, 12, 11, 0, 1),
(30, 10, 8.60, 8.80, 9.10, 40, 37, 15, 13, 12, 11, 0, 1),
(30, 11, 8.30, 8.60, 8.90, 40, 37, 14, 12, 10, 9, 0, 1),
(30, 12, 8.70, 8.90, 9.20, 40, 39, 12, 11, 10, 10, 0, 1),
(30, 16, 8.50, 8.70, 9.00, 40, 38, 12, 10, 10, 9, 0, 1);

-- Alumno 31 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(31, 10, 6.60, 7.00, 7.40, 40, 31, 15, 8, 12, 8, 1, 0),
(31, 11, 7.00, 7.30, 7.70, 40, 32, 14, 8, 10, 7, 0, 0),
(31, 13, 6.80, 7.20, 7.60, 40, 31, 12, 7, 10, 7, 0, 0);

-- Alumno 32 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(32, 10, 9.00, 9.20, 9.40, 40, 39, 15, 14, 12, 12, 0, 1),
(32, 11, 8.70, 8.90, 9.20, 40, 38, 14, 12, 10, 10, 0, 1),
(32, 12, 8.90, 9.10, 9.30, 40, 40, 12, 11, 10, 10, 0, 1),
(32, 14, 9.10, 9.30, 9.50, 40, 39, 12, 11, 10, 10, 0, 1),
(32, 16, 8.80, 9.00, 9.30, 40, 38, 12, 11, 10, 10, 0, 1);

-- Alumno 33 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(33, 12, 7.40, 7.70, 8.00, 40, 34, 12, 8, 10, 8, 0, 1),
(33, 14, 7.60, 7.90, 8.20, 40, 35, 12, 9, 10, 8, 0, 1),
(33, 15, 7.10, 7.50, 7.80, 40, 33, 10, 7, 10, 7, 0, 0),
(33, 16, 7.50, 7.80, 8.10, 40, 34, 12, 8, 10, 8, 0, 1);

-- Alumno 34 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(34, 9, 8.50, 8.80, 9.00, 40, 38, 16, 13, 12, 11, 0, 1),
(34, 10, 8.30, 8.60, 8.90, 40, 37, 15, 12, 12, 11, 0, 1),
(34, 11, 8.10, 8.40, 8.70, 40, 36, 14, 11, 10, 9, 0, 1),
(34, 13, 7.90, 8.20, 8.50, 40, 36, 12, 10, 10, 9, 0, 1),
(34, 14, 8.40, 8.70, 9.00, 40, 38, 12, 10, 10, 9, 0, 1);

-- Alumno 35 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(35, 17, 9.20, 9.40, 9.60, 48, 47, 18, 16, 14, 14, 0, 1),
(35, 18, 8.80, 9.00, 9.30, 48, 46, 15, 14, 12, 12, 0, 1),
(35, 19, 9.00, 9.20, 9.50, 48, 47, 16, 15, 12, 12, 0, 1),
(35, 20, 9.10, 9.30, 9.50, 48, 48, 14, 13, 10, 10, 0, 1),
(35, 21, 8.60, 8.90, 9.10, 48, 45, 14, 12, 10, 10, 0, 1),
(35, 22, 8.70, 9.00, 9.20, 48, 46, 12, 11, 10, 9, 0, 1);

-- Alumno 36 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(36, 18, 8.00, 8.30, 8.60, 48, 43, 15, 11, 12, 10, 0, 1),
(36, 19, 8.20, 8.50, 8.80, 48, 44, 16, 12, 12, 11, 0, 1),
(36, 20, 8.50, 8.70, 9.00, 48, 45, 14, 11, 10, 9, 0, 1),
(36, 21, 7.80, 8.10, 8.40, 48, 42, 14, 10, 10, 9, 0, 1),
(36, 23, 8.10, 8.40, 8.70, 48, 43, 12, 10, 10, 9, 0, 1);

-- Alumno 37 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(37, 19, 7.20, 7.60, 8.00, 48, 39, 16, 10, 12, 9, 0, 0),
(37, 20, 7.50, 7.80, 8.20, 48, 40, 14, 9, 10, 8, 0, 1),
(37, 22, 6.80, 7.20, 7.50, 48, 38, 12, 7, 10, 7, 1, 0),
(37, 23, 7.00, 7.40, 7.80, 48, 39, 12, 8, 10, 8, 0, 0);

-- Alumno 38 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(38, 19, 8.90, 9.10, 9.40, 48, 47, 16, 14, 12, 12, 0, 1),
(38, 20, 9.20, 9.40, 9.60, 48, 48, 14, 13, 10, 10, 0, 1),
(38, 21, 8.70, 8.90, 9.20, 48, 46, 14, 12, 10, 10, 0, 1),
(38, 22, 8.50, 8.80, 9.10, 48, 45, 12, 11, 10, 9, 0, 1),
(38, 23, 8.80, 9.00, 9.30, 48, 46, 12, 11, 10, 10, 0, 1),
(38, 24, 9.00, 9.20, 9.50, 48, 47, 12, 11, 10, 10, 0, 1);

-- Alumno 39 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(39, 17, 8.40, 8.70, 9.00, 48, 45, 18, 14, 14, 12, 0, 1),
(39, 18, 8.10, 8.40, 8.70, 48, 44, 15, 12, 12, 11, 0, 1),
(39, 19, 8.30, 8.60, 8.90, 48, 44, 16, 13, 12, 11, 0, 1),
(39, 20, 8.60, 8.80, 9.10, 48, 46, 14, 12, 10, 9, 0, 1),
(39, 21, 7.90, 8.20, 8.50, 48, 43, 14, 11, 10, 9, 0, 1);

-- Alumno 40 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(40, 19, 7.60, 7.90, 8.30, 48, 41, 16, 11, 12, 10, 0, 1),
(40, 20, 7.90, 8.20, 8.50, 48, 42, 14, 10, 10, 9, 0, 1),
(40, 22, 7.30, 7.60, 8.00, 48, 40, 12, 8, 10, 8, 0, 0),
(40, 24, 7.70, 8.00, 8.40, 48, 41, 12, 9, 10, 9, 0, 1);

-- Alumno 41 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(41, 17, 8.70, 8.90, 9.20, 48, 46, 18, 15, 14, 13, 0, 1),
(41, 18, 8.40, 8.70, 9.00, 48, 45, 15, 13, 12, 11, 0, 1),
(41, 19, 8.60, 8.80, 9.10, 48, 46, 16, 14, 12, 11, 0, 1),
(41, 20, 8.90, 9.10, 9.40, 48, 47, 14, 13, 10, 10, 0, 1),
(41, 21, 8.20, 8.50, 8.80, 48, 44, 14, 11, 10, 9, 0, 1),
(41, 23, 8.50, 8.70, 9.00, 48, 45, 12, 10, 10, 9, 0, 1);

-- Alumno 42 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(42, 22, 6.50, 6.90, 7.30, 48, 37, 12, 6, 10, 7, 1, 0),
(42, 23, 6.80, 7.20, 7.60, 48, 38, 12, 7, 10, 7, 0, 0),
(42, 24, 7.10, 7.50, 7.90, 48, 39, 12, 8, 10, 8, 0, 0);

-- Alumno 43 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(43, 17, 9.00, 9.20, 9.50, 48, 47, 18, 16, 14, 14, 0, 1),
(43, 18, 8.70, 9.00, 9.20, 48, 46, 15, 14, 12, 12, 0, 1),
(43, 19, 8.90, 9.10, 9.40, 48, 47, 16, 15, 12, 12, 0, 1),
(43, 20, 9.10, 9.30, 9.50, 48, 48, 14, 13, 10, 10, 0, 1),
(43, 21, 8.50, 8.80, 9.00, 48, 45, 14, 12, 10, 10, 0, 1),
(43, 22, 8.80, 9.00, 9.30, 48, 46, 12, 11, 10, 10, 0, 1);

-- Alumno 44 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(44, 18, 7.90, 8.20, 8.50, 48, 43, 15, 11, 12, 10, 0, 1),
(44, 19, 8.10, 8.40, 8.70, 48, 44, 16, 12, 12, 10, 0, 1),
(44, 20, 8.40, 8.60, 8.90, 48, 45, 14, 11, 10, 9, 0, 1),
(44, 22, 7.70, 8.00, 8.30, 48, 42, 12, 9, 10, 8, 0, 1),
(44, 23, 8.00, 8.30, 8.60, 48, 43, 12, 10, 10, 9, 0, 1);

-- Alumno 45 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(45, 17, 8.80, 9.00, 9.30, 48, 46, 18, 15, 14, 13, 0, 1),
(45, 19, 8.60, 8.90, 9.20, 48, 45, 16, 14, 12, 11, 0, 1),
(45, 20, 9.00, 9.20, 9.40, 48, 47, 14, 13, 10, 10, 0, 1),
(45, 21, 8.40, 8.70, 9.00, 48, 45, 14, 12, 10, 9, 0, 1),
(45, 23, 8.70, 8.90, 9.20, 48, 46, 12, 11, 10, 10, 0, 1),
(45, 24, 8.90, 9.10, 9.40, 48, 47, 12, 11, 10, 10, 0, 1);

-- Alumno 46 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(46, 20, 7.80, 8.10, 8.40, 48, 42, 14, 10, 10, 9, 0, 1),
(46, 21, 7.30, 7.70, 8.00, 48, 40, 14, 9, 10, 8, 0, 0),
(46, 23, 7.50, 7.90, 8.20, 48, 41, 12, 9, 10, 8, 0, 1),
(46, 24, 7.70, 8.00, 8.30, 48, 42, 12, 9, 10, 9, 0, 1);

-- Alumno 47 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(47, 17, 8.20, 8.50, 8.80, 48, 44, 18, 14, 14, 12, 0, 1),
(47, 18, 7.90, 8.20, 8.50, 48, 43, 15, 11, 12, 10, 0, 1),
(47, 19, 8.10, 8.40, 8.70, 48, 44, 16, 12, 12, 10, 0, 1),
(47, 20, 8.50, 8.70, 9.00, 48, 45, 14, 11, 10, 9, 0, 1),
(47, 21, 7.80, 8.10, 8.40, 48, 42, 14, 10, 10, 9, 0, 1);

-- Alumno 48 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(48, 17, 9.30, 9.50, 9.70, 48, 48, 18, 17, 14, 14, 0, 1),
(48, 18, 9.00, 9.20, 9.40, 48, 47, 15, 14, 12, 12, 0, 1),
(48, 19, 9.10, 9.30, 9.60, 48, 48, 16, 15, 12, 12, 0, 1),
(48, 20, 9.40, 9.50, 9.80, 48, 48, 14, 14, 10, 10, 0, 1),
(48, 21, 8.90, 9.10, 9.30, 48, 46, 14, 13, 10, 10, 0, 1),
(48, 24, 9.20, 9.40, 9.60, 48, 47, 12, 11, 10, 10, 0, 1);

-- Alumno 49 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(49, 19, 7.10, 7.50, 7.90, 48, 39, 16, 10, 12, 9, 0, 0),
(49, 21, 6.70, 7.10, 7.50, 48, 38, 14, 8, 10, 7, 1, 0),
(49, 22, 6.90, 7.30, 7.70, 48, 39, 12, 8, 10, 8, 0, 0),
(49, 24, 7.40, 7.80, 8.10, 48, 40, 12, 9, 10, 8, 0, 1);

-- Alumno 50 
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(50, 19, 8.50, 8.80, 9.10, 48, 45, 16, 13, 12, 11, 0, 1),
(50, 20, 8.80, 9.00, 9.30, 48, 46, 14, 12, 10, 10, 0, 1),
(50, 22, 8.20, 8.50, 8.80, 48, 44, 12, 10, 10, 9, 0, 1),
(50, 23, 8.40, 8.70, 9.00, 48, 45, 12, 10, 10, 9, 0, 1),
(50, 24, 8.60, 8.90, 9.20, 48, 46, 12, 11, 10, 10, 0, 1);
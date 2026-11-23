USE Proyecto;

-- ============================================================================
-- 1. INSERCIÓN DE MATERIAS (Licenciatura en Matemática Algorítmica - IPN)
-- ============================================================================
INSERT INTO Materias (nombre_materia, grupo) VALUES
('Cálculo I', '1AV1'),
('Álgebra Superior', '1AV1'),
('Geometría Analítica', '1AV1'),
('Matemáticas Discretas', '1AV2'),
('Introducción a la Programación', '1AV2'),
('Contextos: Tiempos Modernos', '1AV2'),
('Cálculo II', '2AV1'),
('Álgebra Lineal I', '2AV1'),
('Estructuras de Datos', '2AV1'),
('Lógica Matemática', '2AV2'),
('Probabilidad', '2AV2'),
('Bases de Datos', '2AV2'),
('Cálculo III', '3AV1'),
('Álgebra Lineal II', '3AV1'),
('Análisis de Algoritmos', '3AV1'),
('Estadística Inferencial', '3AV2'),
('Ecuaciones Diferenciales Ordinarias', '3AV2'),
('Programación Orientada a Objetos', '3AV2'),
('Análisis Matemático I', '4AV1'),
('Álgebra Moderna I', '4AV1'),
('Métodos Numéricos I', '4AV1'),
('Teoría de Gráficas', '4AV2'),
('Investigación de Operaciones', '4AV2'),
('Variable Compleja', '4AV2'),
('Análisis Matemático II', '5AV1'),
('Métodos Numéricos II', '5AV1'),
('Optimización Lineal', '5AV1'),
('Procesos Estocásticos', '5AV2'),
('Teoría de la Computación', '5AV2'),
('Criptografía', '5AV2'),
('Aprendizaje Automático', '6AV1'),
('Optimización No Lineal', '6AV1'),
('Compiladores', '6AV1'),
('Análisis Funcional', '6AV2'),
('Minería de Datos', '6AV2'),
('Sistemas Distribuidos', '6AV2');

-- ============================================================================
-- 2. INSERCIÓN DE 200 ALUMNOS (Licenciatura en Matemática Algorítmica)
-- ============================================================================
INSERT INTO Alumnos (boleta, nombre, carrera, trabaja, traslado, total_materias, cantidad_materias) VALUES
('2022631825', 'López Gutiérrez Luis Fernando', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2022632287', 'Rodríguez Romero Sofía Alejandra', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 4),
('2022639675', 'Cruz Herrera Carlos Alberto', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 5),
('2022633812', 'Morales Salazar Mariana', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 5),
('2022638929', 'Jiménez Muñoz Diego Armando', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2022630107', 'Gutiérrez Bautista Valeria Montserrat', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2022635575', 'Aguilar Carrillo José Manuel', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2022631675', 'Castillo Miranda Daniela Fernanda', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 6),
('2022639892', 'Méndez Pacheco Ángel Gabriel', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 6),
('2022638786', 'Juárez Zamora Camila Isabel', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2022639045', 'Medina Arellano Alejandro', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2022639460', 'Ortega Barajas Natalia Sofía', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 6),
('2022634742', 'Salazar Saucedo Eduardo Daniel', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 2),
('2022634555', 'Guzmán Rubio Paula Andrea', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2022636066', 'Luna Téllez Jorge Enrique', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2022639981', 'Delgado Barrera Ximena Guadalupe', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2022632678', 'Ríos Cornejo Fernando Javier', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2022635314', 'Meza Rentería Renata', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 4),
('2022635169', 'Vega Delgadillo Ricardo Iván', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 5),
('2022633484', 'Carrillo Corona Andrea Michelle', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2022632341', 'Espinoza Rodríguez Héctor Miguel', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2022639578', 'Santana Vázquez Gabriela Estefanía', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2022633594', 'Cárdenas Mendoza Adrián', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 2),
('2022631490', 'Serrano Méndez Regina Victoria', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 4),
('2022636917', 'Núñez Ramos Sebastián', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2022638670', 'Velázquez De la Cruz Lucía Fernanda', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2022631877', 'Zamora Delgado Óscar Eduardo', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2022635574', 'Arias Cortés María José', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2022630054', 'Zúñiga Fuentes Rodrigo Alejandro', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 2),
('2022638318', 'Escobar Cárdenas Ana Karen', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 3),
('2022632505', 'Soto Ibarra Emiliano', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2022639814', 'Galván Trejo Carolina Beatriz', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 6),
('2022635039', 'Padilla Escobar Leonardo David', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2022631404', 'Saucedo Ocampo Fátima Lizeth', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 4),
('2022632104', 'Paredes Figueroa Iván Antonio', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 4),
('2022633471', 'Arredondo Godínez Samantha', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 3),
('2022636538', 'Godínez Alarcón César Augusto', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 2),
('2022638480', 'Peralta Bustamante Abril Alejandra', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2022635540', 'Montiel Villegas Kevin Alexis', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2022630118', 'Santillán Calderón Melissa Paola', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2023631105', 'Barrera Alvarado Bruno Nicolás', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 3),
('2023634563', 'Zepeda García Diana Laura', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 4),
('2023639356', 'Reséndiz Ramírez Jesús Alberto', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2023636670', 'Villegas Jiménez Karla Patricia', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 6),
('2023635805', 'Solórzano Ortiz Mauricio', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2023631613', 'Mora Rivera Itzel Guadalupe', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2023634074', 'Tapia Ortega Rafael Ernesto', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2023636913', 'Delgadillo Franco Miriam Abigail', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2023637261', 'Aguirre León Alan Mauricio', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 4),
('2023631529', 'Quintero Vega Jessica Denisse', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 3),
('2023637887', 'García Solís Francisco Javier', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2023632698', 'González Rosas Brenda Lizbeth', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2023637455', 'Sánchez Velázquez Sergio Andrés', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2023632537', 'Flores Lozano Monserrat', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2023639490', 'Vázquez Orozco Arturo Benjamín', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2023630937', 'Torres Padilla Tania Carolina', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2023630932', 'Ruiz Beltrán Guillermo', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 2),
('2023631123', 'Ortiz Valdés Paulina Alejandra', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2023636616', 'Romero Santillán Cristian Omar', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2023639486', 'Chávez Olvera Estefanía', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2023639563', 'Domínguez Medrano Marco Antonio', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2023633347', 'Ramos Tapia Jimena Nicole', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2023636485', 'Vargas Avila Erick Eduardo', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2023635181', 'Rojas López Liliana Fabiola', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 3),
('2023631201', 'Franco Flores Víctor Hugo', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2023635719', 'Muñoz Díaz Alejandra Noemí', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 3),
('2023637180', 'Contreras Castillo Manuel Alejandro', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 4),
('2023639087', 'Estrada Domínguez Cynthia Valeria', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2023634334', 'Cortés Santiago Brayan Alexis', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 6),
('2023634463', 'Guerrero Luna Araceli', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2023633336', 'Peña Estrada Salvador Enrique', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 4),
('2023630833', 'Solís Lara Adriana Cecilia', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2023630723', 'Miranda Santana Jonathan Israel', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2023632648', 'Maldonado Acosta Fernanda Guadalupe', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2023639190', 'Acosta Cervantes Gerardo', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 6),
('2023638939', 'Ibarra Zúñiga Mariana Lizeth', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2023637042', 'Molina Duarte Raúl Esteban', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2023635863', 'Montoya Castañeda Ingrid Vanessa', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2023635795', 'Lozano Arredondo Edgar Alfonso', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 4),
('2023633879', 'Arellano Ochoa Rocío del Carmen', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 3),
('2024630407', 'Gallegos Becerra Mateo Sebastián', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2024634066', 'Duarte Reséndiz Lorena Beatriz', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2024636268', 'Ocampo Palacios Gustavo Adolfo', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 3),
('2024635729', 'Bernal Camacho Evelyn Sofía', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2024633653', 'Robles Quintero Axel Gabriel', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2024634565', 'Beltrán Pérez Claudia Patricia', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 3),
('2024638786', 'Rubio Morales Rubén Darío', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 6),
('2024632926', 'Arroyo Ruiz Pamela Alejandra', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2024631777', 'Ochoa Álvarez Santiago', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2024637150', 'Alarcón Medina Marisol', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2024639447', 'Lugo Rojas Alberto Carlos', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 6),
('2024630028', 'Granados Cabrera Verónica', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2024635968', 'Olvera Meza Daniel Alejandro', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2024635144', 'Cornejo Peña Alma Rosa', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2024638309', 'Ponce Valdez Enrique Alonso', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2024634845', 'Palacios Núñez Dulce María', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2024632852', 'Calderón Montoya Mario Alberto', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2024634979', 'Rosales Villalobos Ana Sofía', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2024637619', 'Marín Galván Ulises', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2024632781', 'Avila Robles Valeria Nicole', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2024631531', 'Corona Esparza Pablo Andrés', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 4),
('2024633263', 'Martínez Montiel Regina Isabel', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 6),
('2024631194', 'Pérez Granados Luis Ángel', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2024636292', 'Ramírez Quiroz Cecilia Fernanda', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2024631747', 'Gómez Mora Rodrigo', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2024630823', 'Reyes Marín Natalia', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2024637479', 'Díaz Hernández José Antonio', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2024637252', 'Mendoza Sánchez Andrea Guadalupe', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2024638977', 'Moreno Reyes Alexis Eduardo', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2024637374', 'Álvarez Aguilar Mariana Sofía', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2024638541', 'Rivera Chávez Roberto Carlos', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2024631270', 'Herrera Castro Karen Lizeth', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2024635239', 'Castro Guzmán David Alejandro', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 3),
('2024633789', 'Santiago Contreras Sofía Valentina', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2024631053', 'De la Cruz Campos Miguel Ángel', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2024636813', 'Silva Espinoza Daniela Alejandra', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2024639570', 'Cabrera Maldonado Fernando', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 3),
('2024637815', 'León Sandoval Camila', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2024636866', 'Bautista Arias Juan Pablo', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2024638000', 'Campos Gallegos Paola Andrea', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2025636372', 'Lara Villaseñor Emmanuel', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2025632705', 'Fuentes Paredes Ximena', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 4),
('2025636456', 'Navarro Arroyo Carlos Daniel', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2025637023', 'Valdez Esquivel Gabriela', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2025634263', 'Rosas Zepeda Adrián Alejandro', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2025635530', 'Pacheco Ponce Lucía', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2025634134', 'Sandoval Naranjo Héctor', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 4),
('2025635734', 'Cervantes Aguirre Renata Sofía', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 6),
('2025630509', 'Trejo Martínez Diego', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 3),
('2025632497', 'Pineda Cruz María Fernanda', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2025639241', 'Villalobos Torres Jorge Luis', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 3),
('2025636044', 'Orozco Moreno Ana Paula', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2025632684', 'Barajas Juárez Óscar Iván', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 2),
('2025635112', 'Villaseñor Vargas Alejandra', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2025636499', 'Castañeda Silva Sebastián Andrés', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 3),
('2025631670', 'Figueroa Ríos Carolina', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 4),
('2025639273', 'Salgado Guerrero Leonardo', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2025636072', 'Esparza Navarro Fátima', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2025636883', 'Valdés Serrano Iván', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2025637533', 'Téllez Molina Samantha Nicole', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2025638818', 'Esquivel Pineda César', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2025635281', 'Becerra Soto Abril', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 3),
('2025633996', 'Bustamante Bernal Kevin', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2025635512', 'Murillo Salgado Melissa', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2025637989', 'Quiroz Peralta Bruno', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2025634582', 'Medrano Lugo Diana', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 3),
('2025638465', 'Rentería Murillo Jesús', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 3),
('2025638005', 'Naranjo Solórzano Karla', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2025638042', 'Camacho Rosales Mauricio Alejandro', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 5),
('2025633631', 'Alvarado Benítez Itzel', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2025637754', 'Benítez González Rafael', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2025635765', 'Hernández Gómez Miriam', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2025633778', 'López Gutiérrez Alan', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2025638780', 'Rodríguez Romero Jessica', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 2),
('2025634531', 'Cruz Herrera Francisco', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 4),
('2025631648', 'Morales Salazar Brenda', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 4),
('2025632940', 'Jiménez Muñoz Sergio', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2025634495', 'Gutiérrez Bautista Monserrat Guadalupe', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 6),
('2025632069', 'Aguilar Carrillo Arturo', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2025630201', 'Castillo Miranda Tania', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2026635583', 'Méndez Pacheco Guillermo Antonio', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 6),
('2026631870', 'Juárez Zamora Paulina', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 4),
('2026639454', 'Medina Arellano Cristian', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 5),
('2026639222', 'Ortega Barajas Estefanía Isabel', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 3),
('2026631941', 'Salazar Saucedo Marco', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2026638562', 'Guzmán Rubio Jimena', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2026639643', 'Luna Téllez Erick', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 2),
('2026639989', 'Delgado Barrera Liliana', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 2),
('2026633458', 'Ríos Cornejo Víctor', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 6),
('2026632848', 'Meza Rentería Alejandra Sofía', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2026637382', 'Vega Delgadillo Manuel', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 4),
('2026633793', 'Carrillo Corona Cynthia', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2026631167', 'Espinoza Rodríguez Brayan', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 4),
('2026636966', 'Santana Vázquez Araceli Guadalupe', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2026634353', 'Cárdenas Mendoza Salvador', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 4),
('2026635040', 'Serrano Méndez Adriana', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2026637196', 'Núñez Ramos Jonathan', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2026634461', 'Velázquez De la Cruz Fernanda', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2026639799', 'Zamora Delgado Gerardo Daniel', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2026639892', 'Arias Cortés Mariana Isabel', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 6),
('2026634416', 'Zúñiga Fuentes Raúl', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2026637709', 'Escobar Cárdenas Ingrid', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2026632974', 'Soto Ibarra Edgar', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 2),
('2026631495', 'Galván Trejo Rocío', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 5),
('2026631714', 'Padilla Escobar Mateo', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 3),
('2026634723', 'Saucedo Ocampo Lorena', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 4),
('2026637452', 'Paredes Figueroa Gustavo', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2026636623', 'Arredondo Godínez Evelyn', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 3),
('2026636771', 'Godínez Alarcón Axel', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2026637243', 'Peralta Bustamante Claudia', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 4),
('2026634720', 'Montiel Villegas Rubén', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 5),
('2026630473', 'Santillán Calderón Pamela', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 2),
('2026632595', 'Barrera Alvarado Santiago Daniel', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 6),
('2026631528', 'Zepeda García Marisol Andrea', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2026637561', 'Reséndiz Ramírez Alberto', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 3),
('2026638166', 'Villegas Jiménez Verónica Beatriz', 'Licenciatura en Matemática Algorítmica', 1, 1, 6, 3),
('2026636808', 'Solórzano Ortiz Daniel', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 4),
('2026636285', 'Mora Rivera Alma', 'Licenciatura en Matemática Algorítmica', 0, 0, 6, 6),
('2026631144', 'Tapia Ortega Enrique', 'Licenciatura en Matemática Algorítmica', 0, 1, 6, 6),
('2026635569', 'Delgadillo Franco Dulce', 'Licenciatura en Matemática Algorítmica', 1, 0, 6, 3);

-- ============================================================================
-- 3. INSERCIÓN DE EVALUACIONES EN ALUMNOS_MATERIAS
-- ============================================================================

-- Alumno 1
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(1, 1, 7.33, 7.46, 7.44, 40, 33, 18, 12, 14, 10, 0, 0),
(1, 2, 7.78, 7.28, 7.25, 40, 36, 15, 9, 14, 9, 0, 0),
(1, 3, 6.69, 8.05, 7.26, 36, 34, 10, 9, 14, 9, 0, 0),
(1, 4, 7.58, 7.27, 7.72, 36, 28, 15, 11, 12, 11, 0, 1),
(1, 5, 7.54, 7.61, 7.99, 48, 44, 15, 12, 14, 13, 0, 1),
(1, 6, 6.55, 6.80, 7.68, 40, 33, 18, 10, 14, 9, 0, 0);

-- Alumno 2
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(2, 7, 8.98, 7.88, 9.03, 40, 37, 14, 13, 10, 8, 0, 1),
(2, 10, 8.42, 8.61, 9.03, 36, 32, 10, 10, 10, 9, 0, 1),
(2, 11, 8.99, 8.02, 8.57, 40, 38, 14, 10, 14, 13, 0, 1),
(2, 12, 8.64, 8.04, 8.54, 40, 39, 14, 13, 12, 11, 0, 1);

-- Alumno 3
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(3, 13, 7.02, 7.16, 7.85, 40, 30, 18, 15, 12, 7, 0, 0),
(3, 14, 7.19, 7.40, 6.53, 48, 47, 15, 11, 10, 10, 0, 0),
(3, 15, 6.49, 6.63, 6.81, 48, 48, 18, 11, 8, 5, 1, 0),
(3, 16, 6.82, 7.17, 7.49, 36, 31, 14, 13, 10, 7, 1, 0),
(3, 17, 6.97, 7.72, 7.20, 40, 32, 14, 14, 12, 12, 0, 0);

-- Alumno 4
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(4, 19, 9.24, 9.72, 9.80, 48, 44, 10, 10, 8, 7, 0, 1),
(4, 21, 8.95, 8.99, 9.39, 48, 44, 16, 15, 12, 10, 0, 1),
(4, 22, 9.16, 9.01, 9.32, 48, 44, 16, 13, 8, 8, 0, 1),
(4, 23, 9.39, 9.62, 8.87, 40, 35, 12, 9, 8, 7, 0, 1),
(4, 24, 9.64, 8.51, 8.78, 48, 43, 15, 14, 12, 12, 0, 1);

-- Alumno 5
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(5, 25, 9.21, 9.60, 9.39, 40, 35, 18, 15, 10, 9, 0, 1),
(5, 27, 8.90, 8.76, 9.04, 48, 44, 16, 14, 8, 7, 0, 1),
(5, 28, 8.64, 9.79, 9.86, 40, 35, 18, 14, 8, 6, 0, 1),
(5, 29, 9.41, 8.77, 8.71, 48, 43, 10, 8, 10, 8, 0, 1),
(5, 30, 8.72, 8.64, 9.79, 36, 33, 12, 10, 12, 10, 0, 1);

-- Alumno 6
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(6, 31, 7.73, 7.57, 6.87, 40, 30, 12, 11, 14, 13, 0, 0),
(6, 32, 6.72, 6.84, 7.48, 40, 38, 16, 9, 14, 13, 0, 0),
(6, 35, 6.88, 7.61, 7.87, 48, 44, 14, 14, 8, 5, 0, 0),
(6, 36, 8.05, 7.94, 7.45, 36, 34, 18, 16, 8, 5, 0, 1);

-- Alumno 7
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(7, 1, 8.28, 8.60, 8.23, 48, 46, 14, 13, 14, 11, 0, 1),
(7, 2, 8.59, 7.76, 8.62, 48, 47, 12, 12, 14, 12, 0, 1),
(7, 3, 8.02, 8.76, 8.26, 48, 42, 14, 13, 12, 12, 0, 1),
(7, 4, 7.78, 8.94, 8.66, 40, 35, 10, 7, 8, 7, 0, 1),
(7, 5, 7.54, 8.63, 8.84, 48, 42, 16, 16, 12, 12, 0, 1),
(7, 6, 7.58, 8.10, 8.63, 40, 40, 10, 9, 12, 11, 0, 1);

-- Alumno 8
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(8, 7, 8.64, 9.09, 8.57, 40, 39, 12, 12, 8, 8, 0, 1),
(8, 8, 9.50, 9.47, 8.78, 36, 33, 18, 15, 12, 11, 0, 1),
(8, 9, 8.12, 9.53, 9.20, 40, 35, 12, 9, 8, 8, 0, 1),
(8, 10, 8.91, 8.84, 9.05, 36, 33, 14, 12, 8, 6, 0, 1),
(8, 11, 8.34, 9.37, 8.48, 36, 33, 15, 14, 14, 14, 0, 1),
(8, 12, 8.73, 8.61, 9.13, 40, 38, 10, 9, 14, 13, 0, 1);

-- Alumno 9
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(9, 13, 7.47, 7.32, 7.42, 40, 35, 10, 5, 14, 14, 0, 0),
(9, 14, 6.24, 7.00, 6.67, 48, 46, 14, 8, 14, 14, 1, 0),
(9, 15, 6.08, 7.54, 7.56, 48, 42, 16, 14, 14, 11, 1, 0),
(9, 16, 6.08, 6.70, 7.47, 48, 43, 18, 14, 8, 8, 0, 0),
(9, 17, 6.41, 7.07, 7.08, 40, 34, 18, 14, 10, 8, 0, 0),
(9, 18, 6.16, 7.14, 7.09, 36, 32, 14, 9, 10, 6, 1, 0);

-- Alumno 10
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(10, 19, 9.38, 9.29, 9.53, 48, 45, 18, 17, 12, 12, 0, 1),
(10, 20, 8.91, 9.26, 9.40, 48, 44, 14, 14, 8, 7, 0, 1),
(10, 21, 9.20, 9.07, 9.37, 36, 33, 14, 10, 8, 8, 0, 1),
(10, 22, 9.33, 9.18, 9.55, 48, 42, 15, 15, 10, 9, 0, 1),
(10, 23, 9.35, 9.34, 10.00, 40, 35, 14, 10, 10, 8, 0, 1),
(10, 24, 8.81, 9.25, 9.36, 48, 46, 12, 11, 12, 11, 0, 1);

-- Alumno 11
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(11, 25, 5.75, 6.76, 6.31, 48, 46, 16, 10, 12, 7, 0, 0),
(11, 26, 5.82, 6.30, 7.26, 48, 46, 15, 9, 8, 7, 0, 0),
(11, 27, 6.58, 6.27, 6.09, 48, 47, 18, 17, 8, 8, 0, 0),
(11, 28, 5.64, 6.24, 7.24, 40, 37, 12, 7, 10, 7, 1, 0),
(11, 29, 6.88, 5.95, 6.99, 48, 44, 10, 10, 12, 11, 1, 0),
(11, 30, 6.18, 6.04, 7.07, 48, 48, 12, 11, 14, 9, 0, 0);

-- Alumno 12
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(12, 31, 6.51, 7.70, 7.55, 36, 32, 18, 18, 14, 12, 0, 0),
(12, 32, 7.32, 7.05, 7.04, 36, 30, 16, 10, 12, 7, 0, 0),
(12, 33, 7.46, 7.13, 6.59, 48, 37, 14, 8, 10, 8, 0, 0),
(12, 34, 6.92, 7.51, 6.58, 36, 34, 14, 7, 14, 9, 0, 0),
(12, 35, 6.71, 6.89, 6.56, 36, 27, 14, 8, 12, 8, 1, 0),
(12, 36, 6.58, 7.51, 7.42, 36, 34, 15, 7, 8, 5, 1, 0);

-- Alumno 13
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(13, 2, 9.32, 9.20, 9.80, 36, 33, 10, 7, 10, 9, 0, 1),
(13, 5, 9.37, 9.48, 8.80, 40, 39, 16, 12, 10, 10, 0, 1);

-- Alumno 14
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(14, 7, 6.79, 7.30, 6.59, 40, 31, 16, 16, 8, 8, 0, 0),
(14, 8, 6.24, 6.91, 6.99, 48, 36, 14, 8, 12, 8, 0, 0),
(14, 9, 7.11, 7.45, 7.50, 40, 32, 10, 7, 12, 12, 1, 0),
(14, 10, 7.34, 7.02, 7.44, 48, 38, 12, 6, 14, 9, 1, 0),
(14, 12, 6.24, 6.65, 6.53, 40, 38, 15, 15, 14, 11, 1, 0);

-- Alumno 15
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(15, 13, 8.67, 8.54, 8.99, 40, 40, 15, 14, 12, 10, 0, 1),
(15, 14, 8.91, 9.07, 9.76, 48, 44, 10, 10, 8, 7, 0, 1),
(15, 15, 9.07, 9.52, 9.23, 40, 35, 10, 9, 12, 11, 0, 1),
(15, 17, 8.84, 9.37, 8.70, 40, 37, 15, 11, 12, 12, 0, 1),
(15, 18, 9.67, 8.75, 9.84, 36, 31, 18, 18, 14, 13, 0, 1);

-- Alumno 16
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(16, 19, 5.61, 6.80, 6.32, 40, 39, 10, 9, 10, 9, 0, 0),
(16, 20, 6.07, 6.78, 6.61, 48, 41, 15, 12, 12, 8, 0, 0),
(16, 22, 5.55, 5.97, 6.53, 48, 37, 14, 11, 14, 10, 0, 0),
(16, 23, 5.94, 6.99, 6.50, 36, 29, 10, 8, 10, 9, 0, 0),
(16, 24, 6.73, 7.06, 7.19, 48, 41, 18, 10, 12, 9, 0, 0);

-- Alumno 17
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(17, 25, 6.09, 6.18, 7.20, 36, 32, 16, 13, 14, 13, 1, 0),
(17, 26, 7.12, 6.08, 6.65, 48, 47, 15, 15, 14, 12, 0, 0),
(17, 27, 5.90, 7.35, 6.99, 40, 37, 18, 17, 12, 8, 0, 0),
(17, 28, 6.96, 6.89, 6.34, 36, 33, 16, 8, 8, 6, 1, 0),
(17, 30, 6.03, 7.30, 6.41, 48, 40, 10, 7, 10, 10, 1, 0);

-- Alumno 18
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(18, 31, 8.34, 8.46, 7.99, 48, 47, 16, 14, 8, 6, 0, 1),
(18, 33, 7.57, 8.98, 8.83, 40, 40, 12, 12, 8, 7, 0, 1),
(18, 35, 8.78, 8.41, 8.65, 40, 38, 12, 12, 12, 11, 0, 1),
(18, 36, 7.56, 7.73, 8.37, 40, 38, 12, 11, 10, 9, 0, 1);

-- Alumno 19
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(19, 1, 8.60, 8.18, 8.47, 36, 33, 15, 12, 10, 8, 0, 1),
(19, 2, 7.91, 9.35, 9.34, 40, 36, 12, 11, 12, 10, 0, 1),
(19, 3, 8.97, 8.73, 8.85, 40, 37, 15, 11, 8, 7, 0, 1),
(19, 5, 8.59, 9.38, 8.43, 40, 35, 10, 9, 14, 14, 0, 1),
(19, 6, 8.26, 8.04, 8.28, 36, 33, 18, 15, 14, 13, 0, 1);

-- Alumno 20
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(20, 7, 7.74, 7.80, 8.04, 40, 39, 14, 14, 8, 6, 0, 1),
(20, 9, 8.66, 7.95, 8.61, 40, 39, 14, 11, 10, 10, 0, 1),
(20, 10, 7.96, 8.10, 7.56, 36, 36, 14, 13, 14, 12, 0, 1),
(20, 12, 8.11, 8.12, 7.96, 48, 44, 12, 12, 12, 12, 0, 1);

-- Alumno 21
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(21, 13, 8.56, 9.15, 9.68, 48, 44, 18, 18, 8, 8, 0, 1),
(21, 14, 8.72, 9.56, 9.41, 48, 46, 12, 9, 14, 12, 0, 1),
(21, 15, 8.80, 9.22, 9.39, 40, 36, 18, 14, 8, 8, 0, 1),
(21, 16, 9.43, 8.36, 8.34, 40, 38, 12, 12, 10, 9, 0, 1),
(21, 17, 8.76, 9.07, 8.97, 48, 47, 10, 8, 10, 10, 0, 1),
(21, 18, 8.50, 9.14, 9.05, 40, 36, 15, 15, 12, 12, 0, 1);

-- Alumno 22
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(22, 19, 6.74, 7.81, 7.97, 40, 33, 18, 16, 12, 10, 0, 1),
(22, 21, 6.81, 7.80, 7.70, 40, 34, 10, 9, 14, 12, 0, 0),
(22, 22, 7.52, 7.83, 7.72, 40, 30, 14, 8, 12, 10, 0, 1),
(22, 23, 7.27, 7.54, 6.89, 48, 40, 16, 12, 10, 6, 0, 0),
(22, 24, 7.21, 7.31, 6.93, 48, 44, 12, 11, 10, 6, 0, 0);

-- Alumno 23
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(23, 25, 7.17, 7.61, 6.95, 48, 38, 15, 14, 14, 14, 0, 0),
(23, 28, 6.76, 8.01, 7.21, 48, 36, 10, 10, 10, 10, 0, 0);

-- Alumno 24
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(24, 31, 8.48, 9.71, 9.92, 40, 38, 12, 11, 8, 6, 0, 1),
(24, 32, 8.67, 9.26, 9.82, 40, 37, 15, 15, 14, 12, 0, 1),
(24, 34, 9.50, 9.08, 8.79, 36, 33, 12, 12, 12, 12, 0, 1),
(24, 36, 8.50, 9.45, 9.63, 48, 47, 12, 10, 14, 14, 0, 1);

-- Alumno 25
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(25, 1, 6.20, 6.64, 6.64, 40, 36, 12, 9, 12, 9, 1, 0),
(25, 2, 7.07, 6.21, 7.21, 48, 39, 10, 10, 8, 8, 1, 0),
(25, 3, 6.60, 6.89, 7.54, 48, 48, 14, 8, 12, 9, 0, 0),
(25, 4, 6.32, 6.38, 6.50, 48, 45, 14, 13, 14, 13, 0, 0),
(25, 5, 7.23, 7.26, 7.24, 48, 48, 10, 9, 14, 13, 0, 0);

-- Alumno 26
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(26, 7, 7.21, 6.75, 7.18, 48, 45, 15, 8, 14, 9, 0, 0),
(26, 8, 6.70, 6.77, 6.31, 40, 40, 14, 7, 14, 11, 0, 0),
(26, 9, 7.05, 6.94, 6.29, 40, 31, 16, 8, 8, 8, 1, 0),
(26, 10, 6.54, 7.21, 7.30, 48, 46, 15, 12, 14, 12, 0, 0),
(26, 11, 7.29, 6.66, 7.19, 48, 44, 12, 11, 12, 7, 1, 0),
(26, 12, 6.74, 6.87, 7.25, 36, 27, 10, 7, 14, 14, 0, 0);

-- Alumno 27
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(27, 13, 6.71, 6.78, 7.80, 48, 48, 10, 5, 14, 13, 0, 0),
(27, 16, 7.52, 6.41, 6.78, 36, 36, 10, 8, 8, 6, 0, 0),
(27, 17, 6.79, 6.72, 6.79, 36, 29, 16, 12, 10, 10, 1, 0),
(27, 18, 7.09, 7.33, 6.94, 40, 32, 18, 17, 10, 9, 1, 0);

-- Alumno 28
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(28, 19, 6.07, 6.65, 6.38, 48, 41, 18, 15, 14, 10, 1, 0),
(28, 20, 5.83, 6.50, 6.19, 36, 31, 18, 11, 14, 9, 0, 0),
(28, 21, 7.00, 6.53, 6.04, 36, 31, 12, 8, 8, 8, 0, 0),
(28, 22, 5.69, 6.76, 6.12, 40, 36, 18, 18, 8, 5, 1, 0),
(28, 23, 6.69, 6.76, 6.63, 40, 33, 14, 11, 8, 6, 0, 0),
(28, 24, 6.99, 5.91, 7.25, 40, 33, 18, 18, 10, 9, 0, 0);

-- Alumno 29
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(29, 27, 8.45, 8.83, 8.68, 40, 37, 16, 15, 14, 11, 0, 1),
(29, 29, 9.08, 9.09, 9.25, 40, 36, 14, 12, 14, 11, 0, 1);

-- Alumno 30
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(30, 32, 6.28, 6.47, 6.76, 40, 32, 12, 8, 10, 9, 0, 0),
(30, 35, 5.82, 6.42, 7.07, 40, 34, 15, 14, 14, 10, 0, 0),
(30, 36, 5.98, 5.85, 6.52, 36, 35, 18, 9, 8, 5, 0, 0);

-- Alumno 31
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(31, 1, 8.45, 9.29, 8.41, 48, 45, 14, 10, 14, 14, 0, 1),
(31, 2, 8.12, 9.05, 8.98, 36, 35, 18, 15, 12, 10, 0, 1),
(31, 4, 8.85, 9.28, 9.00, 36, 31, 10, 8, 10, 8, 0, 1),
(31, 5, 9.03, 8.65, 8.90, 40, 35, 14, 13, 14, 12, 0, 1),
(31, 6, 9.59, 8.62, 9.36, 36, 36, 18, 13, 8, 7, 0, 1);

-- Alumno 32
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(32, 7, 6.93, 6.76, 6.42, 36, 35, 10, 6, 10, 10, 0, 0),
(32, 8, 5.73, 5.96, 7.26, 48, 45, 18, 9, 10, 8, 1, 0),
(32, 9, 5.97, 6.06, 7.11, 40, 31, 14, 9, 10, 10, 0, 0),
(32, 10, 6.24, 7.12, 6.42, 48, 38, 18, 10, 12, 7, 1, 0),
(32, 11, 6.01, 5.97, 6.81, 48, 45, 15, 12, 8, 7, 0, 0),
(32, 12, 6.34, 6.18, 6.73, 40, 36, 12, 11, 14, 9, 0, 0);

-- Alumno 33
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(33, 13, 7.80, 7.04, 7.47, 40, 31, 10, 5, 12, 10, 0, 0),
(33, 14, 7.16, 7.20, 7.11, 36, 33, 15, 15, 14, 9, 0, 0),
(33, 15, 6.66, 7.32, 7.05, 48, 48, 14, 13, 8, 7, 0, 0),
(33, 16, 7.24, 7.91, 7.93, 48, 39, 16, 16, 10, 9, 0, 1),
(33, 17, 6.87, 7.20, 7.30, 36, 28, 12, 9, 12, 10, 0, 0),
(33, 18, 7.07, 7.92, 7.43, 36, 34, 16, 11, 14, 9, 0, 0);

-- Alumno 34
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(34, 19, 7.39, 7.79, 7.22, 40, 36, 18, 18, 10, 8, 0, 0),
(34, 20, 6.94, 7.99, 7.04, 40, 32, 15, 12, 12, 12, 0, 0),
(34, 21, 7.50, 7.35, 7.57, 36, 32, 15, 11, 14, 11, 0, 0),
(34, 24, 6.63, 7.45, 7.59, 48, 38, 18, 17, 8, 8, 0, 0);

-- Alumno 35
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(35, 26, 8.16, 9.45, 9.47, 48, 45, 12, 11, 10, 9, 0, 1),
(35, 28, 9.05, 9.26, 9.46, 36, 34, 16, 15, 14, 14, 0, 1),
(35, 29, 8.88, 9.37, 8.86, 48, 46, 18, 13, 8, 6, 0, 1),
(35, 30, 9.05, 8.76, 9.27, 36, 35, 18, 18, 14, 13, 0, 1);

-- Alumno 36
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(36, 31, 6.05, 6.97, 6.80, 48, 45, 12, 9, 12, 10, 0, 0),
(36, 34, 6.74, 6.89, 6.23, 36, 34, 10, 7, 14, 9, 1, 0),
(36, 35, 7.13, 6.12, 6.46, 40, 33, 16, 15, 12, 10, 1, 0);

-- Alumno 37
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(37, 4, 6.87, 7.75, 6.88, 40, 40, 10, 10, 10, 7, 0, 0),
(37, 6, 7.19, 7.39, 7.18, 40, 37, 12, 12, 14, 14, 0, 0);

-- Alumno 38
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(38, 7, 9.08, 8.59, 8.66, 36, 36, 12, 10, 12, 12, 0, 1),
(38, 8, 8.97, 8.05, 8.20, 48, 43, 14, 12, 10, 9, 0, 1),
(38, 10, 7.93, 8.90, 8.75, 48, 44, 16, 15, 14, 11, 0, 1),
(38, 11, 8.28, 9.14, 8.92, 48, 47, 14, 14, 8, 8, 0, 1),
(38, 12, 7.96, 8.13, 8.49, 36, 33, 18, 14, 14, 14, 0, 1);

-- Alumno 39
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(39, 13, 8.47, 8.53, 9.13, 48, 43, 15, 13, 10, 8, 0, 1),
(39, 14, 7.90, 8.26, 7.81, 40, 35, 15, 12, 10, 9, 0, 1),
(39, 15, 8.88, 8.34, 8.42, 48, 45, 15, 14, 14, 12, 0, 1),
(39, 16, 7.55, 7.67, 8.80, 40, 35, 14, 11, 12, 10, 0, 1),
(39, 17, 8.60, 8.42, 8.81, 40, 39, 16, 12, 8, 7, 0, 1),
(39, 18, 8.59, 8.78, 8.24, 36, 36, 15, 15, 10, 9, 0, 1);

-- Alumno 40
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(40, 19, 7.75, 7.33, 8.21, 36, 30, 18, 18, 12, 12, 0, 1),
(40, 20, 7.44, 7.32, 7.68, 36, 30, 10, 9, 12, 11, 0, 0),
(40, 21, 6.94, 7.47, 7.27, 48, 40, 14, 11, 8, 6, 0, 0),
(40, 22, 7.96, 7.82, 8.11, 40, 40, 12, 11, 10, 7, 0, 1),
(40, 23, 6.74, 7.17, 7.17, 48, 42, 15, 9, 12, 12, 0, 0),
(40, 24, 7.14, 7.35, 7.71, 36, 33, 16, 12, 12, 10, 0, 0);

-- Alumno 41
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(41, 25, 9.45, 8.51, 9.84, 48, 47, 18, 15, 8, 8, 0, 1),
(41, 27, 8.78, 9.74, 9.63, 40, 37, 14, 12, 12, 12, 0, 1),
(41, 28, 9.05, 9.17, 9.16, 40, 40, 10, 7, 8, 8, 0, 1);

-- Alumno 42
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(42, 31, 6.81, 8.35, 7.39, 48, 43, 18, 15, 10, 9, 0, 1),
(42, 34, 6.95, 7.51, 7.23, 48, 47, 12, 9, 14, 13, 0, 0),
(42, 35, 7.90, 8.07, 7.71, 36, 36, 10, 7, 10, 9, 0, 1),
(42, 36, 6.93, 7.84, 7.84, 40, 35, 10, 9, 8, 7, 0, 1);

-- Alumno 43
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(43, 1, 7.73, 6.97, 7.37, 40, 32, 15, 9, 10, 6, 0, 0),
(43, 2, 7.43, 6.84, 7.84, 40, 35, 18, 12, 10, 9, 0, 0),
(43, 3, 7.55, 7.45, 7.23, 36, 29, 10, 9, 14, 11, 0, 0),
(43, 4, 8.07, 7.27, 7.13, 40, 40, 10, 6, 12, 12, 0, 0),
(43, 6, 6.67, 8.02, 8.16, 36, 35, 16, 16, 10, 9, 0, 1);

-- Alumno 44
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(44, 7, 7.13, 6.47, 7.71, 36, 32, 14, 9, 14, 13, 0, 0),
(44, 8, 6.99, 6.61, 7.13, 36, 27, 16, 9, 8, 7, 1, 0),
(44, 9, 7.55, 7.70, 7.03, 40, 40, 18, 17, 14, 12, 0, 0),
(44, 10, 6.29, 7.12, 7.33, 40, 31, 14, 8, 10, 7, 0, 0),
(44, 11, 6.76, 7.26, 7.64, 48, 46, 10, 7, 14, 14, 0, 0),
(44, 12, 6.53, 6.71, 7.76, 36, 34, 16, 8, 12, 12, 0, 0);

-- Alumno 45
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(45, 13, 7.89, 9.17, 8.67, 48, 44, 12, 11, 10, 10, 0, 1),
(45, 14, 8.81, 8.22, 9.18, 36, 33, 15, 13, 8, 7, 0, 1),
(45, 15, 8.71, 8.65, 8.05, 40, 39, 14, 10, 14, 12, 0, 1),
(45, 16, 8.19, 8.20, 8.08, 48, 47, 18, 13, 10, 10, 0, 1),
(45, 18, 8.40, 7.90, 9.15, 36, 31, 15, 13, 14, 12, 0, 1);

-- Alumno 46
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(46, 19, 7.81, 7.31, 7.14, 40, 35, 16, 12, 10, 8, 0, 0),
(46, 20, 7.94, 8.30, 8.37, 36, 34, 14, 12, 12, 10, 0, 1),
(46, 21, 7.56, 6.94, 7.31, 48, 48, 14, 14, 10, 9, 0, 0),
(46, 22, 7.28, 8.29, 8.43, 36, 36, 16, 13, 10, 8, 0, 1),
(46, 23, 8.13, 6.96, 7.79, 48, 48, 18, 13, 12, 10, 0, 1),
(46, 24, 7.87, 7.46, 8.06, 40, 35, 12, 10, 14, 14, 0, 1);

-- Alumno 47
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(47, 25, 9.05, 9.45, 9.09, 48, 42, 16, 12, 10, 10, 0, 1),
(47, 26, 9.50, 8.57, 9.36, 40, 40, 12, 10, 12, 11, 0, 1),
(47, 27, 9.55, 9.77, 9.12, 48, 44, 14, 13, 12, 10, 0, 1),
(47, 28, 8.38, 8.75, 9.66, 48, 42, 12, 9, 10, 9, 0, 1),
(47, 29, 8.97, 9.04, 9.32, 36, 34, 14, 13, 12, 10, 0, 1),
(47, 30, 8.41, 9.60, 9.00, 48, 47, 16, 12, 10, 9, 0, 1);

-- Alumno 48
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(48, 31, 7.96, 9.16, 7.91, 40, 38, 16, 16, 10, 8, 0, 1),
(48, 32, 8.26, 8.90, 8.07, 36, 31, 12, 10, 10, 9, 0, 1),
(48, 33, 8.13, 8.65, 8.77, 48, 46, 14, 10, 8, 6, 0, 1),
(48, 34, 7.87, 8.67, 9.00, 36, 33, 10, 7, 14, 11, 0, 1),
(48, 35, 7.82, 8.57, 9.02, 40, 38, 10, 10, 14, 12, 0, 1),
(48, 36, 8.10, 9.04, 8.25, 40, 36, 10, 8, 12, 11, 0, 1);

-- Alumno 49
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(49, 1, 6.25, 6.47, 6.88, 48, 39, 18, 17, 8, 8, 0, 0),
(49, 4, 6.22, 6.64, 6.66, 48, 44, 14, 13, 12, 8, 1, 0),
(49, 5, 6.58, 5.92, 7.11, 40, 30, 15, 15, 12, 11, 0, 0),
(49, 6, 7.14, 6.02, 6.90, 40, 38, 18, 9, 10, 10, 0, 0);

-- Alumno 50
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(50, 8, 6.85, 7.29, 7.24, 48, 36, 18, 14, 10, 10, 0, 0),
(50, 9, 7.22, 7.29, 7.62, 48, 40, 12, 9, 8, 5, 1, 0),
(50, 10, 6.86, 6.19, 6.93, 40, 39, 12, 12, 10, 8, 0, 0);

-- Alumno 51
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(51, 13, 9.40, 9.65, 8.93, 48, 45, 16, 12, 12, 11, 0, 1),
(51, 14, 8.59, 9.68, 9.44, 40, 40, 15, 13, 10, 10, 0, 1),
(51, 15, 9.56, 9.28, 9.71, 40, 36, 18, 17, 10, 9, 0, 1),
(51, 16, 8.57, 9.27, 8.59, 48, 42, 18, 17, 14, 11, 0, 1),
(51, 17, 8.38, 8.76, 9.54, 48, 43, 18, 17, 8, 7, 0, 1),
(51, 18, 8.32, 9.35, 8.74, 40, 36, 18, 13, 12, 11, 0, 1);

-- Alumno 52
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(52, 19, 7.70, 7.73, 6.89, 40, 36, 12, 9, 14, 12, 0, 0),
(52, 20, 7.05, 7.25, 7.98, 48, 46, 18, 12, 10, 9, 0, 0),
(52, 21, 6.63, 7.90, 7.23, 40, 34, 10, 5, 12, 8, 0, 0),
(52, 23, 7.85, 6.95, 6.93, 36, 32, 16, 15, 8, 8, 0, 0),
(52, 24, 7.93, 6.95, 8.07, 36, 27, 10, 7, 10, 7, 0, 1);

-- Alumno 53
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(53, 25, 6.23, 7.16, 7.64, 36, 27, 14, 7, 14, 9, 1, 0),
(53, 26, 7.15, 7.20, 6.74, 36, 30, 12, 11, 12, 7, 0, 0),
(53, 27, 6.33, 7.46, 7.12, 48, 40, 10, 10, 14, 10, 0, 0),
(53, 28, 6.73, 6.62, 6.52, 40, 37, 14, 10, 12, 11, 1, 0),
(53, 29, 7.29, 7.29, 6.58, 40, 38, 15, 10, 8, 8, 0, 0),
(53, 30, 6.79, 7.11, 7.67, 40, 39, 12, 9, 12, 7, 0, 0);

-- Alumno 54
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(54, 31, 8.69, 8.94, 9.01, 36, 34, 10, 10, 10, 10, 0, 1),
(54, 32, 8.66, 9.47, 9.19, 48, 48, 10, 7, 14, 14, 0, 1),
(54, 33, 9.27, 9.84, 9.47, 36, 36, 16, 16, 14, 11, 0, 1),
(54, 34, 9.06, 8.85, 9.56, 36, 31, 16, 12, 12, 12, 0, 1),
(54, 35, 9.76, 9.87, 9.11, 48, 45, 16, 16, 14, 11, 0, 1),
(54, 36, 8.70, 9.20, 9.61, 48, 47, 15, 11, 14, 13, 0, 1);

-- Alumno 55
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(55, 1, 7.32, 7.64, 7.69, 40, 37, 14, 13, 8, 6, 0, 1),
(55, 2, 7.12, 8.48, 7.84, 40, 37, 18, 16, 8, 6, 0, 1),
(55, 3, 7.58, 8.40, 7.79, 40, 39, 14, 10, 10, 8, 0, 1),
(55, 6, 7.39, 7.83, 7.41, 48, 46, 10, 8, 10, 8, 0, 1);

-- Alumno 56
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(56, 7, 8.06, 9.00, 8.66, 48, 42, 18, 13, 10, 9, 0, 1),
(56, 8, 8.38, 8.47, 9.29, 40, 39, 16, 14, 12, 10, 0, 1),
(56, 9, 8.91, 8.21, 9.11, 36, 33, 10, 10, 8, 6, 0, 1),
(56, 10, 8.93, 8.94, 8.25, 36, 36, 12, 10, 12, 12, 0, 1),
(56, 11, 8.26, 7.88, 9.04, 48, 42, 15, 12, 10, 10, 0, 1),
(56, 12, 8.85, 8.16, 8.80, 40, 40, 18, 18, 12, 11, 0, 1);

-- Alumno 57
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(57, 15, 7.20, 7.49, 7.90, 48, 45, 16, 12, 8, 8, 0, 1),
(57, 16, 8.37, 8.42, 8.35, 48, 47, 16, 16, 12, 11, 0, 1);

-- Alumno 58
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(58, 19, 9.52, 9.97, 9.23, 48, 47, 14, 11, 10, 10, 0, 1),
(58, 20, 9.71, 10.00, 9.99, 48, 45, 18, 15, 10, 10, 0, 1),
(58, 22, 8.60, 9.46, 9.27, 40, 38, 15, 11, 10, 9, 0, 1),
(58, 23, 9.65, 9.07, 9.61, 40, 40, 14, 14, 12, 10, 0, 1),
(58, 24, 9.82, 9.99, 9.11, 36, 34, 12, 11, 10, 10, 0, 1);

-- Alumno 59
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(59, 25, 8.08, 7.47, 7.87, 40, 35, 15, 11, 8, 7, 0, 1),
(59, 26, 8.08, 7.65, 8.26, 40, 39, 14, 13, 8, 6, 0, 1),
(59, 27, 6.96, 7.23, 7.62, 48, 45, 12, 11, 10, 8, 0, 0),
(59, 28, 7.48, 7.83, 7.30, 48, 42, 10, 10, 12, 10, 0, 1),
(59, 29, 7.89, 7.19, 8.12, 40, 35, 12, 12, 14, 14, 0, 1),
(59, 30, 7.39, 7.62, 7.06, 48, 43, 18, 15, 8, 7, 0, 0);

-- Alumno 60
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(60, 31, 7.78, 8.58, 8.19, 36, 31, 15, 15, 12, 10, 0, 1),
(60, 32, 7.51, 7.67, 9.04, 40, 40, 16, 16, 12, 11, 0, 1),
(60, 33, 8.74, 9.00, 8.19, 40, 37, 12, 10, 14, 11, 0, 1),
(60, 34, 7.75, 8.63, 7.89, 48, 42, 16, 16, 10, 8, 0, 1),
(60, 35, 7.96, 8.52, 7.76, 48, 44, 16, 16, 8, 8, 0, 1);

-- Alumno 61
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(61, 1, 7.30, 7.70, 7.69, 36, 32, 18, 18, 8, 7, 0, 1),
(61, 3, 7.36, 7.07, 7.76, 48, 46, 18, 14, 14, 11, 0, 0),
(61, 4, 7.50, 7.79, 7.43, 36, 34, 12, 10, 12, 12, 0, 1),
(61, 5, 8.19, 7.43, 7.60, 36, 31, 16, 15, 10, 10, 0, 1),
(61, 6, 8.13, 7.39, 7.03, 48, 42, 10, 10, 10, 8, 0, 1);

-- Alumno 62
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(62, 7, 8.15, 9.03, 8.13, 36, 31, 12, 9, 12, 11, 0, 1),
(62, 8, 8.66, 8.10, 8.79, 36, 31, 10, 8, 10, 9, 0, 1),
(62, 11, 8.00, 8.27, 8.63, 48, 42, 14, 12, 10, 8, 0, 1),
(62, 12, 8.06, 9.01, 8.14, 40, 40, 15, 14, 10, 8, 0, 1);

-- Alumno 63
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(63, 13, 8.99, 8.42, 8.80, 40, 39, 10, 8, 14, 14, 0, 1),
(63, 14, 8.14, 8.75, 8.33, 40, 40, 14, 10, 10, 10, 0, 1),
(63, 15, 9.28, 8.90, 9.23, 48, 42, 15, 12, 14, 13, 0, 1),
(63, 16, 8.97, 9.07, 8.48, 48, 46, 10, 7, 10, 10, 0, 1),
(63, 17, 9.24, 9.36, 9.49, 36, 34, 14, 11, 12, 11, 0, 1),
(63, 18, 8.05, 8.48, 9.17, 40, 36, 10, 10, 14, 14, 0, 1);

-- Alumno 64
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(64, 19, 7.88, 7.65, 6.73, 40, 36, 10, 9, 8, 5, 0, 0),
(64, 22, 7.60, 7.96, 7.60, 48, 44, 12, 11, 14, 11, 0, 1),
(64, 23, 6.96, 6.69, 7.02, 40, 35, 16, 15, 12, 12, 0, 0);

-- Alumno 65
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(65, 25, 5.94, 6.50, 6.83, 48, 44, 14, 8, 8, 6, 0, 0),
(65, 27, 6.64, 6.65, 6.28, 40, 39, 12, 7, 8, 8, 1, 0),
(65, 28, 6.65, 5.88, 6.18, 40, 30, 18, 18, 8, 8, 0, 0),
(65, 29, 6.29, 6.32, 7.06, 36, 35, 18, 9, 14, 13, 0, 0),
(65, 30, 6.17, 6.90, 5.96, 48, 38, 18, 11, 8, 8, 0, 0);

-- Alumno 66
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(66, 33, 7.65, 7.91, 7.39, 40, 37, 14, 13, 10, 8, 0, 1),
(66, 34, 7.36, 7.92, 8.09, 40, 40, 16, 14, 10, 8, 0, 1),
(66, 35, 7.05, 7.94, 8.00, 48, 43, 18, 18, 10, 10, 0, 1);

-- Alumno 67
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(67, 1, 8.07, 8.72, 8.49, 48, 47, 16, 14, 14, 11, 0, 1),
(67, 2, 7.98, 7.44, 7.70, 48, 42, 12, 11, 10, 9, 0, 1),
(67, 3, 8.23, 7.60, 7.59, 40, 36, 16, 12, 12, 11, 0, 1),
(67, 5, 7.35, 8.62, 8.54, 36, 36, 18, 17, 14, 12, 0, 1);

-- Alumno 68
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(68, 7, 9.92, 9.10, 9.53, 36, 36, 14, 11, 14, 12, 0, 1),
(68, 8, 9.83, 9.65, 9.67, 48, 46, 18, 17, 10, 10, 0, 1),
(68, 9, 9.91, 9.07, 9.01, 48, 42, 12, 10, 8, 7, 0, 1),
(68, 10, 8.52, 9.05, 9.13, 36, 35, 14, 10, 12, 11, 0, 1),
(68, 11, 9.52, 8.88, 8.98, 40, 39, 10, 9, 14, 13, 0, 1),
(68, 12, 8.57, 9.65, 9.50, 36, 35, 10, 8, 14, 14, 0, 1);

-- Alumno 69
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(69, 13, 6.88, 7.80, 7.59, 48, 48, 18, 9, 8, 7, 0, 0),
(69, 14, 7.22, 8.02, 7.71, 48, 39, 10, 10, 12, 10, 0, 1),
(69, 15, 7.92, 8.07, 7.39, 48, 47, 14, 7, 12, 11, 0, 1),
(69, 16, 7.75, 7.37, 6.91, 48, 39, 14, 8, 8, 6, 0, 0),
(69, 17, 8.01, 7.83, 7.60, 48, 37, 12, 11, 10, 9, 0, 1),
(69, 18, 7.80, 7.04, 8.01, 48, 48, 15, 8, 10, 6, 0, 1);

-- Alumno 70
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(70, 19, 6.35, 6.27, 7.42, 40, 36, 15, 14, 14, 12, 1, 0),
(70, 20, 6.55, 6.34, 6.28, 48, 45, 10, 10, 8, 5, 0, 0),
(70, 21, 6.72, 6.58, 7.23, 48, 37, 14, 14, 14, 12, 0, 0),
(70, 22, 6.02, 6.39, 6.58, 48, 42, 16, 12, 10, 8, 0, 0),
(70, 23, 7.34, 7.28, 7.29, 40, 30, 16, 16, 10, 6, 1, 0),
(70, 24, 6.83, 6.72, 7.04, 36, 31, 12, 11, 12, 8, 0, 0);

-- Alumno 71
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(71, 25, 6.92, 6.54, 6.45, 48, 48, 16, 8, 14, 14, 0, 0),
(71, 26, 6.43, 6.28, 6.43, 48, 45, 15, 12, 12, 8, 0, 0),
(71, 29, 6.34, 6.59, 6.39, 36, 32, 15, 14, 12, 11, 0, 0),
(71, 30, 7.03, 6.40, 7.08, 40, 36, 12, 6, 12, 8, 0, 0);

-- Alumno 72
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(72, 31, 8.90, 8.91, 8.94, 48, 42, 12, 9, 12, 10, 0, 1),
(72, 32, 9.55, 8.69, 9.54, 48, 42, 18, 13, 8, 8, 0, 1),
(72, 33, 9.16, 9.55, 9.32, 48, 43, 10, 9, 14, 12, 0, 1),
(72, 34, 8.76, 8.72, 9.59, 48, 48, 14, 11, 14, 11, 0, 1),
(72, 35, 8.81, 9.11, 9.44, 48, 47, 12, 10, 14, 12, 0, 1),
(72, 36, 8.48, 9.74, 9.43, 36, 36, 18, 16, 12, 10, 0, 1);

-- Alumno 73
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(73, 1, 7.15, 7.08, 7.56, 40, 37, 15, 7, 8, 7, 1, 0),
(73, 2, 7.60, 7.24, 6.83, 48, 40, 16, 16, 10, 9, 0, 0),
(73, 3, 6.70, 7.26, 7.62, 48, 40, 15, 10, 14, 11, 0, 0),
(73, 4, 6.67, 7.46, 7.69, 36, 35, 12, 9, 10, 7, 1, 0),
(73, 5, 7.12, 6.65, 6.71, 40, 39, 18, 10, 10, 9, 0, 0),
(73, 6, 7.23, 7.02, 7.12, 36, 36, 12, 11, 14, 9, 1, 0);

-- Alumno 74
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(74, 7, 7.47, 8.41, 7.79, 40, 36, 16, 15, 8, 8, 0, 1),
(74, 8, 8.50, 8.76, 9.04, 36, 34, 16, 15, 14, 12, 0, 1),
(74, 11, 7.74, 8.19, 7.91, 48, 48, 12, 11, 10, 10, 0, 1),
(74, 12, 8.44, 8.90, 8.55, 36, 32, 15, 14, 10, 8, 0, 1);

-- Alumno 75
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(75, 13, 7.84, 7.17, 8.32, 48, 48, 10, 7, 14, 12, 0, 1),
(75, 14, 8.27, 7.88, 7.22, 48, 47, 15, 15, 14, 13, 0, 1),
(75, 15, 8.23, 8.10, 7.82, 40, 38, 14, 14, 8, 7, 0, 1),
(75, 16, 7.12, 7.79, 7.55, 36, 33, 16, 16, 14, 13, 0, 0),
(75, 17, 7.20, 8.11, 8.33, 48, 46, 10, 7, 14, 12, 0, 1),
(75, 18, 7.95, 7.56, 7.73, 36, 34, 18, 17, 12, 11, 0, 1);

-- Alumno 76
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(76, 19, 8.44, 9.12, 8.80, 40, 39, 16, 15, 12, 11, 0, 1),
(76, 20, 8.69, 9.10, 8.68, 36, 36, 10, 8, 14, 12, 0, 1),
(76, 21, 7.97, 8.73, 9.22, 48, 46, 18, 18, 8, 6, 0, 1),
(76, 22, 8.40, 8.91, 9.25, 36, 34, 16, 15, 8, 6, 0, 1),
(76, 23, 8.21, 8.54, 8.97, 48, 45, 15, 15, 12, 12, 0, 1),
(76, 24, 9.27, 8.10, 9.20, 36, 36, 15, 14, 8, 6, 0, 1);

-- Alumno 77
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(77, 25, 8.38, 8.07, 8.59, 36, 31, 14, 13, 12, 12, 0, 1),
(77, 26, 7.96, 8.39, 8.39, 48, 47, 10, 7, 12, 12, 0, 1),
(77, 27, 8.61, 8.85, 8.16, 40, 36, 16, 13, 14, 14, 0, 1),
(77, 28, 8.23, 7.94, 8.24, 36, 35, 10, 9, 12, 10, 0, 1),
(77, 29, 8.57, 8.91, 8.90, 48, 44, 18, 16, 14, 14, 0, 1),
(77, 30, 8.52, 8.63, 9.02, 40, 40, 15, 15, 8, 7, 0, 1);

-- Alumno 78
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(78, 31, 8.58, 8.65, 9.01, 48, 48, 14, 11, 12, 10, 0, 1),
(78, 32, 8.56, 9.21, 8.74, 48, 43, 15, 13, 12, 10, 0, 1),
(78, 33, 9.30, 8.54, 9.59, 48, 43, 15, 12, 10, 10, 0, 1),
(78, 34, 8.32, 8.53, 8.58, 36, 35, 14, 11, 8, 6, 0, 1),
(78, 35, 9.34, 9.11, 9.19, 48, 42, 16, 12, 14, 13, 0, 1),
(78, 36, 8.89, 8.85, 9.64, 48, 48, 14, 13, 10, 10, 0, 1);

-- Alumno 79
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(79, 2, 6.60, 6.60, 7.43, 36, 35, 14, 13, 10, 9, 0, 0),
(79, 3, 6.86, 6.65, 7.07, 36, 30, 15, 8, 12, 9, 0, 0),
(79, 4, 6.20, 6.78, 6.44, 40, 39, 14, 12, 10, 9, 0, 0),
(79, 6, 6.44, 7.06, 6.62, 40, 34, 15, 9, 10, 10, 0, 0);

-- Alumno 80
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(80, 7, 8.46, 7.65, 8.60, 48, 43, 15, 11, 10, 9, 0, 1),
(80, 8, 7.93, 8.77, 8.67, 48, 46, 18, 15, 14, 13, 0, 1),
(80, 9, 7.56, 8.58, 7.55, 36, 36, 12, 9, 10, 9, 0, 1);

-- Alumno 81
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(81, 13, 7.40, 8.06, 7.22, 36, 33, 10, 7, 10, 10, 0, 1),
(81, 14, 7.42, 7.67, 7.10, 40, 35, 14, 14, 14, 9, 0, 0),
(81, 15, 7.13, 7.16, 7.74, 36, 29, 18, 14, 14, 14, 0, 0),
(81, 16, 7.48, 7.33, 8.13, 36, 29, 14, 10, 12, 9, 0, 1),
(81, 17, 7.54, 7.75, 7.71, 40, 34, 15, 12, 14, 12, 0, 1),
(81, 18, 6.81, 7.96, 7.04, 36, 31, 18, 10, 10, 7, 0, 0);

-- Alumno 82
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(82, 19, 6.08, 6.75, 5.90, 40, 39, 12, 6, 14, 11, 1, 0),
(82, 20, 6.59, 6.30, 5.96, 48, 38, 10, 5, 12, 9, 0, 0),
(82, 21, 6.18, 6.90, 7.09, 48, 43, 12, 11, 10, 10, 0, 0),
(82, 22, 6.43, 6.57, 6.57, 48, 46, 18, 17, 12, 9, 0, 0),
(82, 23, 5.82, 5.81, 6.21, 40, 34, 12, 8, 8, 5, 0, 0),
(82, 24, 6.62, 5.87, 6.18, 48, 36, 18, 16, 14, 11, 1, 0);

-- Alumno 83
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(83, 26, 8.77, 8.41, 9.49, 40, 38, 12, 10, 14, 14, 0, 1),
(83, 27, 8.28, 8.26, 9.13, 48, 48, 16, 14, 12, 12, 0, 1),
(83, 28, 9.06, 9.28, 8.83, 36, 32, 12, 11, 8, 8, 0, 1);

-- Alumno 84
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(84, 31, 6.66, 7.99, 6.76, 36, 31, 14, 9, 14, 14, 0, 0),
(84, 32, 6.44, 6.76, 6.75, 36, 32, 15, 11, 14, 11, 0, 0),
(84, 33, 7.13, 7.74, 7.19, 36, 27, 14, 13, 8, 8, 0, 0),
(84, 34, 6.70, 7.88, 7.08, 40, 30, 10, 10, 10, 9, 0, 0),
(84, 35, 7.59, 7.25, 7.76, 36, 30, 15, 8, 10, 9, 0, 1),
(84, 36, 7.01, 7.98, 8.04, 36, 27, 18, 17, 8, 7, 0, 1);

-- Alumno 85
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(85, 1, 8.86, 9.32, 8.83, 40, 39, 10, 10, 10, 8, 0, 1),
(85, 2, 9.96, 9.52, 9.78, 48, 46, 12, 11, 8, 6, 0, 1),
(85, 3, 8.75, 8.84, 9.68, 48, 42, 10, 9, 10, 10, 0, 1),
(85, 4, 9.31, 8.86, 9.49, 40, 39, 18, 15, 14, 12, 0, 1),
(85, 5, 8.54, 9.24, 9.82, 40, 35, 15, 14, 12, 12, 0, 1),
(85, 6, 9.56, 8.98, 9.07, 40, 37, 18, 16, 12, 12, 0, 1);

-- Alumno 86
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(86, 7, 7.77, 8.45, 8.16, 40, 35, 18, 17, 14, 12, 0, 1),
(86, 8, 8.42, 8.17, 7.91, 48, 43, 14, 10, 14, 12, 0, 1),
(86, 11, 7.89, 8.00, 8.17, 48, 44, 14, 13, 12, 10, 0, 1);

-- Alumno 87
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(87, 13, 8.50, 9.08, 8.64, 48, 47, 15, 14, 12, 10, 0, 1),
(87, 14, 8.75, 9.25, 8.60, 36, 36, 15, 11, 14, 11, 0, 1),
(87, 15, 8.74, 9.44, 9.75, 40, 40, 10, 9, 8, 8, 0, 1),
(87, 16, 8.31, 8.83, 9.82, 48, 42, 10, 8, 14, 12, 0, 1),
(87, 17, 8.49, 9.32, 9.30, 36, 35, 18, 17, 14, 11, 0, 1),
(87, 18, 9.35, 9.21, 9.44, 48, 47, 15, 11, 10, 8, 0, 1);

-- Alumno 88
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(88, 19, 8.01, 8.62, 8.67, 48, 44, 14, 13, 14, 13, 0, 1),
(88, 21, 8.02, 8.10, 7.71, 48, 47, 14, 12, 14, 14, 0, 1),
(88, 22, 8.55, 7.31, 7.46, 40, 39, 10, 8, 12, 10, 0, 1),
(88, 23, 7.56, 7.62, 8.61, 36, 36, 14, 14, 10, 8, 0, 1),
(88, 24, 7.17, 7.81, 7.60, 40, 39, 12, 10, 12, 11, 0, 1);

-- Alumno 89
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(89, 25, 8.84, 9.06, 8.29, 48, 47, 16, 12, 12, 10, 0, 1),
(89, 27, 8.85, 8.76, 8.16, 36, 33, 14, 13, 14, 11, 0, 1),
(89, 28, 9.05, 8.27, 8.96, 48, 42, 18, 18, 14, 11, 0, 1),
(89, 29, 8.21, 8.01, 8.81, 36, 33, 16, 13, 10, 8, 0, 1),
(89, 30, 8.76, 9.35, 9.41, 48, 46, 16, 12, 10, 9, 0, 1);

-- Alumno 90
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(90, 31, 6.52, 5.93, 6.52, 36, 33, 16, 14, 10, 7, 0, 0),
(90, 32, 5.96, 6.41, 6.76, 48, 45, 18, 17, 10, 7, 1, 0),
(90, 33, 6.83, 6.31, 7.25, 36, 28, 18, 15, 14, 11, 1, 0),
(90, 34, 6.14, 6.69, 5.99, 40, 32, 14, 14, 10, 9, 1, 0),
(90, 35, 6.89, 6.14, 6.48, 48, 37, 10, 10, 8, 6, 0, 0);

-- Alumno 91
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(91, 1, 6.87, 7.33, 7.89, 36, 35, 16, 14, 14, 12, 0, 0),
(91, 2, 7.88, 7.98, 7.67, 48, 46, 10, 9, 10, 8, 0, 1),
(91, 3, 7.27, 8.14, 8.01, 36, 34, 18, 13, 8, 7, 0, 1),
(91, 4, 7.83, 7.97, 8.42, 40, 35, 10, 9, 14, 12, 0, 1),
(91, 5, 8.31, 7.75, 8.13, 40, 38, 16, 16, 8, 6, 0, 1),
(91, 6, 7.14, 8.39, 7.92, 48, 42, 10, 8, 12, 11, 0, 1);

-- Alumno 92
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(92, 7, 8.12, 8.21, 9.28, 48, 44, 10, 9, 14, 11, 0, 1),
(92, 8, 9.01, 9.12, 8.21, 40, 38, 18, 14, 8, 8, 0, 1),
(92, 10, 8.16, 9.13, 8.75, 48, 47, 12, 12, 10, 10, 0, 1),
(92, 11, 7.82, 9.15, 9.16, 40, 38, 16, 13, 10, 10, 0, 1),
(92, 12, 7.80, 8.55, 9.01, 36, 33, 18, 18, 10, 9, 0, 1);

-- Alumno 93
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(93, 13, 8.60, 7.55, 7.92, 36, 36, 10, 9, 14, 14, 0, 1),
(93, 14, 7.64, 8.42, 8.63, 48, 47, 14, 11, 10, 8, 0, 1),
(93, 16, 7.38, 7.42, 8.86, 48, 44, 16, 16, 10, 10, 0, 1),
(93, 17, 7.53, 8.34, 7.98, 48, 48, 15, 12, 14, 13, 0, 1),
(93, 18, 7.46, 7.92, 8.14, 36, 32, 12, 9, 14, 11, 0, 1);

-- Alumno 94
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(94, 20, 7.85, 8.04, 8.10, 40, 39, 15, 13, 14, 12, 0, 1),
(94, 21, 8.19, 8.84, 8.70, 40, 40, 14, 13, 8, 8, 0, 1),
(94, 22, 7.71, 8.39, 9.08, 36, 35, 16, 15, 8, 8, 0, 1),
(94, 24, 8.13, 8.82, 9.20, 36, 33, 15, 14, 12, 11, 0, 1);

-- Alumno 95
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(95, 25, 7.85, 7.21, 7.88, 36, 35, 18, 17, 10, 9, 0, 1),
(95, 26, 7.50, 7.71, 7.43, 48, 47, 12, 12, 8, 7, 0, 1),
(95, 27, 7.37, 7.99, 8.18, 36, 36, 18, 13, 8, 6, 0, 1),
(95, 28, 7.94, 7.97, 7.30, 48, 45, 18, 17, 10, 9, 0, 1),
(95, 29, 7.71, 7.14, 7.42, 40, 39, 18, 14, 10, 8, 0, 0),
(95, 30, 7.15, 8.08, 7.77, 40, 40, 15, 13, 10, 8, 0, 1);

-- Alumno 96
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(96, 31, 6.19, 6.34, 6.87, 48, 43, 12, 7, 14, 12, 0, 0),
(96, 32, 5.56, 6.48, 6.08, 48, 40, 16, 16, 10, 6, 1, 0),
(96, 33, 5.52, 6.13, 5.94, 36, 36, 16, 12, 12, 7, 1, 0),
(96, 35, 6.07, 5.89, 6.68, 48, 46, 18, 18, 10, 9, 0, 0),
(96, 36, 5.98, 5.69, 6.82, 40, 35, 15, 8, 14, 13, 1, 0);

-- Alumno 97
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(97, 1, 7.07, 6.94, 7.04, 36, 28, 16, 16, 8, 8, 0, 0),
(97, 2, 7.54, 7.50, 7.85, 48, 40, 15, 12, 12, 11, 0, 1),
(97, 3, 7.31, 7.52, 8.05, 48, 45, 15, 15, 14, 12, 0, 1),
(97, 4, 7.66, 7.89, 7.08, 40, 33, 10, 5, 8, 8, 0, 1),
(97, 5, 7.39, 6.82, 7.94, 48, 42, 15, 7, 12, 9, 0, 0);

-- Alumno 98
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(98, 7, 6.31, 6.83, 7.28, 36, 28, 18, 14, 12, 10, 0, 0),
(98, 8, 7.30, 7.27, 6.55, 36, 30, 14, 12, 14, 12, 0, 0),
(98, 9, 7.41, 7.31, 7.18, 48, 43, 16, 13, 14, 12, 0, 0),
(98, 10, 7.60, 6.49, 7.24, 48, 47, 18, 14, 8, 6, 0, 0),
(98, 11, 7.08, 6.87, 7.79, 40, 31, 12, 8, 8, 7, 0, 0),
(98, 12, 7.69, 7.29, 7.69, 48, 45, 15, 9, 8, 7, 0, 1);

-- Alumno 99
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(99, 13, 7.00, 6.40, 7.14, 40, 33, 16, 12, 10, 6, 0, 0),
(99, 14, 5.74, 6.16, 6.11, 48, 36, 15, 15, 10, 7, 1, 0),
(99, 15, 6.41, 7.10, 6.41, 40, 32, 10, 9, 10, 7, 0, 0),
(99, 17, 6.37, 6.88, 6.71, 36, 31, 10, 10, 8, 7, 0, 0),
(99, 18, 5.75, 6.61, 6.90, 40, 30, 16, 12, 10, 8, 1, 0);

-- Alumno 100
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(100, 20, 7.96, 7.97, 8.01, 48, 46, 16, 12, 10, 10, 0, 1),
(100, 21, 8.08, 8.20, 8.05, 48, 48, 14, 14, 10, 8, 0, 1),
(100, 23, 7.66, 8.61, 8.32, 40, 35, 12, 9, 14, 11, 0, 1),
(100, 24, 7.71, 7.83, 8.45, 36, 36, 16, 16, 14, 13, 0, 1);

-- Alumno 101
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(101, 26, 9.04, 8.14, 9.42, 40, 39, 12, 9, 14, 11, 0, 1),
(101, 27, 8.51, 8.99, 9.12, 40, 38, 12, 10, 10, 10, 0, 1),
(101, 29, 8.22, 8.54, 8.39, 48, 44, 14, 13, 14, 11, 0, 1),
(101, 30, 7.93, 8.19, 8.80, 36, 33, 14, 14, 10, 10, 0, 1);

-- Alumno 102
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(102, 31, 7.70, 7.88, 8.27, 48, 43, 15, 14, 8, 7, 0, 1),
(102, 32, 7.41, 8.27, 8.00, 40, 39, 14, 14, 10, 8, 0, 1),
(102, 33, 8.09, 7.41, 8.70, 48, 48, 15, 11, 14, 13, 0, 1),
(102, 34, 7.93, 8.45, 7.65, 40, 35, 16, 12, 14, 13, 0, 1),
(102, 35, 7.84, 8.22, 7.53, 36, 35, 18, 13, 10, 10, 0, 1),
(102, 36, 7.32, 8.04, 7.95, 48, 45, 12, 10, 12, 11, 0, 1);

-- Alumno 103
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(103, 2, 9.44, 9.63, 9.58, 36, 33, 10, 9, 8, 6, 0, 1),
(103, 3, 9.63, 9.92, 9.37, 40, 35, 12, 12, 14, 13, 0, 1),
(103, 4, 9.64, 9.34, 9.48, 36, 36, 12, 12, 10, 8, 0, 1),
(103, 5, 9.40, 9.95, 9.37, 40, 36, 14, 11, 10, 8, 0, 1),
(103, 6, 8.68, 8.79, 9.88, 40, 40, 15, 12, 8, 6, 0, 1);

-- Alumno 104
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(104, 8, 8.07, 8.18, 8.84, 40, 37, 12, 10, 14, 11, 0, 1),
(104, 9, 8.26, 8.78, 8.02, 48, 44, 15, 15, 12, 10, 0, 1),
(104, 10, 8.86, 8.39, 8.68, 36, 35, 15, 11, 10, 10, 0, 1),
(104, 11, 8.49, 8.97, 9.07, 40, 38, 16, 12, 8, 6, 0, 1),
(104, 12, 8.10, 8.63, 9.03, 36, 36, 18, 17, 12, 12, 0, 1);

-- Alumno 105
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(105, 13, 8.21, 7.85, 7.61, 40, 37, 14, 11, 8, 8, 0, 1),
(105, 14, 8.23, 8.10, 8.17, 48, 44, 10, 10, 10, 10, 0, 1),
(105, 15, 6.93, 8.44, 8.28, 48, 42, 14, 13, 8, 6, 0, 1),
(105, 18, 7.61, 8.24, 7.54, 36, 35, 14, 12, 12, 10, 0, 1);

-- Alumno 106
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(106, 19, 8.06, 7.96, 8.91, 36, 34, 12, 9, 12, 10, 0, 1),
(106, 20, 8.96, 8.54, 8.96, 40, 38, 15, 12, 14, 12, 0, 1),
(106, 21, 7.83, 8.74, 8.29, 48, 44, 10, 7, 10, 9, 0, 1),
(106, 23, 8.11, 8.13, 8.85, 48, 43, 15, 14, 14, 13, 0, 1),
(106, 24, 7.73, 8.93, 7.83, 40, 38, 18, 15, 8, 6, 0, 1);

-- Alumno 107
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(107, 25, 7.47, 6.83, 7.39, 40, 40, 18, 12, 10, 10, 0, 0),
(107, 26, 6.78, 7.44, 6.82, 48, 36, 18, 9, 8, 5, 0, 0),
(107, 27, 6.89, 7.21, 7.53, 40, 33, 18, 13, 12, 8, 0, 0),
(107, 28, 6.32, 7.34, 6.65, 48, 46, 12, 10, 8, 5, 0, 0),
(107, 29, 6.40, 7.32, 7.10, 48, 45, 12, 6, 10, 8, 0, 0),
(107, 30, 6.71, 7.39, 6.68, 40, 34, 15, 12, 12, 8, 0, 0);

-- Alumno 108
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(108, 31, 6.55, 8.00, 7.13, 40, 31, 15, 10, 14, 10, 0, 0),
(108, 32, 7.43, 6.81, 7.52, 40, 33, 16, 9, 14, 14, 0, 0),
(108, 33, 6.85, 6.71, 6.86, 48, 40, 15, 7, 14, 10, 0, 0),
(108, 35, 7.44, 6.66, 6.81, 40, 34, 12, 11, 12, 10, 0, 0),
(108, 36, 7.32, 7.38, 8.08, 40, 37, 15, 13, 8, 6, 0, 1);

-- Alumno 109
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(109, 1, 6.92, 6.75, 8.17, 48, 37, 14, 12, 8, 8, 0, 0),
(109, 2, 7.61, 7.08, 7.05, 48, 36, 15, 10, 12, 12, 0, 0),
(109, 4, 7.06, 6.82, 7.73, 40, 31, 18, 16, 10, 7, 0, 0),
(109, 5, 6.52, 6.71, 8.16, 36, 34, 15, 8, 12, 10, 0, 0),
(109, 6, 7.27, 7.84, 7.40, 36, 27, 14, 7, 12, 12, 0, 1);

-- Alumno 110
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(110, 7, 8.12, 8.07, 9.10, 40, 40, 10, 10, 8, 6, 0, 1),
(110, 8, 8.82, 8.15, 8.31, 36, 33, 10, 10, 10, 10, 0, 1),
(110, 9, 7.87, 9.11, 8.23, 48, 48, 16, 13, 8, 6, 0, 1),
(110, 10, 8.41, 9.11, 9.45, 48, 45, 14, 10, 10, 9, 0, 1),
(110, 11, 9.02, 9.08, 9.14, 48, 43, 14, 10, 8, 7, 0, 1),
(110, 12, 7.98, 8.55, 9.04, 48, 43, 15, 12, 8, 6, 0, 1);

-- Alumno 111
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(111, 13, 8.33, 8.42, 9.81, 48, 47, 16, 14, 14, 14, 0, 1),
(111, 15, 9.25, 8.70, 9.41, 48, 45, 15, 12, 10, 10, 0, 1),
(111, 16, 9.25, 9.24, 9.51, 48, 42, 18, 15, 12, 11, 0, 1),
(111, 17, 8.22, 8.74, 8.67, 48, 42, 16, 14, 10, 9, 0, 1),
(111, 18, 9.37, 9.33, 8.90, 36, 31, 12, 12, 14, 12, 0, 1);

-- Alumno 112
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(112, 19, 6.88, 7.12, 7.73, 40, 30, 10, 10, 8, 6, 0, 0),
(112, 20, 6.81, 6.81, 7.59, 36, 30, 18, 16, 12, 10, 0, 0),
(112, 21, 6.87, 7.72, 7.33, 36, 32, 12, 6, 10, 9, 0, 0),
(112, 23, 7.87, 7.30, 7.18, 40, 39, 15, 7, 14, 10, 0, 0);

-- Alumno 113
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(113, 26, 6.53, 6.81, 6.54, 40, 34, 12, 8, 10, 6, 0, 0),
(113, 28, 6.06, 6.36, 7.46, 40, 36, 12, 12, 12, 8, 0, 0),
(113, 29, 6.88, 7.28, 7.16, 48, 38, 16, 16, 10, 6, 0, 0);

-- Alumno 114
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(114, 32, 8.50, 9.30, 9.41, 36, 32, 14, 13, 10, 10, 0, 1),
(114, 33, 9.50, 9.56, 9.64, 40, 35, 10, 10, 8, 7, 0, 1),
(114, 34, 8.88, 8.95, 9.50, 36, 34, 15, 12, 8, 8, 0, 1),
(114, 35, 9.21, 9.25, 8.95, 36, 32, 14, 12, 10, 10, 0, 1),
(114, 36, 9.58, 8.30, 9.32, 36, 36, 15, 15, 8, 7, 0, 1);

-- Alumno 115
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(115, 1, 8.47, 7.61, 8.59, 40, 40, 14, 14, 8, 7, 0, 1),
(115, 2, 8.05, 7.99, 9.03, 48, 46, 12, 9, 12, 12, 0, 1),
(115, 4, 8.81, 8.33, 8.98, 40, 35, 10, 10, 12, 11, 0, 1),
(115, 5, 8.34, 8.12, 7.96, 48, 47, 10, 8, 10, 9, 0, 1),
(115, 6, 7.77, 7.77, 8.38, 48, 48, 18, 14, 10, 9, 0, 1);

-- Alumno 116
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(116, 7, 7.27, 7.49, 8.05, 40, 38, 18, 17, 12, 10, 0, 1),
(116, 8, 7.52, 7.91, 8.21, 36, 30, 15, 8, 8, 8, 0, 1),
(116, 9, 7.94, 7.19, 8.23, 36, 29, 14, 8, 10, 9, 0, 1),
(116, 10, 6.82, 7.08, 8.22, 36, 31, 15, 15, 10, 9, 0, 0),
(116, 11, 7.11, 7.41, 7.79, 40, 33, 10, 5, 10, 10, 0, 0),
(116, 12, 7.56, 7.37, 7.37, 48, 48, 14, 14, 14, 12, 0, 0);

-- Alumno 117
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(117, 14, 8.73, 9.57, 8.89, 40, 37, 10, 8, 12, 11, 0, 1),
(117, 15, 8.95, 8.70, 9.86, 48, 46, 14, 11, 10, 10, 0, 1),
(117, 17, 9.31, 9.40, 8.78, 36, 31, 10, 9, 10, 9, 0, 1);

-- Alumno 118
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(118, 19, 8.75, 9.36, 10.00, 48, 44, 10, 7, 14, 14, 0, 1),
(118, 20, 9.68, 10.00, 10.00, 36, 31, 18, 17, 12, 12, 0, 1),
(118, 21, 9.59, 9.39, 9.24, 48, 47, 12, 12, 12, 12, 0, 1),
(118, 22, 8.70, 9.40, 8.89, 48, 46, 10, 9, 8, 7, 0, 1),
(118, 23, 9.46, 9.04, 9.33, 40, 35, 16, 13, 10, 9, 0, 1),
(118, 24, 8.82, 8.85, 10.00, 48, 47, 10, 10, 10, 9, 0, 1);

-- Alumno 119
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(119, 25, 7.74, 7.47, 7.51, 36, 31, 14, 12, 12, 10, 0, 1),
(119, 26, 7.98, 6.99, 7.99, 40, 36, 15, 11, 10, 9, 0, 1),
(119, 27, 7.76, 7.45, 8.14, 48, 37, 12, 7, 12, 10, 0, 1),
(119, 29, 8.15, 7.61, 7.44, 48, 48, 15, 8, 8, 8, 0, 1),
(119, 30, 7.63, 7.25, 7.21, 40, 39, 12, 7, 10, 9, 0, 0);

-- Alumno 120
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(120, 31, 8.09, 7.49, 8.39, 36, 33, 14, 13, 8, 8, 0, 1),
(120, 32, 7.98, 7.58, 7.53, 48, 47, 12, 9, 8, 7, 0, 1),
(120, 33, 7.72, 8.54, 8.12, 40, 39, 15, 15, 14, 13, 0, 1),
(120, 34, 7.92, 7.85, 8.25, 36, 33, 16, 16, 8, 7, 0, 1),
(120, 35, 7.22, 7.26, 7.73, 48, 43, 14, 11, 8, 7, 0, 0),
(120, 36, 7.52, 8.07, 8.62, 36, 33, 14, 14, 8, 8, 0, 1);

-- Alumno 121
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(121, 1, 9.43, 9.35, 8.91, 48, 47, 18, 15, 8, 8, 0, 1),
(121, 2, 9.06, 9.54, 8.51, 48, 44, 14, 13, 14, 13, 0, 1),
(121, 3, 9.57, 8.62, 8.80, 48, 43, 12, 9, 14, 14, 0, 1),
(121, 4, 9.56, 8.55, 8.67, 36, 34, 14, 12, 12, 10, 0, 1),
(121, 5, 9.42, 9.64, 9.33, 40, 36, 18, 15, 8, 8, 0, 1),
(121, 6, 9.41, 8.70, 9.69, 36, 36, 12, 11, 10, 8, 0, 1);

-- Alumno 122
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(122, 7, 8.01, 8.07, 8.82, 40, 35, 12, 9, 8, 8, 0, 1),
(122, 8, 8.61, 8.12, 8.31, 40, 35, 10, 9, 8, 6, 0, 1),
(122, 9, 9.01, 9.33, 8.43, 36, 32, 18, 15, 8, 6, 0, 1),
(122, 10, 8.06, 9.08, 8.53, 48, 44, 14, 11, 10, 10, 0, 1);

-- Alumno 123
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(123, 13, 8.16, 8.64, 7.63, 48, 42, 18, 13, 10, 10, 0, 1),
(123, 15, 8.37, 7.95, 8.37, 36, 34, 18, 13, 10, 9, 0, 1),
(123, 16, 8.56, 7.88, 8.11, 40, 35, 14, 10, 14, 11, 0, 1),
(123, 17, 7.87, 7.98, 7.90, 40, 39, 18, 13, 8, 7, 0, 1),
(123, 18, 7.83, 7.83, 8.03, 48, 44, 18, 16, 10, 10, 0, 1);

-- Alumno 124
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(124, 19, 8.96, 8.63, 9.65, 48, 42, 15, 14, 8, 6, 0, 1),
(124, 20, 8.63, 9.17, 9.54, 36, 36, 12, 9, 12, 10, 0, 1),
(124, 21, 8.92, 9.44, 10.00, 36, 32, 15, 14, 12, 12, 0, 1),
(124, 22, 9.56, 9.44, 9.77, 48, 45, 14, 13, 14, 14, 0, 1),
(124, 23, 9.18, 8.82, 9.35, 36, 33, 15, 14, 10, 10, 0, 1),
(124, 24, 9.82, 8.65, 9.74, 36, 34, 18, 13, 10, 9, 0, 1);

-- Alumno 125
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(125, 25, 8.82, 8.76, 8.82, 40, 36, 14, 13, 14, 13, 0, 1),
(125, 26, 8.64, 9.16, 8.89, 36, 31, 15, 11, 14, 14, 0, 1),
(125, 27, 8.30, 8.56, 8.77, 36, 32, 16, 14, 10, 9, 0, 1),
(125, 28, 8.48, 8.47, 8.67, 36, 35, 18, 16, 14, 14, 0, 1),
(125, 29, 8.67, 8.25, 8.21, 40, 38, 16, 15, 12, 11, 0, 1);

-- Alumno 126
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(126, 31, 6.80, 6.23, 6.88, 36, 32, 15, 8, 14, 11, 0, 0),
(126, 33, 6.16, 5.82, 6.18, 36, 31, 16, 9, 8, 7, 1, 0),
(126, 35, 5.79, 6.49, 5.89, 48, 42, 16, 16, 14, 11, 1, 0),
(126, 36, 6.24, 5.77, 6.28, 48, 42, 14, 8, 14, 9, 0, 0);

-- Alumno 127
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(127, 2, 9.00, 8.43, 8.72, 40, 36, 15, 11, 10, 9, 0, 1),
(127, 3, 8.40, 8.62, 9.10, 36, 35, 18, 13, 8, 8, 0, 1),
(127, 4, 8.51, 8.29, 9.42, 40, 38, 12, 11, 8, 8, 0, 1),
(127, 5, 9.24, 8.91, 8.72, 48, 46, 14, 11, 14, 14, 0, 1);

-- Alumno 128
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(128, 7, 8.18, 7.87, 8.41, 48, 48, 18, 16, 12, 12, 0, 1),
(128, 8, 8.21, 8.47, 8.79, 40, 39, 18, 18, 8, 8, 0, 1),
(128, 9, 7.71, 8.26, 8.05, 48, 47, 14, 13, 14, 13, 0, 1),
(128, 10, 8.70, 8.89, 8.60, 40, 37, 14, 11, 12, 12, 0, 1),
(128, 11, 8.31, 8.18, 7.87, 36, 31, 12, 11, 14, 14, 0, 1),
(128, 12, 8.25, 8.22, 8.62, 36, 32, 12, 11, 10, 8, 0, 1);

-- Alumno 129
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(129, 14, 7.52, 8.67, 8.86, 36, 31, 14, 14, 12, 10, 0, 1),
(129, 15, 8.81, 8.23, 8.27, 48, 42, 15, 12, 10, 8, 0, 1),
(129, 18, 8.32, 8.36, 7.93, 48, 48, 16, 16, 12, 11, 0, 1);

-- Alumno 130
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(130, 19, 9.10, 9.49, 8.59, 36, 32, 12, 11, 14, 14, 0, 1),
(130, 20, 8.36, 9.01, 8.97, 40, 40, 10, 9, 14, 14, 0, 1),
(130, 21, 9.00, 9.53, 9.51, 36, 33, 15, 13, 12, 10, 0, 1),
(130, 22, 8.95, 9.45, 8.33, 48, 47, 10, 8, 12, 12, 0, 1),
(130, 23, 8.56, 9.07, 9.26, 48, 42, 16, 13, 14, 14, 0, 1),
(130, 24, 7.99, 9.53, 9.58, 40, 37, 10, 8, 12, 10, 0, 1);

-- Alumno 131
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(131, 26, 9.36, 8.98, 8.56, 36, 34, 15, 14, 12, 12, 0, 1),
(131, 27, 8.84, 9.70, 8.65, 36, 36, 14, 14, 8, 7, 0, 1),
(131, 28, 8.84, 9.43, 9.28, 40, 38, 18, 13, 8, 8, 0, 1);

-- Alumno 132
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(132, 31, 7.62, 7.32, 7.10, 36, 30, 16, 10, 14, 11, 0, 0),
(132, 32, 7.36, 8.10, 7.17, 36, 36, 14, 11, 10, 6, 0, 1),
(132, 33, 7.30, 7.13, 8.21, 48, 39, 10, 5, 10, 6, 0, 1),
(132, 34, 8.14, 7.16, 7.96, 36, 27, 15, 13, 12, 8, 0, 1),
(132, 35, 6.81, 7.40, 8.31, 36, 27, 18, 17, 14, 12, 0, 1),
(132, 36, 7.92, 7.57, 7.29, 36, 30, 14, 11, 14, 12, 0, 1);

-- Alumno 133
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(133, 2, 9.04, 9.73, 8.84, 48, 43, 15, 12, 14, 12, 0, 1),
(133, 4, 8.18, 9.71, 8.77, 40, 36, 14, 14, 14, 11, 0, 1);

-- Alumno 134
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(134, 7, 8.67, 8.79, 8.93, 40, 35, 10, 7, 8, 7, 0, 1),
(134, 8, 9.00, 8.46, 8.40, 48, 47, 16, 12, 8, 7, 0, 1),
(134, 9, 8.36, 8.33, 9.27, 48, 44, 12, 9, 10, 9, 0, 1),
(134, 10, 7.85, 8.49, 8.37, 40, 36, 10, 9, 14, 12, 0, 1),
(134, 11, 7.99, 8.24, 9.27, 40, 37, 18, 15, 14, 13, 0, 1);

-- Alumno 135
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(135, 15, 7.70, 7.48, 8.38, 40, 36, 16, 15, 8, 6, 0, 1),
(135, 17, 7.27, 7.57, 7.40, 40, 36, 18, 16, 14, 11, 0, 0),
(135, 18, 8.54, 8.55, 7.41, 40, 40, 16, 15, 14, 14, 0, 1);

-- Alumno 136
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(136, 19, 7.00, 6.15, 6.24, 48, 40, 16, 11, 8, 6, 0, 0),
(136, 20, 5.82, 6.98, 6.95, 40, 30, 14, 8, 14, 11, 0, 0),
(136, 23, 7.13, 7.07, 6.22, 36, 34, 18, 16, 14, 14, 0, 0),
(136, 24, 6.59, 5.91, 7.36, 48, 45, 15, 12, 10, 7, 0, 0);

-- Alumno 137
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(137, 25, 8.60, 8.82, 8.21, 40, 36, 12, 12, 8, 6, 0, 1),
(137, 27, 9.06, 8.21, 9.17, 40, 40, 18, 14, 8, 7, 0, 1),
(137, 29, 8.52, 8.59, 9.21, 40, 40, 16, 13, 12, 12, 0, 1),
(137, 30, 7.92, 8.49, 8.36, 40, 38, 15, 13, 14, 11, 0, 1);

-- Alumno 138
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(138, 31, 6.04, 6.38, 6.14, 48, 47, 12, 9, 8, 7, 0, 0),
(138, 32, 5.65, 6.85, 6.25, 36, 31, 12, 10, 14, 11, 0, 0),
(138, 33, 6.36, 7.01, 6.55, 48, 42, 15, 8, 14, 14, 0, 0),
(138, 34, 6.75, 6.23, 6.65, 48, 36, 10, 10, 14, 10, 0, 0),
(138, 35, 6.79, 5.79, 6.41, 48, 40, 14, 14, 14, 13, 0, 0),
(138, 36, 6.04, 7.02, 6.96, 36, 29, 10, 10, 12, 12, 1, 0);

-- Alumno 139
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(139, 1, 6.03, 6.64, 7.04, 48, 47, 16, 15, 12, 11, 0, 0),
(139, 2, 6.70, 6.94, 7.42, 48, 42, 14, 8, 10, 7, 1, 0),
(139, 5, 5.94, 5.99, 7.43, 36, 30, 15, 9, 10, 9, 0, 0),
(139, 6, 7.06, 6.72, 6.19, 40, 32, 15, 13, 8, 5, 1, 0);

-- Alumno 140
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(140, 8, 6.13, 6.00, 6.17, 40, 30, 14, 7, 8, 8, 0, 0),
(140, 10, 6.73, 6.69, 6.59, 48, 40, 10, 8, 14, 12, 0, 0),
(140, 11, 6.55, 6.97, 7.03, 40, 33, 18, 9, 8, 8, 0, 0),
(140, 12, 6.29, 6.03, 6.67, 40, 31, 15, 12, 14, 14, 0, 0);

-- Alumno 141
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(141, 14, 6.85, 7.01, 8.07, 40, 39, 18, 16, 10, 8, 0, 0),
(141, 15, 7.58, 7.25, 7.38, 48, 46, 18, 14, 14, 10, 0, 0),
(141, 16, 7.43, 7.10, 7.85, 48, 43, 12, 7, 10, 7, 0, 0),
(141, 18, 7.41, 6.84, 7.38, 40, 34, 12, 7, 8, 5, 0, 0);

-- Alumno 142
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(142, 21, 7.83, 8.97, 8.57, 36, 33, 15, 11, 10, 8, 0, 1),
(142, 23, 8.41, 8.45, 9.26, 40, 35, 16, 14, 10, 10, 0, 1),
(142, 24, 8.88, 8.62, 8.02, 36, 34, 15, 11, 8, 8, 0, 1);

-- Alumno 143
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(143, 25, 6.68, 7.16, 7.32, 36, 31, 18, 16, 14, 14, 0, 0),
(143, 27, 5.97, 6.45, 7.19, 36, 30, 15, 13, 8, 6, 0, 0),
(143, 29, 6.45, 6.34, 6.28, 40, 35, 18, 15, 12, 12, 0, 0),
(143, 30, 5.97, 6.99, 6.63, 36, 29, 15, 13, 14, 12, 0, 0);

-- Alumno 144
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(144, 31, 8.48, 8.00, 8.47, 40, 36, 15, 11, 14, 11, 0, 1),
(144, 32, 8.69, 8.80, 9.26, 36, 36, 18, 18, 12, 11, 0, 1),
(144, 33, 8.30, 8.85, 8.78, 40, 40, 18, 15, 12, 10, 0, 1),
(144, 34, 8.94, 9.16, 8.85, 36, 36, 15, 14, 10, 10, 0, 1),
(144, 35, 8.64, 8.77, 8.62, 40, 40, 15, 12, 12, 10, 0, 1),
(144, 36, 7.76, 8.37, 9.02, 48, 43, 16, 16, 12, 10, 0, 1);

-- Alumno 145
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(145, 1, 6.81, 6.43, 6.13, 40, 36, 16, 9, 8, 7, 1, 0),
(145, 2, 6.23, 5.84, 6.83, 36, 34, 14, 7, 14, 11, 0, 0),
(145, 3, 6.68, 7.05, 6.56, 48, 46, 16, 11, 12, 9, 1, 0),
(145, 4, 6.65, 6.67, 6.71, 48, 42, 16, 11, 8, 7, 0, 0),
(145, 5, 5.76, 6.76, 6.41, 36, 33, 15, 8, 8, 5, 0, 0),
(145, 6, 5.67, 5.97, 5.88, 48, 44, 15, 15, 14, 11, 0, 0);

-- Alumno 146
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(146, 10, 9.02, 8.82, 8.48, 36, 32, 16, 13, 14, 14, 0, 1),
(146, 11, 7.79, 8.79, 9.11, 36, 36, 12, 12, 14, 11, 0, 1),
(146, 12, 8.72, 9.12, 8.42, 36, 35, 15, 11, 8, 7, 0, 1);

-- Alumno 147
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(147, 13, 7.25, 7.70, 7.89, 40, 38, 10, 8, 10, 10, 0, 1),
(147, 15, 7.70, 8.58, 7.80, 40, 36, 12, 12, 8, 6, 0, 1),
(147, 17, 7.89, 7.36, 7.43, 40, 39, 14, 14, 14, 13, 0, 1);

-- Alumno 148
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(148, 19, 8.84, 8.25, 9.16, 36, 35, 18, 17, 14, 14, 0, 1),
(148, 20, 8.19, 8.59, 8.90, 48, 45, 18, 15, 8, 6, 0, 1),
(148, 22, 8.90, 8.84, 9.25, 48, 44, 16, 12, 8, 6, 0, 1),
(148, 23, 9.27, 8.80, 9.20, 48, 46, 12, 12, 8, 6, 0, 1),
(148, 24, 8.83, 8.78, 9.49, 40, 36, 12, 12, 8, 8, 0, 1);

-- Alumno 149
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(149, 25, 8.37, 7.65, 7.52, 36, 35, 14, 13, 12, 10, 0, 1),
(149, 27, 7.14, 7.31, 7.51, 36, 32, 14, 10, 10, 9, 0, 0),
(149, 28, 8.40, 8.12, 7.35, 40, 36, 10, 7, 12, 11, 0, 1),
(149, 29, 7.12, 7.37, 8.52, 40, 38, 10, 7, 10, 8, 0, 1),
(149, 30, 8.10, 7.99, 7.96, 48, 45, 10, 9, 8, 7, 0, 1);

-- Alumno 150
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(150, 31, 6.44, 6.97, 5.82, 48, 45, 18, 10, 10, 10, 0, 0),
(150, 32, 5.68, 6.49, 6.41, 48, 44, 12, 12, 10, 8, 0, 0),
(150, 34, 5.74, 6.03, 7.12, 48, 43, 10, 5, 14, 13, 1, 0),
(150, 35, 6.95, 5.69, 7.10, 40, 34, 16, 12, 14, 11, 0, 0),
(150, 36, 5.81, 6.87, 6.18, 36, 35, 16, 9, 12, 7, 0, 0);

-- Alumno 151
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(151, 1, 8.79, 8.00, 8.60, 40, 40, 14, 13, 12, 10, 0, 1),
(151, 2, 8.34, 8.00, 7.94, 48, 44, 10, 8, 8, 8, 0, 1),
(151, 3, 8.06, 8.81, 8.59, 40, 39, 18, 18, 14, 14, 0, 1),
(151, 5, 8.16, 8.65, 8.56, 36, 35, 10, 10, 8, 7, 0, 1),
(151, 6, 8.81, 8.08, 8.49, 40, 36, 18, 13, 8, 7, 0, 1);

-- Alumno 152
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(152, 7, 6.14, 6.70, 7.70, 40, 33, 10, 9, 12, 12, 1, 0),
(152, 8, 7.58, 7.66, 6.46, 40, 39, 12, 6, 10, 9, 1, 0),
(152, 9, 6.53, 7.01, 6.65, 36, 36, 18, 18, 10, 6, 0, 0),
(152, 10, 7.23, 6.49, 7.72, 36, 35, 18, 13, 10, 6, 0, 0);

-- Alumno 153
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(153, 13, 9.36, 9.92, 8.77, 40, 38, 15, 13, 8, 8, 0, 1),
(153, 14, 9.18, 9.29, 9.42, 36, 36, 12, 9, 12, 11, 0, 1),
(153, 15, 9.20, 9.04, 9.25, 40, 35, 16, 12, 10, 10, 0, 1),
(153, 16, 9.04, 8.70, 9.05, 36, 33, 14, 10, 8, 6, 0, 1),
(153, 17, 9.12, 9.73, 9.53, 48, 44, 14, 11, 8, 7, 0, 1),
(153, 18, 8.76, 9.08, 8.78, 40, 39, 12, 9, 14, 11, 0, 1);

-- Alumno 154
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(154, 22, 7.38, 7.53, 7.60, 40, 40, 10, 8, 8, 7, 0, 1),
(154, 24, 7.33, 8.31, 8.15, 36, 36, 10, 7, 12, 11, 0, 1);

-- Alumno 155
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(155, 25, 9.35, 9.24, 9.10, 40, 38, 16, 16, 8, 7, 0, 1),
(155, 28, 9.15, 9.32, 8.51, 48, 44, 16, 13, 8, 6, 0, 1),
(155, 29, 8.19, 9.37, 9.30, 36, 35, 12, 11, 12, 11, 0, 1),
(155, 30, 8.89, 9.24, 8.73, 36, 31, 10, 8, 12, 12, 0, 1);

-- Alumno 156
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(156, 32, 8.08, 7.67, 8.23, 48, 44, 14, 12, 8, 8, 0, 1),
(156, 33, 8.15, 8.42, 7.65, 48, 48, 16, 12, 14, 13, 0, 1),
(156, 34, 7.56, 7.75, 8.84, 36, 33, 12, 12, 14, 13, 0, 1),
(156, 35, 8.55, 8.26, 8.04, 40, 38, 14, 11, 8, 7, 0, 1);

-- Alumno 157
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(157, 1, 7.21, 7.76, 8.27, 40, 40, 15, 12, 14, 12, 0, 1),
(157, 2, 8.13, 7.10, 7.20, 40, 35, 16, 12, 10, 9, 0, 0),
(157, 3, 7.55, 7.97, 8.47, 40, 35, 10, 8, 10, 9, 0, 1),
(157, 4, 7.15, 8.33, 8.20, 40, 39, 12, 10, 10, 8, 0, 1),
(157, 5, 7.15, 7.46, 7.33, 48, 43, 15, 11, 12, 10, 0, 0),
(157, 6, 7.35, 7.43, 8.32, 48, 43, 16, 16, 14, 11, 0, 1);

-- Alumno 158
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(158, 7, 8.10, 8.42, 8.81, 36, 35, 16, 13, 12, 10, 0, 1),
(158, 8, 8.11, 7.89, 9.03, 36, 35, 16, 15, 10, 10, 0, 1),
(158, 9, 7.74, 8.48, 8.85, 36, 32, 16, 15, 12, 11, 0, 1),
(158, 10, 8.40, 8.07, 8.92, 48, 47, 15, 14, 14, 13, 0, 1),
(158, 11, 8.49, 8.71, 9.03, 48, 42, 12, 10, 10, 9, 0, 1),
(158, 12, 8.91, 8.37, 8.35, 40, 39, 12, 11, 12, 12, 0, 1);

-- Alumno 159
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(159, 13, 7.41, 7.32, 8.08, 40, 38, 15, 14, 14, 14, 0, 1),
(159, 14, 7.61, 7.96, 7.74, 36, 32, 15, 12, 12, 12, 0, 1),
(159, 15, 7.17, 8.52, 7.77, 48, 46, 16, 12, 12, 10, 0, 1),
(159, 17, 7.21, 7.36, 7.41, 36, 33, 12, 11, 12, 11, 0, 0),
(159, 18, 8.18, 8.34, 8.54, 36, 36, 16, 13, 12, 10, 0, 1);

-- Alumno 160
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(160, 20, 9.17, 8.25, 9.25, 36, 34, 12, 10, 10, 9, 0, 1),
(160, 21, 8.38, 9.05, 9.10, 40, 40, 15, 13, 8, 7, 0, 1),
(160, 22, 9.30, 8.83, 9.65, 40, 36, 15, 14, 8, 7, 0, 1),
(160, 23, 8.24, 9.45, 8.76, 48, 42, 15, 13, 12, 10, 0, 1),
(160, 24, 8.66, 9.19, 8.89, 48, 46, 14, 12, 8, 8, 0, 1);

-- Alumno 161
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(161, 25, 6.64, 7.00, 6.61, 36, 32, 16, 15, 12, 7, 1, 0),
(161, 26, 7.06, 6.50, 7.51, 48, 43, 10, 6, 10, 6, 0, 0),
(161, 27, 6.63, 6.54, 6.76, 48, 37, 15, 7, 12, 11, 1, 0),
(161, 28, 6.54, 7.52, 6.90, 36, 29, 16, 14, 14, 14, 1, 0),
(161, 29, 7.48, 7.46, 6.53, 36, 31, 15, 14, 10, 10, 0, 0),
(161, 30, 6.52, 6.53, 7.35, 40, 34, 12, 6, 10, 9, 1, 0);

-- Alumno 162
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(162, 32, 7.30, 7.34, 7.40, 36, 28, 14, 14, 12, 12, 0, 0),
(162, 33, 7.71, 7.76, 7.30, 36, 33, 12, 7, 14, 12, 0, 1),
(162, 34, 7.03, 7.57, 7.73, 36, 33, 18, 9, 10, 7, 0, 0),
(162, 35, 6.86, 7.53, 7.16, 36, 30, 15, 13, 8, 7, 0, 0);

-- Alumno 163
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(163, 1, 6.24, 6.19, 6.27, 48, 47, 18, 16, 14, 11, 0, 0),
(163, 2, 7.21, 6.69, 6.25, 36, 29, 14, 14, 14, 12, 1, 0),
(163, 3, 6.75, 6.47, 7.56, 36, 34, 14, 9, 10, 6, 0, 0),
(163, 4, 6.20, 6.30, 7.27, 36, 28, 18, 9, 12, 8, 0, 0),
(163, 6, 6.20, 7.13, 7.48, 48, 39, 15, 7, 8, 8, 0, 0);

-- Alumno 164
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(164, 7, 6.13, 6.04, 6.21, 36, 30, 10, 5, 14, 9, 0, 0),
(164, 10, 6.07, 6.03, 6.80, 36, 28, 18, 11, 10, 6, 0, 0),
(164, 11, 5.72, 6.22, 6.65, 36, 36, 12, 10, 14, 12, 1, 0);

-- Alumno 165
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(165, 13, 6.43, 5.67, 6.05, 36, 28, 18, 13, 12, 7, 1, 0),
(165, 14, 5.78, 6.07, 6.59, 36, 35, 16, 10, 12, 7, 0, 0),
(165, 15, 6.92, 6.62, 6.70, 48, 38, 14, 9, 12, 12, 0, 0),
(165, 17, 5.95, 6.50, 6.57, 40, 38, 18, 12, 8, 6, 1, 0),
(165, 18, 6.59, 5.82, 6.08, 40, 33, 16, 9, 8, 6, 0, 0);

-- Alumno 166
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(166, 19, 7.81, 8.67, 9.13, 40, 40, 14, 11, 12, 11, 0, 1),
(166, 20, 8.42, 8.71, 8.48, 40, 40, 14, 10, 10, 10, 0, 1),
(166, 21, 7.95, 7.99, 8.51, 48, 43, 18, 18, 10, 10, 0, 1),
(166, 22, 8.76, 8.38, 8.01, 48, 42, 10, 10, 8, 6, 0, 1),
(166, 23, 7.53, 9.04, 9.06, 36, 31, 12, 10, 10, 10, 0, 1);

-- Alumno 167
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(167, 25, 8.19, 8.93, 8.36, 36, 35, 12, 11, 12, 12, 0, 1),
(167, 28, 8.39, 8.81, 8.40, 40, 35, 14, 13, 14, 12, 0, 1);

-- Alumno 168
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(168, 34, 7.66, 7.56, 7.27, 40, 35, 15, 14, 8, 7, 0, 0),
(168, 36, 7.64, 7.16, 8.07, 40, 38, 15, 13, 14, 13, 0, 1);

-- Alumno 169
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(169, 1, 7.98, 9.17, 8.00, 48, 47, 18, 15, 14, 14, 0, 1),
(169, 2, 9.08, 9.21, 9.35, 40, 38, 15, 13, 8, 7, 0, 1),
(169, 3, 9.02, 9.28, 8.16, 48, 43, 12, 12, 12, 12, 0, 1),
(169, 4, 8.21, 8.88, 8.88, 40, 40, 10, 10, 14, 12, 0, 1),
(169, 5, 8.05, 7.94, 9.13, 48, 47, 18, 13, 10, 9, 0, 1),
(169, 6, 8.60, 9.21, 8.20, 36, 35, 16, 13, 8, 6, 0, 1);

-- Alumno 170
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(170, 7, 7.34, 7.85, 8.52, 40, 40, 14, 14, 14, 13, 0, 1),
(170, 9, 8.16, 8.31, 8.65, 36, 31, 18, 17, 12, 10, 0, 1),
(170, 10, 7.46, 7.55, 8.41, 48, 44, 10, 8, 14, 11, 0, 1),
(170, 11, 7.21, 8.34, 7.94, 40, 40, 14, 13, 10, 8, 0, 1),
(170, 12, 7.62, 8.25, 7.64, 36, 35, 10, 10, 10, 8, 0, 1);

-- Alumno 171
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(171, 13, 7.58, 7.00, 7.41, 48, 37, 18, 11, 8, 7, 0, 0),
(171, 14, 6.36, 6.60, 6.62, 36, 36, 12, 9, 14, 14, 0, 0),
(171, 17, 7.37, 6.44, 6.90, 36, 36, 10, 5, 10, 10, 0, 0),
(171, 18, 7.42, 6.96, 7.26, 40, 37, 15, 12, 14, 11, 0, 0);

-- Alumno 172
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(172, 19, 6.70, 7.31, 7.37, 36, 27, 15, 13, 10, 6, 0, 0),
(172, 20, 7.51, 8.03, 7.30, 48, 48, 12, 8, 14, 13, 0, 1),
(172, 21, 7.64, 8.03, 7.63, 48, 39, 10, 10, 12, 7, 0, 1),
(172, 22, 7.56, 8.03, 8.27, 48, 41, 18, 16, 10, 10, 0, 1),
(172, 23, 7.34, 7.84, 8.02, 40, 36, 15, 8, 14, 11, 0, 1),
(172, 24, 7.52, 7.81, 8.13, 48, 48, 18, 17, 8, 6, 0, 1);

-- Alumno 173
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(173, 25, 10.00, 9.44, 10.00, 36, 34, 18, 17, 10, 8, 0, 1),
(173, 27, 8.91, 9.84, 9.81, 36, 31, 15, 11, 10, 9, 0, 1),
(173, 28, 9.94, 9.86, 9.20, 40, 40, 15, 11, 10, 10, 0, 1),
(173, 30, 9.54, 9.48, 10.00, 40, 36, 16, 16, 8, 8, 0, 1);

-- Alumno 174
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(174, 31, 6.29, 6.44, 6.54, 48, 45, 12, 11, 8, 7, 1, 0),
(174, 32, 6.59, 6.85, 7.45, 40, 30, 16, 16, 10, 9, 0, 0),
(174, 33, 6.60, 6.83, 7.37, 36, 35, 18, 18, 10, 6, 0, 0),
(174, 34, 6.93, 6.96, 6.62, 40, 33, 15, 14, 10, 10, 1, 0),
(174, 35, 7.24, 7.51, 7.58, 36, 36, 14, 11, 8, 7, 0, 0),
(174, 36, 7.18, 6.99, 7.58, 40, 34, 18, 15, 8, 7, 1, 0);

-- Alumno 175
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(175, 2, 9.13, 9.04, 9.25, 48, 45, 14, 11, 8, 8, 0, 1),
(175, 3, 8.34, 8.54, 8.71, 40, 38, 15, 11, 12, 11, 0, 1),
(175, 5, 8.79, 8.22, 9.25, 40, 35, 12, 11, 8, 8, 0, 1),
(175, 6, 8.21, 8.87, 8.86, 40, 40, 15, 13, 10, 8, 0, 1);

-- Alumno 176
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(176, 7, 9.05, 7.98, 9.20, 40, 40, 12, 9, 8, 7, 0, 1),
(176, 8, 9.03, 8.02, 7.94, 48, 47, 14, 14, 14, 12, 0, 1),
(176, 10, 8.51, 8.34, 7.92, 36, 34, 15, 13, 10, 10, 0, 1),
(176, 11, 8.69, 8.86, 9.26, 48, 47, 10, 10, 14, 13, 0, 1),
(176, 12, 8.52, 8.39, 7.89, 36, 31, 10, 10, 10, 8, 0, 1);

-- Alumno 177
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(177, 13, 8.13, 7.81, 7.35, 36, 28, 14, 8, 10, 9, 0, 1),
(177, 14, 7.85, 6.86, 7.71, 48, 48, 16, 15, 8, 5, 0, 0),
(177, 15, 7.76, 7.12, 7.85, 36, 29, 16, 10, 8, 8, 0, 1),
(177, 16, 7.83, 7.00, 7.11, 36, 29, 10, 9, 12, 7, 0, 0),
(177, 17, 6.76, 7.00, 7.35, 48, 38, 15, 7, 10, 8, 0, 0),
(177, 18, 6.70, 8.15, 8.20, 40, 40, 16, 15, 10, 10, 0, 1);

-- Alumno 178
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(178, 19, 8.59, 7.86, 7.95, 36, 33, 12, 10, 10, 10, 0, 1),
(178, 21, 8.14, 7.98, 8.77, 36, 35, 14, 12, 14, 12, 0, 1),
(178, 22, 8.20, 7.92, 8.26, 40, 40, 12, 10, 8, 8, 0, 1),
(178, 23, 8.70, 9.19, 8.88, 36, 36, 14, 14, 10, 9, 0, 1),
(178, 24, 8.83, 8.24, 9.00, 40, 35, 16, 13, 8, 7, 0, 1);

-- Alumno 179
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(179, 25, 6.58, 7.92, 7.84, 36, 30, 14, 7, 8, 8, 0, 0),
(179, 26, 7.92, 6.96, 8.08, 36, 29, 16, 12, 14, 9, 0, 1),
(179, 27, 7.24, 7.63, 7.96, 48, 40, 16, 9, 8, 6, 0, 1),
(179, 28, 6.93, 7.70, 7.00, 48, 46, 16, 16, 14, 12, 0, 0),
(179, 29, 7.34, 7.01, 7.71, 48, 38, 18, 11, 10, 9, 0, 0),
(179, 30, 7.30, 7.02, 8.04, 48, 41, 18, 12, 14, 14, 0, 0);

-- Alumno 180
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(180, 31, 6.92, 7.80, 7.81, 36, 31, 18, 10, 12, 10, 0, 1),
(180, 32, 7.44, 7.66, 7.47, 36, 30, 10, 6, 8, 5, 0, 1),
(180, 33, 7.40, 7.26, 7.27, 36, 33, 18, 17, 10, 9, 0, 0),
(180, 34, 7.03, 7.44, 7.53, 48, 47, 10, 8, 8, 6, 0, 0),
(180, 35, 7.65, 7.52, 7.58, 48, 44, 18, 14, 10, 10, 0, 1),
(180, 36, 7.31, 6.54, 7.21, 36, 35, 12, 7, 8, 7, 0, 0);

-- Alumno 181
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(181, 1, 7.25, 8.55, 7.76, 48, 43, 16, 12, 12, 11, 0, 1),
(181, 2, 7.71, 7.56, 7.29, 48, 46, 15, 12, 12, 12, 0, 1),
(181, 3, 7.76, 8.44, 8.60, 48, 48, 15, 11, 12, 10, 0, 1),
(181, 5, 7.91, 7.65, 7.79, 36, 33, 18, 14, 14, 13, 0, 1),
(181, 6, 7.00, 7.79, 7.57, 48, 46, 12, 12, 8, 7, 0, 0);

-- Alumno 182
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(182, 7, 7.12, 7.47, 7.23, 40, 31, 15, 14, 10, 7, 0, 0),
(182, 8, 7.20, 7.48, 7.47, 48, 39, 10, 6, 12, 7, 0, 0),
(182, 9, 6.87, 7.46, 7.43, 36, 29, 18, 12, 14, 14, 0, 0),
(182, 11, 8.14, 7.04, 7.65, 40, 40, 18, 11, 12, 10, 0, 1),
(182, 12, 7.42, 8.16, 8.15, 40, 32, 10, 5, 8, 6, 0, 1);

-- Alumno 183
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(183, 14, 8.15, 7.53, 8.25, 40, 38, 16, 12, 14, 14, 0, 1),
(183, 15, 7.43, 7.88, 8.37, 36, 35, 12, 10, 10, 9, 0, 1);

-- Alumno 184
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(184, 19, 7.09, 7.36, 7.31, 48, 45, 12, 7, 10, 7, 1, 0),
(184, 20, 6.63, 6.61, 6.60, 36, 33, 10, 9, 10, 6, 0, 0),
(184, 21, 6.60, 6.96, 7.31, 36, 30, 14, 13, 14, 9, 0, 0),
(184, 22, 7.00, 6.66, 6.71, 40, 35, 18, 15, 10, 8, 0, 0),
(184, 23, 6.30, 6.23, 7.25, 40, 33, 14, 14, 12, 11, 1, 0);

-- Alumno 185
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(185, 26, 7.02, 6.90, 6.88, 48, 48, 12, 8, 12, 12, 0, 0),
(185, 27, 7.78, 7.80, 7.68, 48, 41, 12, 11, 12, 8, 0, 1),
(185, 28, 7.44, 6.88, 7.01, 48, 47, 16, 9, 8, 6, 0, 0);

-- Alumno 186
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(186, 31, 9.34, 9.03, 9.37, 36, 35, 18, 14, 8, 6, 0, 1),
(186, 32, 8.70, 9.38, 9.06, 48, 44, 14, 13, 8, 7, 0, 1),
(186, 34, 8.51, 9.20, 10.00, 48, 48, 10, 8, 12, 12, 0, 1),
(186, 35, 9.86, 9.02, 10.00, 36, 36, 12, 12, 14, 11, 0, 1);

-- Alumno 187
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(187, 1, 7.65, 7.55, 8.44, 48, 47, 10, 10, 12, 11, 0, 1),
(187, 2, 8.62, 7.95, 8.02, 36, 32, 12, 9, 10, 9, 0, 1),
(187, 3, 7.40, 7.75, 8.88, 36, 33, 10, 8, 10, 10, 0, 1),
(187, 4, 7.51, 8.45, 8.53, 40, 37, 10, 9, 10, 9, 0, 1),
(187, 5, 8.69, 7.95, 9.02, 48, 48, 10, 9, 10, 10, 0, 1),
(187, 6, 8.79, 7.79, 9.00, 48, 47, 16, 12, 14, 13, 0, 1);

-- Alumno 188
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(188, 8, 8.34, 8.59, 9.12, 40, 36, 15, 12, 14, 13, 0, 1),
(188, 11, 8.23, 8.88, 9.00, 40, 36, 12, 10, 14, 12, 0, 1),
(188, 12, 8.98, 8.24, 8.54, 36, 34, 18, 17, 10, 8, 0, 1);

-- Alumno 189
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(189, 13, 6.51, 6.94, 7.15, 48, 37, 15, 13, 8, 5, 0, 0),
(189, 14, 6.87, 6.82, 6.08, 36, 28, 14, 9, 8, 5, 0, 0),
(189, 15, 5.88, 6.95, 6.49, 48, 37, 12, 7, 14, 13, 0, 0),
(189, 16, 6.94, 6.35, 6.69, 36, 27, 16, 12, 8, 5, 0, 0),
(189, 17, 5.87, 6.34, 6.74, 40, 32, 10, 6, 8, 6, 0, 0),
(189, 18, 5.94, 6.84, 6.34, 48, 42, 18, 10, 14, 10, 0, 0);

-- Alumno 190
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(190, 19, 6.14, 6.34, 7.23, 36, 27, 16, 10, 10, 9, 0, 0),
(190, 20, 6.54, 6.79, 6.15, 48, 46, 14, 11, 12, 7, 1, 0),
(190, 21, 6.39, 6.36, 6.31, 48, 48, 10, 5, 10, 7, 1, 0),
(190, 24, 6.23, 6.85, 7.04, 40, 31, 10, 9, 14, 14, 1, 0);

-- Alumno 191
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(191, 25, 7.27, 7.40, 8.19, 48, 48, 18, 14, 10, 7, 0, 1),
(191, 26, 7.10, 7.50, 7.58, 40, 38, 16, 11, 14, 9, 0, 0),
(191, 27, 7.40, 7.32, 7.64, 48, 48, 18, 12, 8, 6, 0, 0),
(191, 28, 7.07, 7.01, 8.02, 40, 38, 15, 9, 8, 5, 0, 0),
(191, 30, 7.90, 7.24, 8.02, 36, 31, 15, 9, 14, 10, 0, 1);

-- Alumno 192
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(192, 32, 5.79, 7.13, 6.87, 40, 30, 18, 15, 12, 7, 0, 0),
(192, 36, 6.57, 5.88, 7.05, 36, 27, 12, 8, 10, 6, 1, 0);

-- Alumno 193
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(193, 1, 8.90, 8.96, 8.50, 40, 40, 14, 13, 8, 7, 0, 1),
(193, 2, 7.95, 8.06, 8.98, 48, 48, 12, 10, 8, 7, 0, 1),
(193, 3, 9.03, 8.93, 9.31, 48, 47, 14, 14, 12, 12, 0, 1),
(193, 4, 8.12, 9.28, 8.46, 36, 35, 15, 12, 10, 9, 0, 1),
(193, 5, 8.71, 8.29, 8.34, 48, 46, 16, 12, 14, 14, 0, 1),
(193, 6, 8.25, 8.88, 9.24, 36, 31, 14, 13, 10, 9, 0, 1);

-- Alumno 194
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(194, 7, 6.41, 6.52, 6.77, 36, 31, 12, 10, 10, 6, 1, 0),
(194, 8, 6.30, 7.17, 6.53, 40, 30, 10, 7, 8, 7, 1, 0),
(194, 9, 6.70, 6.77, 7.03, 36, 32, 15, 12, 10, 6, 1, 0),
(194, 10, 7.51, 7.08, 7.17, 36, 27, 16, 14, 14, 13, 0, 0),
(194, 11, 6.23, 6.60, 7.43, 36, 28, 18, 12, 10, 7, 0, 0),
(194, 12, 6.41, 7.72, 7.19, 48, 45, 18, 17, 12, 10, 0, 0);

-- Alumno 195
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(195, 15, 8.81, 7.66, 8.70, 48, 45, 12, 10, 8, 6, 0, 1),
(195, 17, 8.25, 8.99, 7.84, 36, 32, 14, 14, 8, 7, 0, 1),
(195, 18, 7.54, 8.04, 9.01, 36, 31, 14, 14, 12, 11, 0, 1);

-- Alumno 196
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(196, 19, 8.36, 9.25, 9.34, 40, 40, 12, 9, 14, 11, 0, 1),
(196, 20, 8.22, 8.27, 8.54, 48, 47, 12, 12, 12, 12, 0, 1),
(196, 24, 8.94, 9.20, 8.49, 48, 45, 16, 15, 12, 12, 0, 1);

-- Alumno 197
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(197, 25, 8.98, 8.92, 8.45, 36, 33, 15, 12, 14, 11, 0, 1),
(197, 27, 8.26, 9.35, 9.17, 40, 38, 15, 15, 14, 11, 0, 1),
(197, 29, 8.06, 9.15, 9.51, 40, 38, 12, 12, 12, 10, 0, 1),
(197, 30, 8.41, 9.53, 8.91, 48, 47, 15, 11, 12, 11, 0, 1);

-- Alumno 198
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(198, 31, 6.47, 7.46, 7.25, 40, 36, 15, 10, 8, 6, 0, 0),
(198, 32, 7.72, 7.95, 7.68, 40, 34, 18, 11, 8, 6, 0, 1),
(198, 33, 6.52, 7.19, 7.14, 48, 43, 15, 15, 10, 8, 0, 0),
(198, 34, 6.70, 6.70, 7.97, 40, 35, 14, 9, 10, 8, 0, 0),
(198, 35, 7.83, 7.29, 7.47, 36, 33, 14, 13, 8, 6, 0, 1),
(198, 36, 6.54, 7.56, 7.58, 40, 40, 18, 14, 8, 6, 0, 0);

-- Alumno 199
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(199, 1, 7.32, 7.82, 7.86, 36, 34, 18, 18, 8, 5, 0, 1),
(199, 2, 6.57, 7.81, 7.13, 48, 48, 12, 10, 14, 10, 0, 0),
(199, 3, 6.76, 7.77, 7.90, 48, 36, 14, 12, 8, 7, 0, 0),
(199, 4, 7.58, 7.14, 7.75, 48, 43, 18, 16, 14, 12, 0, 0),
(199, 5, 6.77, 7.60, 7.14, 40, 31, 12, 9, 14, 11, 0, 0),
(199, 6, 6.51, 7.27, 7.30, 40, 34, 18, 15, 12, 12, 0, 0);

-- Alumno 200
INSERT INTO Alumnos_Materias (
    id_alumno, id_materia, parcial_1, parcial_2, parcial_3,
    total_clases, asistencias, total_participaciones, participaciones,
    total_tareas, tareas, recursa, notas
) VALUES
(200, 7, 8.14, 9.09, 9.14, 40, 35, 15, 15, 8, 8, 0, 1),
(200, 11, 8.65, 8.99, 8.33, 40, 38, 12, 10, 14, 14, 0, 1),
(200, 12, 8.15, 9.38, 9.61, 40, 38, 15, 14, 8, 7, 0, 1);

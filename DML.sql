SELECT * FROM user;
select * from school;
select * from program;
select * from student;
select * from teacher;
select * from author;
select * from book;

INSERT INTO school (name) VALUES
('Escuela Primaria ABC'),
('Escuela Secundaria XYZ');

INSERT INTO program (name, school_id) VALUES
('Programa de Matemáticas', 1),
('Programa de Ciencias', 1),
('Programa de Historia', 1),
('Programa de Literatura', 2),
('Programa de Arte', 2);

INSERT INTO user (doc_id, doc_type, name, lastname, email) VALUES
(1, 'DNI', 'Juan', 'Pérez', 'juan@example.com'),
(2, 'Carnet', 'María', 'González', 'maria@example.com'),
(3, 'DNI', 'Carlos', 'López', 'carlos@example.com'),
(4, 'Carnet', 'Laura', 'Martínez', 'laura@example.com'),
(5, 'DNI', 'Pedro', 'Rodríguez', 'pedro@example.com'),
(6, 'Carnet', 'Ana', 'Sánchez', 'ana@example.com'),
(7, 'DNI', 'Luis', 'Fernández', 'luis@example.com'),
(8, 'Carnet', 'Elena', 'Pardo', 'elena@example.com'),
(9, 'DNI', 'Andrés', 'Ramírez', 'andres@example.com'),
(10, 'Carnet', 'Marta', 'Hernández', 'marta@example.com'),
(11, 'DNI', 'José', 'Gómez', 'jose@example.com'),
(12, 'Carnet', 'Isabel', 'Díaz', 'isabel@example.com'),
(13, 'DNI', 'Santiago', 'López', 'santiago@example.com'),
(14, 'Carnet', 'Eva', 'Torres', 'eva@example.com'),
(15, 'DNI', 'Manuel', 'Rojas', 'manuel@example.com'),
(16, 'Carnet', 'Olga', 'Navarro', 'olga@example.com'),
(17, 'DNI', 'Javier', 'García', 'javier@example.com'),
(18, 'Carnet', 'Carmen', 'Fuentes', 'carmen@example.com'),
(19, 'DNI', 'Raúl', 'Silva', 'raul@example.com'),
(20, 'Carnet', 'Patricia', 'Jiménez', 'patricia@example.com');

INSERT INTO student (school_id, program_id, user_id) VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 1, 4),
(2, 4, 5),
(2, 5, 6),
(2, 4, 7),
(2, 5, 8),
(1, 3, 9),
(1, 2, 10),
(2, 5, 11),
(2, 4, 12),
(1, 1, 13),
(1, 2, 14),
(2, 4, 15);

INSERT INTO teacher (id, active, school_id, id_user) VALUES
(1, true, 1, 16),
(2, true, 2, 17),
(3, true, 1, 18),
(4, true, 2, 19),
(5, true, 1, 20);

INSERT INTO author (name) VALUES
('George Orwell'),
('J.K. Rowling'),
('Agatha Christie'),
('Stephen King'),
('Jane Austen');

INSERT INTO category (name) VALUES
('Ficción'),
('No Ficción'),
('Misterio'),
('Ciencia Ficción'),
('Romance');

INSERT INTO editorial (name) VALUES
('Daily'),
('Venecia news');

INSERT INTO book (isbn, name, page_number, published_year, author_id, editorial_id, category_id) VALUES
(9780156196253, 'Animal Farm', 112, '1945-08-17', 1, 1, 1,1),
(9780439554930, 'Harry Potter and the Sorcerer''s Stone', 320, '1997-06-26', 2, 2, 1,1),
(9780439554893, 'Harry Potter and the Chamber of Secrets', 352, '1998-07-02', 2, 2, 1,1),
(9780439655484, 'Harry Potter and the Prisoner of Azkaban', 448, '1999-07-08', 2, 2, 1,1),
(9780062073488, 'Murder on the Orient Express', 336, '1934-01-01', 3, 1, 3,1),
(9780062073495, 'And Then There Were None', 264, '1939-01-01', 3, 1, 3,1),
(9781501142970, 'It', 1138, '1986-09-15', 4, 2, 4,1),
(9780451169525, 'The Shining', 464, '1977-01-28', 4, 1, 4,1),
(9780141439518, 'Pride and Prejudice', 432, '1813-01-28', 5, 2, 5,1),
(9781612930831, 'Sense and Sensibility', 328, '1811-10-30', 5, 1, 5,1);


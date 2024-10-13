INSERT INTO USUARIOS (NOMBRE, EMAIL, ADICIONADO_POR, FECHA_ADICION, MODIFICADO_POR, FECHA_MODIFICACION)
VALUES 
    ('Juan Pérez', 'juan.perez@example.com', 'Admin', GETDATE(), NULL, NULL),
    ('María Gómez', 'maria.gomez@example.com', 'Admin', GETDATE(), NULL, NULL),
    ('Carlos Rodríguez', 'carlos.rodriguez@example.com', 'Admin', GETDATE(), NULL, NULL),
    ('Ana Martínez', 'ana.martinez@example.com', 'Admin', GETDATE(), NULL, NULL),
    ('Luis Torres', 'luis.torres@example.com', 'Admin', GETDATE(), NULL, NULL);

INSERT INTO ESTUDIANTES (IDENTIFICACION, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, FECHA_NACIMIENTO, ADICIONADO_POR, FECHA_ADICION, MODIFICADO_POR, FECHA_MODIFICACION)
VALUES
('123456789', 'Juan', 'Pérez', 'González', '2000-10-05', 'Admin', GETDATE(), NULL, NULL),
('987654321', 'María', 'López', 'Martínez', '2000-03-10', 'Admin', GETDATE(), NULL, NULL),
('456789123', 'Carlos', 'Gutiérrez', 'Ramírez', '2000-07-03', 'Admin', GETDATE(), NULL, NULL),
('321654987', 'Ana', 'Hernández', 'Pérez', '2001-05-12', 'Admin', GETDATE(), NULL, NULL),
('159753486', 'Laura', 'Morales', 'Soto', '2001-10-05', 'Admin', GETDATE(), NULL, NULL)

INSERT INTO CURSOS (NOMBRE, DESCRIPCION, ADICIONADO_POR, FECHA_ADICION, MODIFICADO_POR, FECHA_MODIFICACION)
VALUES 
    ('Matemáticas I', 'Introducción a las matemáticas básicas.', 'Admin', GETDATE(), NULL, NULL),
    ('Programación I', 'Fundamentos de la programación en Java.', 'Admin', GETDATE(), NULL, NULL),
    ('Bases de Datos', 'Introducción a la gestión de bases de datos.', 'Admin', GETDATE(), NULL, NULL),
    ('Física I', 'Conceptos básicos de física.', 'Admin', GETDATE(), NULL, NULL),
    ('Química I', 'Introducción a la química general.', 'Admin', GETDATE(), NULL, NULL);

INSERT INTO MATRICULA (ESTUDIANTE_ID, CURSO_ID, FECHA_MATRICULA, ADICIONADO_POR, FECHA_ADICION, MODIFICADO_POR, FECHA_MODIFICACION)
VALUES 
    (1, 2, GETDATE(), 'Admin', GETDATE(), NULL, NULL), -- Juan Pérez se matricula en Programación I
    (2, 1, GETDATE(), 'Admin', GETDATE(), NULL, NULL), -- María Gómez se matricula en Matemáticas I
    (3, 3, GETDATE(), 'Admin', GETDATE(), NULL, NULL), -- Carlos Rodríguez se matricula en Bases de Datos
    (4, 4, GETDATE(), 'Admin', GETDATE(), NULL, NULL), -- Ana Martínez se matricula en Física I
    (5, 5, GETDATE(), 'Admin', GETDATE(), NULL, NULL); -- Luis Torres se matricula en Química I

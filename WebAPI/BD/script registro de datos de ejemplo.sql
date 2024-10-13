INSERT INTO USUARIOS (NOMBRE, EMAIL, ADICIONADO_POR, FECHA_ADICION, MODIFICADO_POR, FECHA_MODIFICACION)
VALUES 
    ('Juan Pérez', 'juan.perez@example.com', 'Admin', GETDATE(), NULL, NULL),
    ('María Gómez', 'maria.gomez@example.com', 'Admin', GETDATE(), NULL, NULL),
    ('Carlos Rodríguez', 'carlos.rodriguez@example.com', 'Admin', GETDATE(), NULL, NULL),
    ('Ana Martínez', 'ana.martinez@example.com', 'Admin', GETDATE(), NULL, NULL),
    ('Luis Torres', 'luis.torres@example.com', 'Admin', GETDATE(), NULL, NULL);

INSERT INTO ESTUDIANTES (IDENTIFICACION, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, FECHA_NACIMIENTO, ADICIONADO_POR, FECHA_ADICION, MODIFICADO_POR, FECHA_MODIFICACION)
VALUES 
    ('001', 'Juan', 'Pérez', 'López', '2000-05-15', 'Admin', GETDATE(), NULL, NULL),
    ('002', 'María', 'Gómez', 'Sánchez', '1999-03-10', 'Admin', GETDATE(), NULL, NULL),
    ('003', 'Carlos', 'Rodríguez', 'Martínez', '2001-07-20', 'Admin', GETDATE(), NULL, NULL),
    ('004', 'Ana', 'Martínez', 'Hernández', '2002-11-25', 'Admin', GETDATE(), NULL, NULL),
    ('005', 'Luis', 'Torres', 'Fernández', '2000-01-05', 'Admin', GETDATE(), NULL, NULL);


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

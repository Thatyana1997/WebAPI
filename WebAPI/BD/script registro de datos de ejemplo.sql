INSERT INTO USUARIOS (NOMBRE, EMAIL, ADICIONADO_POR, FECHA_ADICION, MODIFICADO_POR, FECHA_MODIFICACION)
VALUES 
    ('Juan P�rez', 'juan.perez@example.com', 'Admin', GETDATE(), NULL, NULL),
    ('Mar�a G�mez', 'maria.gomez@example.com', 'Admin', GETDATE(), NULL, NULL),
    ('Carlos Rodr�guez', 'carlos.rodriguez@example.com', 'Admin', GETDATE(), NULL, NULL),
    ('Ana Mart�nez', 'ana.martinez@example.com', 'Admin', GETDATE(), NULL, NULL),
    ('Luis Torres', 'luis.torres@example.com', 'Admin', GETDATE(), NULL, NULL);

INSERT INTO ESTUDIANTES (IDENTIFICACION, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, FECHA_NACIMIENTO, ADICIONADO_POR, FECHA_ADICION, MODIFICADO_POR, FECHA_MODIFICACION)
VALUES 
    ('001', 'Juan', 'P�rez', 'L�pez', '2000-05-15', 'Admin', GETDATE(), NULL, NULL),
    ('002', 'Mar�a', 'G�mez', 'S�nchez', '1999-03-10', 'Admin', GETDATE(), NULL, NULL),
    ('003', 'Carlos', 'Rodr�guez', 'Mart�nez', '2001-07-20', 'Admin', GETDATE(), NULL, NULL),
    ('004', 'Ana', 'Mart�nez', 'Hern�ndez', '2002-11-25', 'Admin', GETDATE(), NULL, NULL),
    ('005', 'Luis', 'Torres', 'Fern�ndez', '2000-01-05', 'Admin', GETDATE(), NULL, NULL);


INSERT INTO CURSOS (NOMBRE, DESCRIPCION, ADICIONADO_POR, FECHA_ADICION, MODIFICADO_POR, FECHA_MODIFICACION)
VALUES 
    ('Matem�ticas I', 'Introducci�n a las matem�ticas b�sicas.', 'Admin', GETDATE(), NULL, NULL),
    ('Programaci�n I', 'Fundamentos de la programaci�n en Java.', 'Admin', GETDATE(), NULL, NULL),
    ('Bases de Datos', 'Introducci�n a la gesti�n de bases de datos.', 'Admin', GETDATE(), NULL, NULL),
    ('F�sica I', 'Conceptos b�sicos de f�sica.', 'Admin', GETDATE(), NULL, NULL),
    ('Qu�mica I', 'Introducci�n a la qu�mica general.', 'Admin', GETDATE(), NULL, NULL);

INSERT INTO MATRICULA (ESTUDIANTE_ID, CURSO_ID, FECHA_MATRICULA, ADICIONADO_POR, FECHA_ADICION, MODIFICADO_POR, FECHA_MODIFICACION)
VALUES 
    (1, 2, GETDATE(), 'Admin', GETDATE(), NULL, NULL), -- Juan P�rez se matricula en Programaci�n I
    (2, 1, GETDATE(), 'Admin', GETDATE(), NULL, NULL), -- Mar�a G�mez se matricula en Matem�ticas I
    (3, 3, GETDATE(), 'Admin', GETDATE(), NULL, NULL), -- Carlos Rodr�guez se matricula en Bases de Datos
    (4, 4, GETDATE(), 'Admin', GETDATE(), NULL, NULL), -- Ana Mart�nez se matricula en F�sica I
    (5, 5, GETDATE(), 'Admin', GETDATE(), NULL, NULL); -- Luis Torres se matricula en Qu�mica I

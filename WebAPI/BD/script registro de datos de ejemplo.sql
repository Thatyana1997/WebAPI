INSERT INTO USUARIOS (NOMBRE, EMAIL, ADICIONADO_POR, FECHA_ADICION, MODIFICADO_POR, FECHA_MODIFICACION)
VALUES 
    ('Juan P�rez', 'juan.perez@example.com', 'Admin', GETDATE(), NULL, NULL),
    ('Mar�a G�mez', 'maria.gomez@example.com', 'Admin', GETDATE(), NULL, NULL),
    ('Carlos Rodr�guez', 'carlos.rodriguez@example.com', 'Admin', GETDATE(), NULL, NULL),
    ('Ana Mart�nez', 'ana.martinez@example.com', 'Admin', GETDATE(), NULL, NULL),
    ('Luis Torres', 'luis.torres@example.com', 'Admin', GETDATE(), NULL, NULL);

INSERT INTO ESTUDIANTES (IDENTIFICACION, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, FECHA_NACIMIENTO, ADICIONADO_POR, FECHA_ADICION, MODIFICADO_POR, FECHA_MODIFICACION)
VALUES
('123456789', 'Juan', 'P�rez', 'Gonz�lez', '2000-10-05', 'Admin', GETDATE(), NULL, NULL),
('987654321', 'Mar�a', 'L�pez', 'Mart�nez', '2000-03-10', 'Admin', GETDATE(), NULL, NULL),
('456789123', 'Carlos', 'Guti�rrez', 'Ram�rez', '2000-07-03', 'Admin', GETDATE(), NULL, NULL),
('321654987', 'Ana', 'Hern�ndez', 'P�rez', '2001-05-12', 'Admin', GETDATE(), NULL, NULL),
('159753486', 'Laura', 'Morales', 'Soto', '2001-10-05', 'Admin', GETDATE(), NULL, NULL)

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

-- Consulta para ver todos los libros y sus autores
SELECT
    L.Titulo,
    A.Nombre AS Autor,
    L.FechaPublicacion
FROM
    Libros L
JOIN
    Autores A ON L.AutorID = A.AutorID;

-- Consulta para ver todos los préstamos
SELECT
    P.PrestamoID,
    L.Titulo AS Libro,
    P.FechaPrestamo,
    P.FechaDevolucion
FROM
    Prestamos P
JOIN
    Libros L ON P.LibroID = L.LibroID;

SELECT
    A.Nombre AS Autor,
    COUNT(L.LibroID) AS NumeroDeLibros
FROM
    Libros L
JOIN
    Autores A ON L.AutorID = A.AutorID
GROUP BY
    A.Nombre;

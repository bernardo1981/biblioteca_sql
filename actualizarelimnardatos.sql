-- Actualizar la fecha de devolución de un libro
UPDATE Prestamos
SET FechaDevolucion = '2024-08-20'
WHERE PrestamoID = 1;

-- Eliminar un autor (y por ende los libros asociados a él)
DELETE FROM Autores
WHERE AutorID = 3;

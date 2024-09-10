-- Crear la base de datos
CREATE DATABASE Biblioteca;
USE Biblioteca;

-- Crear la tabla de Autores
CREATE TABLE Autores (
    AutorID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Nacionalidad VARCHAR(50)
);

-- Crear la tabla de Libros
CREATE TABLE Libros (
    LibroID INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(150) NOT NULL,
    AutorID INT,
    FechaPublicacion DATE,
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID)
);

-- Crear la tabla de Préstamos
CREATE TABLE Prestamos (
    PrestamoID INT AUTO_INCREMENT PRIMARY KEY,
    LibroID INT,
    FechaPrestamo DATE,
    FechaDevolucion DATE,
    FOREIGN KEY (LibroID) REFERENCES Libros(LibroID)
);

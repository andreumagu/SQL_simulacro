CREATE DATABASE biblioteca;

CREATE TABLE Libros (
    id_libro INT PRIMARY KEY,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    anio_publicacion INT
);

INSERT INTO Libros (id_libro, titulo, autor, anio_publicacion) VALUES
(1, 'El Gran Gatsby', 'F. Scott Fitzgerald', 1925),
(2, '1984', 'George Orwell', 1949),
(3, 'Matar a un ruiseñor', 'Harper Lee', 1960),
(4, 'El señor de los anillos', 'J.R.R. Tolkien', 1954),
(5, 'Cien años de soledad', 'Gabriel García Márquez', 1967),
(6, 'En busca del tiempo perdido', 'Marcel Proust', 1913),
(7, 'Ulises', 'James Joyce', 1922),
(8, 'Lolita', 'Vladimir Nabokov', 1955),
(9, 'Brave New World', 'Aldous Huxley', 1932),
(10, 'To The Lighthouse', 'Virginia Woolf', 1927);

CREATE TABLE Prestamos (
    id_prestamo INT PRIMARY KEY,
    id_libro INT,
    fecha_prestamo DATE,
    fecha_devolucion DATE,
    FOREIGN KEY (id_libro) REFERENCES Libros(id_libro)
);

INSERT INTO Prestamos (id_prestamo, id_libro, fecha_prestamo, fecha_devolucion) VALUES
(1, 1, '2023-01-01', '2023-01-31'),
(2, 2, '2023-02-01', '2023-02-28'),
(3, 3, '2023-03-01', '2023-03-31'),
(4, 4, '2023-04-01', '2023-04-30'),
(5, 5, '2023-05-01', '2023-05-31'),
(6, 6, '2023-06-01', '2023-06-30'),
(7, 7, '2023-07-01', '2023-07-31'),
(8, 8, '2023-08-01', '2023-08-31'),
(9, 9, '2023-09-01', '2023-09-30'),
(10, 10, '2023-10-01', '2023-10-31');

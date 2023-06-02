# Simulacro SQL

1. Selecciona el título del libro que se prestó por primera vez hace más tiempo.

    ```sql
    SELECT Libros.titulo
    FROM Libros
    INNER JOIN Prestamos on Libros.id_libro = Prestamos.id_libro
    ORDER BY Prestamos.fecha_prestamo ASC
    LIMIT 1;
    ```

    ![1](/img/1.png)

2. Selecciona los libros que se han prestado al menos una vez, pero no en los últimos seis meses.

    ```sql
    SELECT id_libro
    FROM Prestamos
    ORDER BY fecha_prestamo <= '2022-12-02'
    LIMIT 1;
    ```

    ![2](/img/2.png)

3. Selecciona el mes con el mayor número de préstamos

    ```sql
    SELECT MONTH(fecha_prestamo), COUNT(id_prestamo) AS num_p
    FROM Prestamos
    GROUP BY MONTH(fecha_prestamo)
    ORDER BY num_p DESC
    LIMIT 1;
    ```

    ![3](/img/3.png)

4. Selecciona los autores cuyos libros se prestan en promedio menos de 3 veces.

    ```sql
    SELECT autor
    FROM Libros
    WHERE id_libro IN (
        SELECT id_libro
        FROM Prestamos
        GROUP BY id_libro
        HAVING COUNT(*) < 3
    );
    ```

    ![4](/img/4.png)

5. Selecciona todos los préstamos que aún no han sido devueltos.

    ```sql
    SELECT id_prestamo
    FROM Prestamos
    WHERE fecha_devolucion > '2023-06-02';
    ```

    ![5](/img/5.png)

6. Selecciona el título de los libros que fueron prestados en el último mes.

    ```sql
    SELECT Libros.titulo
    FROM Libros
    INNER JOIN Prestamos on Libros.id_libro = Prestamos.id_libro
    WHERE Prestamos.fecha_prestamo BETWEEN '2023-05-01' AND '2023-05-31';
    ```

    ![6](/img/6.png)

7. Selecciona el autor que tiene más libros en la biblioteca.

    ```sql
    SELECT autor
    FROM Libros
    GROUP BY autor
    ORDER BY COUNT(id_libro) DESC;
    ```

    ![7](/img/7.png)

8. Selecciona el título del libro que se ha prestado más veces.

    ```sql
    SELECT Libros.titulo
    FROM Libros
    INNER JOIN Prestamos on Libros.id_libro = Prestamos.id_libro
    GROUP BY Prestamos.id_libro
    ORDER BY COUNT(id_prestamo) DESC
    LIMIT 1;
    ```

    ![8](/img/8.png)

9. Selecciona los libros que nunca se han prestado.

    ```sql
    SELECT Libros.id_libro
    FROM Libros
    WHERE id_libro NOT IN(
        SELECT id_libro
        FROM Prestamos
    );
    ```

    ![9](/img/9.png)

10. Selecciona el año con la mayor cantidad de préstamos.

    ```sql
    SELECT YEAR(fecha_prestamo), COUNT(id_prestamo) AS num_p
    FROM Prestamos
    GROUP BY YEAR(fecha_prestamo)
    ORDER BY num_p DESC
    LIMIT 1;
    ```

    ![10](/img/10.png)

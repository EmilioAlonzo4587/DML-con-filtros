# 📘 Consultas SQL detalladas

## 1. Clientes de Brasil

```sql
SELECT UPPER(first_name) AS first_name,
       UPPER(last_name) AS last_name,
       email
FROM customer
WHERE country = 'Brazil'
ORDER BY last_name ASC;
Qué hace: Selecciona el first_name, last_name (en mayúsculas con UPPER()) y email de los clientes cuyo país (country) es Brazil.
Qué devuelve: Una lista de los clientes de Brasil con sus nombres en mayúsculas y correos electrónicos, ordenados alfabéticamente por el apellido.

2. Álbumes del artista AC/DC
sql
Copiar código
SELECT a.title
FROM album a
JOIN artist ar ON a.artist_id = ar.artist_id
WHERE ar.name = 'AC/DC';
Qué hace: Une (JOIN) las tablas album y artist.
Qué devuelve: Todos los títulos de los álbumes pertenecientes a AC/DC.

3. Canciones que contengan “love”
sql
Copiar código
SELECT track_id,
       name,
       LENGTH(name) AS name_length,
       album_id
FROM track
WHERE name ILIKE '%love%';
Qué hace: Busca canciones cuyo name contenga la palabra "love", sin importar mayúsculas o minúsculas (por ILIKE).
Qué devuelve: El track_id, el nombre de la canción, la longitud de su nombre y el album_id correspondiente.

4. Facturas mayores a 10 dólares
sql
Copiar código
SELECT invoice_id,
       invoice_date,
       billing_country,
       total
FROM invoice
WHERE total > 10.00
ORDER BY total DESC;
Qué hace: Filtra las facturas (invoice) cuyo total sea mayor a 10 dólares.
Qué devuelve: La lista de facturas con más de 10 dólares, mostrando el ID, la fecha, el país de facturación y el total, ordenadas de mayor a menor.

5. Los 5 clientes más recientes
sql
Copiar código
SELECT customer_id,
       first_name,
       last_name,
       country
FROM customer
ORDER BY customer_id DESC
LIMIT 5;
Qué hace: Ordena los clientes por customer_id en orden descendente.
Qué devuelve: Los 5 últimos clientes registrados en la base de datos.

6. Canciones de más de 5 minutos
sql
Copiar código
SELECT track_id,
       name,
       ROUND(milliseconds / 60000.0, 2) AS duration_minutes
FROM track
WHERE milliseconds > 300000;
Qué hace: Filtra canciones cuya duración (milliseconds) sea mayor a 300 000 ms (5 minutos).
Qué devuelve: El track_id, el nombre de la canción y su duración en minutos, redondeada a 2 decimales.

7. Cantidad de clientes por país
sql
Copiar código
SELECT country,
       COUNT(customer_id) AS total_clients
FROM customer
GROUP BY country
ORDER BY total_clients DESC;
Qué hace: Agrupa a los clientes (GROUP BY) por país (country).
Qué devuelve: El país y el número total de clientes en cada uno, ordenados de mayor a menor cantidad.

8. Empleados con título “Sales Support Agent”
sql
Copiar código
SELECT employee_id,
       first_name,
       last_name,
       title,
       hire_date
FROM employee
WHERE title = 'Sales Support Agent';
Qué hace: Filtra los registros de la tabla employee donde el título (title) sea "Sales Support Agent".
Qué devuelve: El ID, nombre, apellido, cargo y fecha de contratación de esos empleados.

9. Top 10 canciones más largas
sql
Copiar código
SELECT track_id,
       name,
       ROUND(milliseconds / 60000.0, 2) AS duration_minutes
FROM track
ORDER BY milliseconds DESC
LIMIT 10;
Qué hace: Ordena las canciones por duración (milliseconds) de mayor a menor.
Qué devuelve: Las 10 canciones más largas con su duración convertida a minutos y redondeada a 2 decimales.

10. Clientes cuyo apellido empieza con “S”
sql
Copiar código
SELECT customer_id,
       first_name,
       last_name,
       country
FROM customer
WHERE last_name LIKE 'S%';
Qué hace: Filtra los clientes cuyo apellido (last_name) comienza con la letra S usando LIKE.
Qué devuelve: El ID, nombre, apellido y país de todos los clientes que cumplen esta condición.
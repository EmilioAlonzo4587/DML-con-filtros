-- 1. Clientes de Brasil (usa UPPER y ORDER BY)
SELECT UPPER(first_name) AS first_name,
       UPPER(last_name)  AS last_name,
       email
FROM customer
WHERE country = 'Brazil'
ORDER BY last_name ASC;


-- 2. Álbumes del artista AC/DC (usa JOIN))
SELECT a.title
FROM album a
JOIN artist ar ON a.artist_id = ar.artist_id
WHERE ar.name = 'AC/DC';


-- 3. Canciones que contengan “love” (usa ILIKE y LENGTH)
SELECT track_id,
       name,
       LENGTH(name) AS name_length,
       album_id
FROM track
WHERE name ILIKE '%love%';


-- 4. Facturas mayores a 10 dólares (usa ORDER BY descendente)
SELECT invoice_id,
       invoice_date,
       billing_country,
       total
FROM invoice
WHERE total > 10.00
ORDER BY total DESC;


-- 5. Los 5 clientes más recientes (usa ORDER BY y LIMIT)
SELECT customer_id,
       first_name,
       last_name,
       country
FROM customer
ORDER BY customer_id DESC
LIMIT 5;


-- 6. Canciones de más de 5 minutos (usa operación matemática + ROUND)
SELECT track_id,
       name,
       ROUND(milliseconds / 60000.0, 2) AS duration_minutes
FROM track
WHERE milliseconds > 300000;


-- 7. Cantidad de clientes por país (usa GROUP BY y ORDER BY)
SELECT country,
       COUNT(customer_id) AS total_clients
FROM customer
GROUP BY country
ORDER BY total_clients DESC;


-- 8. Empleados con título “Sales Support Agent”
SELECT employee_id,
       first_name,
       last_name,
       title,
       hire_date
FROM employee
WHERE title = 'Sales Support Agent';


-- 9. Top 10 canciones más largas (usa operación matemática, ORDER BY, LIMIT)
SELECT track_id,
       name,
       ROUND(milliseconds / 60000.0, 2) AS duration_minutes
FROM track
ORDER BY milliseconds DESC
LIMIT 10;


-- 10. Clientes cuyo apellido empieza con “S” (usa LIKE)
SELECT customer_id,
       first_name,
       last_name,
       country
FROM customer
WHERE last_name LIKE 'S%';
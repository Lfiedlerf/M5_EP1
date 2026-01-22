-- 1. Todos los clientes con rut 13133133-3.
-- Uso de igualdad estricta (=).
SELECT * FROM clientes
WHERE rut = '13133133-3';

-- 2. Todos los clientes mayores de 25 años.
-- Uso de operador de comparación (>).
SELECT * FROM clientes
WHERE edad > 25;

-- 3. Todos los clientes que no se llamen “Mario”.
-- Uso de NOT ILIKE para ignorar mayúsculas/minúsculas (case insensitive).
SELECT * FROM clientes
WHERE nombre NOT ILIKE 'mario';

-- 4. Todos los clientes con rut empezado en 13.
-- El comodín % al final indica "cualquier cosa después del 13".
SELECT * FROM clientes
WHERE rut LIKE '13%';

-- 5. Todos los clientes con nombre finalizado en a.
-- Usamos ILIKE por si algún nombre termina en 'A' mayúscula.
SELECT * FROM clientes
WHERE nombre ILIKE '%a';

-- 6. Todos los clientes con nombre empezado en P y edad mayor a 34.
-- Uso del operador lógico AND (ambas condiciones deben ser verdaderas).
SELECT * FROM clientes
WHERE nombre ILIKE 'P%' AND edad > 34;

-- 7. Todos los clientes con rut empezado en 1, nombre no empezado en M y edad menor a 40.
-- Combinación de tres condiciones con AND.
SELECT * FROM clientes
WHERE rut LIKE '1%'
  AND nombre NOT ILIKE 'M%'
  AND edad < 40;

-- 8. Filtro complejo con OR, IN y BETWEEN.
-- NOTA: Los paréntesis en el OR son obligatorios por la precedencia de operadores.
SELECT * FROM clientes
WHERE (rut LIKE '13%' OR rut LIKE '%1')
  AND nombre IN ('Diego','Mario','Pato','Pepa')
  AND edad BETWEEN 20 AND 80;
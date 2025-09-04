SELECT COUNT(*) FROM tabla_de_clientes;

-- Llamamos a todos los clientes que tenemos
SELECT DISTINCT A.DNI, A.NOMBRE, B.DNI FROM 
tabla_de_clientes A
INNER JOIN facturas B ON A.DNI = B.DNI;

-- LEFT JOIN: Mantiene todos los registros de la tabla de
-- la izquierda y devuelve únicamente los correspondientes
-- a la tabla de la derecha.
SELECT DISTINCT A.DNI, A.NOMBRE, A.CIUDAD, B.DNI FROM 
tabla_de_clientes A
LEFT JOIN facturas B ON A.DNI = B.DNI
WHERE B.DNI IS NULL;

-- RIGHT JOIN: Lo mismo que el left pero en la derecha
SELECT DISTINCT B.DNI, B.NOMBRE, B.CIUDAD, A.DNI FROM 
facturas A
RIGHT JOIN tabla_de_clientes B ON A.DNI = B.DNI
WHERE A.DNI IS NULL;

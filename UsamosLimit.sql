SELECT * FROM tabla_de_productos;

SELECT * FROM tabla_de_productos LIMIT 5;

SELECT * FROM tabla_de_productos LIMIT 5,4;

-- LIMIT nos sirve para limitar la cantidad de registros que queremos que nos devuelva nuestra consulta
-- Cuando sólo usamos un numero después del LIMIT, estamos indicando la cantidad de registros que 
-- queremos que nos devuelva la consulta
-- Cuando usamos dos numeros después del LIMIT, estamos indicando con el primero, a partir de que indice
-- de registro nos va a entregar los registros que queremos, y el segundo número nos indica la cantidad
-- de registros que queremos obtener.

SELECT * FROM facturas  WHERE FECHA_VENTA = '2017-01-01' LIMIT 10;
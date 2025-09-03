USE jugos_ventas;

-- Ésta consulta llama las columnas de estado y limite de credito
-- pero, en el limite de credito hace una suma de todos los valores 
-- que correspondan a cada estado estado para dejar un solo registro 
-- por estado y mostrar el limite de credito total.
 SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL 
 FROM tabla_de_clientes GROUP BY ESTADO;
 
-- sirve para agrupar filas que tienen valores iguales en una o varias columnas 
-- y luego poder aplicarles funciones de agregación como:
-- COUNT() → contar
-- SUM() → sumar
-- AVG() → promedio
-- MIN() → mínimo
-- MAX() → máximo

SELECT ENVASE, PRECIO_DE_LISTA FROM tabla_de_productos;

-- Ésta consulta llama los campos de envase y precio de lista, pero,
-- busca el precio de lista más alto de cada tipo de envase
SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAX FROM 
tabla_de_productos GROUP BY ENVASE;

SELECT ENVASE, COUNT(*) AS PRECIO_MAX FROM 
tabla_de_productos GROUP BY ENVASE;

-- Devuelve el límite de crédito por barrio
SELECT BARRIO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM
tabla_de_clientes GROUP BY BARRIO;

-- Llama el límite de crédito por barrio en todos los barrios de CDMX
SELECT CIUDAD, BARRIO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM
tabla_de_clientes WHERE CIUDAD = 'CIUDAD DE MÉXICO' 
GROUP BY BARRIO;

SELECT CIUDAD, BARRIO, MAX(LIMITE_DE_CREDITO) AS LIMITE FROM
tabla_de_clientes WHERE CIUDAD = 'CIUDAD DE MÉXICO' 
GROUP BY BARRIO;

-- Al parecer hay una condición de sql que hay que cumplir cuando se usa
-- el group by, todas las columnas que estén en el SELECT 
-- también deben de estar en el group by
SELECT CIUDAD, ESTADO, BARRIO, MAX(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes GROUP BY CIUDAD, ESTADO, BARRIO
ORDER BY CIUDAD;

SELECT * FROM items_facturas;
-- Obtiene la cantidad máxima del campo cantidad cuando cumple
-- la condición del codigo del producto
SELECT MAX(CANTIDAD) AS CANTIDAD_MAXIMA 
FROM items_facturas WHERE CODIGO_DEL_PRODUCTO = '1101035';
-- Ésta sólo cuenta todos los registros que cumplan con 
-- las condiciones del codigo de producto y la cantidad
SELECT COUNT(*) FROM items_facturas WHERE 
CODIGO_DEL_PRODUCTO = "1101035" AND CANTIDAD = 99;
-- Ésta consulta cuenta todos los registros que cumplan
-- con la condicion del codigo del producto nada más 
SELECT COUNT(*) FROM items_facturas WHERE 
CODIGO_DEL_PRODUCTO = '1101035';
-- Evaluando tiempos de queries
USE jugos_ventas;
-- 0.016 s = cost 4.05
SELECT CODIGO_DEL_PRODUCTO FROM tabla_de_productos;
-- 0.031 s = cost 53873.13
SELECT A.CODIGO_DEL_PRODUCTO, C.CANTIDAD FROM tabla_de_productos A INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO;
-- 0.015 s = cost 177493.88
SELECT A.CODIGO_DEL_PRODUCTO, C.CANTIDAD, YEAR(FECHA_VENTA) AS AÑO FROM tabla_de_productos A INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO INNER JOIN FACTURAS B ON C.NUMERO = B.NUMERO;
-- 1.266 s = cost 141235.11
SELECT A.CODIGO_DEL_PRODUCTO, YEAR(FECHA_VENTA) AS AÑO, SUM(CANTIDAD) AS CANTIDAD FROM tabla_de_productos A INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO INNER JOIN FACTURAS B ON C.NUMERO = B.NUMERO GROUP BY A.CODIGO_DEL_PRODUCTO, YEAR(FECHA_VENTA) ORDER BY A.CODIGO_DEL_PRODUCTO, YEAR(FECHA_VENTA);

/*El costo lo obtenemos al ejecutar el siguiente comando en el cdm
**obvio primero debemos de entrar a mysql desde el cmd para poder ejecutarlo
EXPLAIN FORMAT = JSON {QUERY} \G
Y esto nos dará el costo del query
*/
-- INNER JOIN: Devuelve únicamente los registros 
-- con llaves correspondientes
SELECT * FROM tabla_de_vendedores A 
INNER JOIN facturas B
ON A.MATRICULA = B.MATRICULA;

SELECT A.NOMBRE, B.MATRICULA, COUNT(*) AS VENTAS 
FROM tabla_de_vendedores A 
INNER JOIN facturas B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.NOMBRE, B.MATRICULA;

SELECT YEAR(FECHA_VENTA), SUM(CANTIDAD * PRECIO) 
AS FACTURACION FROM facturas F INNER JOIN 
items_facturas IFa 
ON F.NUMERO = IFa.NUMERO
GROUP BY YEAR(FECHA_VENTA);

-- CROSS JOIN: Devuelve el producto cartesiano de los 
-- registros de las tablas (hace una combinación
-- de todos los registros del campo seleccionado
-- de una tabla con todos los registros del campo
-- seleccionado de la otra)

SELECT A.NOMBRE, B.MATRICULA, COUNT(*) AS VENTAS 
FROM tabla_de_vendedores A, facturas B
WHERE A.MATRICULA = B.MATRICULA
GROUP BY A.NOMBRE, B.MATRICULA;
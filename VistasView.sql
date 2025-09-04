-- VIEW: Es una tabla lógica que resulta de
-- una consulta que puede ser usada posteriormente
-- en cualquier otra consulta. Tiene un costo alto de 
-- procesamiento porque siempre que se invoca una VIEW, 
-- se ejecuta su consulta (similar a una subconsulta)

SELECT ENVASE, MAX(PRECIO_DE_LISTA)
AS PRECIO_MAX FROM tabla_de_productos
GROUP BY ENVASE;

SELECT X.ENVASE, X.PRECIO_MAX FROM
vw_envases_grandes X
WHERE PRECIO_MAX >= 10;

SELECT A.NOMBRE_DEL_PRODUCTO, A.ENVASE, A.PRECIO_DE_LISTA,
B.PRECIO_MAX FROM tabla_de_productos A
INNER JOIN vw_envases_grandes B
ON A.ENVASE = B.ENVASE;
 
SELECT A.NOMBRE_DEL_PRODUCTO, A.ENVASE, A.PRECIO_DE_LISTA,
((A.PRECIO_DE_LISTA/B.PRECIO_MAX)-1)*100 AS PORCENTAJE_VAR
FROM tabla_de_productos A
INNER JOIN vw_envases_grandes B
ON A.ENVASE = B.ENVASE;
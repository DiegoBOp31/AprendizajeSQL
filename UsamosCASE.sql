USE jugos_ventas;
-- CASE
-- Realiza un test en uno o más campos y, dependiendo
-- del resultado, obtendremos un valor específico

SELECT NOMBRE_DEL_PRODUCTO, PRECIO_DE_LISTA,
CASE
	WHEN PRECIO_DE_LISTA >= 12 THEN 'COSTOSO'
    WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'ASEQUIBLE'
    ELSE 'BARATO'
END AS PRECIO
FROM tabla_de_productos;

-- La consulta filtra productos de 700 ml, luego 
-- clasifica su precio en COSTOSO/ASEQUIBLE/BARATO, 
-- agrupa por envase+sabor+categoría y muestra el precio
-- mínimo de cada grupo.
SELECT ENVASE, SABOR,
CASE
	WHEN PRECIO_DE_LISTA >= 12 THEN 'COSTOSO'
    WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'ASEQUIBLE'
    ELSE 'BARATO'
END AS PRECIO, MIN(PRECIO_DE_LISTA) AS PRECIO_MIN
FROM tabla_de_productos
WHERE TAMANO = '700 ml'
GROUP BY ENVASE, SABOR,
CASE
	WHEN PRECIO_DE_LISTA >= 12 THEN 'COSTOSO'
    WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'ASEQUIBLE'
    ELSE 'BARATO'
END
ORDER BY ENVASE;

SELECT NOMBRE,
CASE 
    WHEN YEAR(fecha_de_nacimiento) < 1990 THEN 'Viejos'
    WHEN YEAR(fecha_de_nacimiento) >= 1990 
    AND YEAR(fecha_de_nacimiento) <= 1995 THEN 'Jóvenes' 
    ELSE 'Niños' 
END AS CLASIFICACION_EDAD
FROM tabla_de_clientes;
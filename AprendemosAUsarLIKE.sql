USE jugos_ventas;

-- LIKE funciona como un filtro dentro del campo que estamos buscando
-- primero debemos de llamar la tabla en la que vamos a buscar, 
-- después el campo en el que vamos a buscar un registro
-- y después del LIKE ponemos lo que queremos buscar entre comillas simples ''
-- y podemos poner la cadena que buscamos entre %, por ejemplo.

-- Esta consulta busca todos los productos que tengan la palabra
-- manzana al final de la cadena de sabor
SELECT * FROM tabla_de_productos WHERE SABOR LIKE '%manzana';

-- Esta consulta busca todos los productos que tengan los caracteres 
-- nzana al final de la cadena de sabor
SELECT * FROM tabla_de_productos WHERE SABOR LIKE '%nzana' AND 
ENVASE = 'Botella PET';

-- Esta consulta busca todos los clientes que tengan los caracteres
-- ez al final de la cadena de Nombre
SELECT * FROM tabla_de_clientes WHERE NOMBRE LIKE '%ez';

-- También se puede usar con caracteres al principio así, y traer los 
-- registros que contengan esos caracteres al principio de la cadena
SELECT * FROM tabla_de_clientes WHERE NOMBRE LIKE 'Ma%';

-- Y también se puede usar con los caracteres entre %, indicando que 
-- esos caracteres están dentro de la cadena pero sin especificar en 
-- qué parte, así
SELECT * FROM tabla_de_clientes WHERE NOMBRE LIKE '%ena%';
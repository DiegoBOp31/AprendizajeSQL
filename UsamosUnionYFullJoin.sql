-- UNION permite unir 2 o más tablas
-- (implícitamente ejecuta DISTINCT)
SELECT DISTINCT BARRIO FROM tabla_de_clientes;
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

-- Devuelve todos los barrios sin repetirlos
SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

-- Devuelve todos los barrios pero repitiendolos
SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION ALL
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

-- FULL JOIN
SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, 
tabla_de_clientes.BARRIO, tabla_de_vendedores.NOMBRE,
tabla_de_vendedores.VACACIONES
FROM tabla_de_clientes
LEFT JOIN tabla_de_vendedores 
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO
UNION
SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, 
tabla_de_clientes.BARRIO, tabla_de_vendedores.NOMBRE,
tabla_de_vendedores.VACACIONES
FROM tabla_de_clientes
RIGHT JOIN tabla_de_vendedores 
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;
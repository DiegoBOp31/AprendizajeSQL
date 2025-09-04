SELECT DISTINCT * FROM tabla_de_clientes;
SELECT DISTINCT * FROM tabla_de_vendedores;

-- qué clientes son atendidos por qué vendedores
-- y en qué barrio
SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, 
tabla_de_clientes.BARRIO, tabla_de_vendedores.NOMBRE,
tabla_de_vendedores.VACACIONES
FROM tabla_de_clientes
RIGHT JOIN tabla_de_vendedores 
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

-- FULL JOIN: Mantiene y devuelve todos los registros
-- de las tablas
SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, 
tabla_de_clientes.BARRIO, tabla_de_vendedores.NOMBRE,
tabla_de_vendedores.VACACIONES
FROM tabla_de_clientes
FULL JOIN tabla_de_vendedores 
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

-- CROSS JOIN: Devuelve el producto cartesiano de los 
-- registros de las tablas (hace una combinación
-- de todos los registros del campo seleccionado
-- de una tabla con todos los registros del campo
-- seleccionado de la otra)
SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, 
tabla_de_clientes.BARRIO, tabla_de_vendedores.NOMBRE,
tabla_de_vendedores.VACACIONES
FROM tabla_de_clientes, tabla_de_vendedores
WHERE tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;
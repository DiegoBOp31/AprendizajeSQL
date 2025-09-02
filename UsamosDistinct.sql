USE jugos_ventas;

SELECT ENVASE, TAMANO FROM tabla_de_productos;

SELECT DISTINCT ENVASE, TAMANO FROM tabla_de_productos;

SELECT DISTINCT ENVASE, TAMANO, SABOR FROM tabla_de_productos
WHERE SABOR = 'Naranja';

-- DISTINCT sirve para filtrar registros duplicados, es decir, 
-- si hay registros con la misma información en todos sus campos, 
-- cuando usamos distinct sólo obtenemos una sola vez ese registro
-- y no todas las veces que se repite

SELECT * FROM tabla_de_clientes;

SELECT DISTINCT BARRIO FROM tabla_de_clientes WHERE
CIUDAD = 'Ciudad de México';
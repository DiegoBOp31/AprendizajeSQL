USE JUGOS_VENTAS;

SELECT * FROM tabla_de_productos WHERE SABOR = 'Mango' AND TAMANO = '470 ml';

SELECT * FROM tabla_de_productos WHERE SABOR = 'Mango' OR TAMANO = '470 ml';

SELECT * FROM tabla_de_productos WHERE NOT (SABOR = 'Mango') OR TAMANO = '470 ml';

SELECT * FROM tabla_de_productos WHERE NOT (SABOR = 'Mango' AND TAMANO = '470 ml');

SELECT * FROM tabla_de_productos WHERE SABOR = 'Mango' AND NOT (TAMANO = '470 ml');

-- Estas dos consultas son exactamente lo mismo, el IN funciona como un OR
SELECT * FROM tabla_de_productos WHERE SABOR IN ('Mango','Uva');
SELECT * FROM tabla_de_productos WHERE SABOR = 'Mango' OR SABOR = 'Uva';


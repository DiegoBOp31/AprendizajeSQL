USE jugos;

UPDATE tbproductos SET producto = '812829', envase = 'Lata'
WHERE volumen = '350 ml';

UPDATE tbproductos SET sabor = 'Lima/Limón', precio = 4.90
WHERE producto = '1041119';

UPDATE tbproductos SET precio = 28.51
WHERE producto = '695594';

SELECT * FROM tbproductos;
SELECT DISTINCT SABOR FROM tabla_de_productos;

/*
Maracuyá, Limón, Frutilla, Uva = Rico
Mango, Sandía = Normal
Los demás = Comunes
*/

SELECT SABOR FROM tabla_de_productos
WHERE CODIGO_DEL_PRODUCTO = '1002767';

CALL define_sabor('1002767');
CALL define_sabor('544931');
CALL define_sabor('1040107');

/*CREATE DEFINER=`root`@`localhost` PROCEDURE `define_sabor`(vcodigo VARCHAR(20))
BEGIN
	DECLARE vsabor VARCHAR(20);
    SELECT SABOR INTO vsabor FROM tabla_de_productos
	WHERE CODIGO_DEL_PRODUCTO = vcodigo;
    CASE vsabor
    WHEN 'Maracuyá' THEN SELECT 'MUY RICO';
    WHEN 'Limón' THEN SELECT 'MUY RICO';
    WHEN 'Frutilla' THEN SELECT 'MUY RICO';
    WHEN 'Mango' THEN SELECT 'Normal';
    WHEN 'Sandía' THEN SELECT 'Normal';
    ELSE SELECT 'Jugos comunes';
	END CASE;
END*/
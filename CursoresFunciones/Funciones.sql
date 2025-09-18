-- ACTIVAMOS EL PODER CREAR FUNCIONES
SET GLOBAL log_bin_trust_function_creators = 1;

SELECT f_define_sabor('Maracuyá');

SELECT NOMBRE_DEL_PRODUCTO, SABOR, f_define_sabor(SABOR) 
AS tipo
FROM tabla_de_productos;

SELECT NOMBRE_DEL_PRODUCTO, SABOR FROM tabla_de_productos
WHERE f_define_sabor(SABOR) = 'MUY RICO';

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `f_define_sabor`(vsabor VARCHAR(40)) RETURNS varchar(40) CHARSET utf8mb4
BEGIN
DECLARE vretorno VARCHAR(40) DEFAULT '';
    CASE vsabor
    WHEN 'Maracuyá' THEN SET vretorno = 'MUY RICO';
    WHEN 'Limón' THEN SET vretorno = 'MUY RICO';
    WHEN 'Frutilla' THEN SET vretorno = 'MUY RICO';
    WHEN 'Mango' THEN SET vretorno = 'Normal';
    WHEN 'Sandía' THEN SET vretorno = 'Normal';
    ELSE SET vretorno = 'Jugos comunes';
	END CASE;
RETURN vretorno;
END
*/
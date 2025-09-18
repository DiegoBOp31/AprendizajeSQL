SELECT * FROM tabla_de_productos;

SELECT SABOR FROM tabla_de_productos
WHERE CODIGO_DEL_PRODUCTO='1078680';

CALL mostrar_sabor('1101035');

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrar_sabor`(vcodigo VARCHAR(15))
BEGIN
	DECLARE vsabor VARCHAR(20);
	SELECT SABOR INTO vsabor FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = vcodigo;
    SELECT vsabor;
END
*/
SELECT * FROM tabla_de_productos;

/*
precio > 12 producto costoso
precio > 7 y precio < 12 producto asequible
precio < 7 producto barato
*/

SELECT PRECIO_DE_LISTA FROM tabla_de_productos
WHERE CODIGO_DEL_PRODUCTO = '1000800';

CALL precio_producto('1000800');
CALL precio_producto('1013793');
CALL precio_producto('1096818');

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `precio_producto`(vcodigo VARCHAR(20))
BEGIN
	DECLARE vresultado VARCHAR(40);
    DECLARE vprecio FLOAT;
    SELECT PRECIO_DE_LISTA INTO vprecio FROM tabla_de_productos
	WHERE CODIGO_DEL_PRODUCTO = vcodigo;
    
    IF vprecio >= 12
    THEN SET vresultado = "Producto costoso";
    ELSEIF vprecio >=7 AND vprecio <12
    THEN SET vresultado = 'Producto asequible';
    ELSE SET vresultado = 'Producto barato';
    END IF;
    SELECT vresultado;
END
*/

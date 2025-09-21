-- Calculamos la facturación en una fecha específica
SELECT A.FECHA, SUM(B.CANTIDAD*B.PRECIO) AS FACTURACION
FROM facturas A
INNER JOIN items B
ON A.NUMERO = B.NUMERO
WHERE A.FECHA = '2025-06-15'
GROUP BY A.FECHA;

CALL sp_venta('2025-06-15',30,100);

-- Calculamos el impuesto pagado por año
SELECT YEAR(F.FECHA) AS AÑO, 
CEIL(SUM(F.IMPUESTO * (I.CANTIDAD * I.PRECIO))) 
AS RESULTADO
FROM facturas F
INNER JOIN items I ON F.NUMERO = I.NUMERO
WHERE YEAR(F.FECHA) = 2015
GROUP BY YEAR(F.FECHA);

SELECT DISTINCT YEAR(FECHA) FROM facturas;

SELECT COUNT(*) FROM productos;

/*SP CORREGIDO PARA EVITAR DUPLICIDAD
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_venta`(fecha DATE, maxitems INT, maxcantidad INT)
BEGIN
DECLARE vcliente VARCHAR(11);
DECLARE vproducto VARCHAR(10);
DECLARE vvendedor VARCHAR(5);
DECLARE vcantidad, vitems, vnfactura INT;
DECLARE vprecio FLOAT;
DECLARE vcontador INT DEFAULT 1;
DECLARE vnumitems INT;

SELECT MAX(NUMERO) + 1 INTO vnfactura FROM facturas;
SET vcliente = f_cliente_aleatorio();
SET vvendedor = f_vendedor_aleatorio();

INSERT INTO facturas (NUMERO,FECHA,DNI,MATRICULA,IMPUESTO) 
VALUES (vnfactura, fecha,vcliente,vvendedor,0.16);

SET vitems = f_aleatorio(1,maxitems);
WHILE vcontador <= vitems
DO
SET vproducto= f_producto_aleatorio();
SELECT COUNT(*) INTO vnumitems FROM items 
WHERE CODIGO = vproducto AND NUMERO = vnfactura;

IF vnumitems = 0 THEN
	SET vcantidad = f_aleatorio(1,maxcantidad);
	SELECT PRECIO INTO vprecio FROM productos WHERE CODIGO = vproducto;

	INSERT INTO items(NUMERO, CODIGO,CANTIDAD,PRECIO) 
	VALUES (vnfactura,vproducto,vcantidad,vprecio);
END IF;

SET vcontador = vcontador + 1;
END WHILE;
END
*/
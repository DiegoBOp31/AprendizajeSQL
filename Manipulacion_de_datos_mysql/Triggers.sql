-- Creamos las tablas necesarias
CREATE TABLE tb_facturacion(
FECHA DATE,
VENTA_TOTAL FLOAT
);
CREATE TABLE `tb_factura1` (
  `NUMERO` varchar(5) NOT NULL,
  `FECHA` date DEFAULT NULL,
  `DNI` varchar(11) NOT NULL,
  `MATRICULA` varchar(5) NOT NULL,
  `IMPUESTO` float DEFAULT NULL,
  PRIMARY KEY (`NUMERO`),
  KEY `FK_CLIENTE1` (`DNI`),
  KEY `FK_VENDEDOR1` (`MATRICULA`),
  CONSTRAINT `FK_CLIENTE1` FOREIGN KEY (`DNI`) REFERENCES `tb_cliente` (`DNI`),
  CONSTRAINT `FK_VENDEDOR1` FOREIGN KEY (`MATRICULA`) REFERENCES `tb_vendedor` (`MATRICULA`)
);
CREATE TABLE `tb_items_facturas1` (
  `NUMERO` varchar(5) NOT NULL,
  `CODIGO` varchar(10) NOT NULL,
  `CANTIDAD` int DEFAULT NULL,
  `PRECIO` float DEFAULT NULL,
  PRIMARY KEY (`NUMERO`,`CODIGO`),
  KEY `FK_PRODUCTO1` (`CODIGO`),
  CONSTRAINT `FK_FACTURA1` FOREIGN KEY (`NUMERO`) REFERENCES `tb_factura` (`NUMERO`),
  CONSTRAINT `FK_PRODUCTO1` FOREIGN KEY (`CODIGO`) REFERENCES `tb_producto` (`CODIGO`)
);

-- Elimiar una Foreign key
ALTER TABLE tb_items_facturas1
DROP FOREIGN KEY FK_FACTURA1;

-- Agregar una foreign key
ALTER TABLE tb_items_facturas1
ADD CONSTRAINT FK_FACTURA1
FOREIGN KEY (NUMERO)
REFERENCES tb_factura1(NUMERO);

SELECT * FROM tb_items_facturas1;
SELECT * FROM tb_factura1;
SELECT * FROM tb_facturacion;

INSERT INTO tb_factura1 
VALUES('0103','2021-01-10','1471156710','235',0.10);
INSERT INTO tb_items_facturas1 
VALUES('0103','1002767',200,25),
('0103','1004327',300,25),('0103','1013793',400,25);

-- Consultamos la facturación total de una fecha
SELECT FECHA, SUM(CANTIDAD*PRECIO) AS VENTA_TOTAL
FROM tb_factura1 A
INNER JOIN tb_items_facturas1 B ON A.NUMERO= B.NUMERO
GROUP BY A.FECHA;

-- Eliminar un trigger
DROP TRIGGER IF EXISTS TG_FACTURACION_INSERT;

-- Crear un trigger
DELIMITER // 
-- la // nos indica en donde empieza y donde termina el trigger
CREATE TRIGGER TG_FACTURACION_INSERT
AFTER INSERT ON tb_items_facturas1
FOR EACH ROW BEGIN
	DELETE FROM tb_facturacion;
	INSERT INTO tb_facturacion 
	SELECT FECHA, SUM(CANTIDAD*PRECIO) AS VENTA_TOTAL
	FROM tb_factura1 A
	INNER JOIN tb_items_facturas1 B ON A.NUMERO= B.NUMERO
	GROUP BY A.FECHA;
END //
-- Ingresando datos en nuestras tablas

USE ventas_jugos;

INSERT INTO tb_producto (CODIGO, DESCRIPCION, SABOR, TAMANO, ENVASE,
PRECIO_LISTA) VALUES (
'1040107', 'Light', 'Sandía', '350 ml', 'Lata', 4.56
);

SELECT * FROM TB_PRODUCTO;

INSERT INTO tb_producto (CODIGO, SABOR, DESCRIPCION, TAMANO, ENVASE,
PRECIO_LISTA) VALUES (
'1040108', 'Guanábana', 'Light', '350 ml', 'Lata', 4.00
);

INSERT INTO tb_producto VALUES (
'1040109', 'Light', 'Asaí', '350 ml', 'Lata', 5.60),
('1040110', 'Light', 'Manzana', '350 ml', 'Lata', 6.00),
('1040111', 'Light', 'Mango', '350 ml', 'Lata', 3.50);
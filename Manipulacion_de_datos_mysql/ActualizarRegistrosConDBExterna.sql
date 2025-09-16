SELECT * FROM tb_vendedor;

SELECT * FROM jugos_ventas.tabla_de_vendedores;

/* Juntamos los datos de las dos tablas a partir de
La matrícula, y usamos substring para usar sólo los
números de la matrícula que nos importan */
SELECT* FROM tb_vendedor A 
INNER JOIN jugos_ventas.tabla_de_vendedores B
ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3);

/* Usamos los datos de una tabla para actualizar
los de nuestra tabla principal*/
UPDATE tb_vendedor A 
INNER JOIN jugos_ventas.tabla_de_vendedores B
ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3)
SET A.DE_VACACIONES = B.VACACIONES;
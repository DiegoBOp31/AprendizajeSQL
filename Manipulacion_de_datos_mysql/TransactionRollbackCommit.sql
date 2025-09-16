INSERT INTO `ventas_jugos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`DE_VACACIONES`)
VALUES
('260',
'Josesito Pérez',
'Del Valle',
0.14,
'2015-06-14',
0);

SELECT * FROM tb_vendedor;

UPDATE tb_vendedor SET COMISION= COMISION*1.05;

-- Crea el punto de control
START TRANSACTION;
-- Regresa la tabla al último punto de control
ROLLBACK;
-- Confirma todos los cambios hechos en la tabla
COMMIT;
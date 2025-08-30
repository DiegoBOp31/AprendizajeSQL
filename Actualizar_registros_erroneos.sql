USE jugos;

SELECT * FROM tabla_de_vendedores;

UPDATE tabla_de_vendedores SET PORCENTAJE_COMISION = 0.11
WHERE MATRICULA = '00236';

UPDATE tabla_de_vendedores SET PORCENTAJE_COMISION = 0.10, NOMBRE = 'Joan Geraldo De la Fonseca Junior'
WHERE MATRICULA = '00233';

UPDATE tabla_de_vendedores SET PORCENTAJE_COMISION = 0.08
WHERE MATRICULA = '00235';
CALL problema_select_into;
-- select into solo sirve para una variable que almacena un solo valor
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `problema_select_into`()
BEGIN
DECLARE vnombre VARCHAR(50);
SELECT NOMBRE INTO vnombre FROM tabla_de_clientes;
SELECT vnombre;
END
*/

CALL cursor1;
/*Éste es nuestro cursor

CREATE DEFINER=`root`@`localhost` PROCEDURE `cursor1`()
BEGIN
DECLARE vnombre VARCHAR(50);
DECLARE c CURSOR FOR SELECT NOMBRE FROM tabla_de_clientes LIMIT 4;
OPEN c;
FETCH c INTO vnombre;
SELECT vnombre;
FETCH c INTO vnombre;
SELECT vnombre;
FETCH c INTO vnombre;
SELECT vnombre;
FETCH c INTO vnombre;
SELECT vnombre;
CLOSE c;
END
*/
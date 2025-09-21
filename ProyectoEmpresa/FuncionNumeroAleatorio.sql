-- MIN = 20 MAX = 250
-- ASÍ OBTENEMOS UN NÚMERO ALEATORIO DENTRO DE UN RANGO
-- (RAND()* (MAX-MIN+1))+MIN
SELECT FLOOR((RAND() * (250-20+1))+20) AS ALEATORIO;

-- Con esto podemos crear funciones
SET GLOBAL log_bin_trust_function_creators = 1;

SELECT f_aleatorio(1,10) AS resultado;

/* Ésta es la función
CREATE DEFINER=`root`@`localhost` FUNCTION `f_aleatorio`(min INT, max INT) RETURNS int
BEGIN
DECLARE vresultado INT;
SELECT FLOOR((RAND() * (max-min+1))+min) INTO vresultado;
RETURN vresultado;
END
*/
SELECT * FROM tabla_de_clientes;

CALL cursor_looping_varios_campos;

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `cursor_looping_varios_campos`()
BEGIN
DECLARE fin_c INT DEFAULT 0;
DECLARE vnombre, vdireccion VARCHAR(250);
DECLARE vbarrio, vciudad, vcp, vestado VARCHAR(150);
DECLARE c CURSOR FOR SELECT NOMBRE, DIRECCION_1, BARRIO,CIUDAD, ESTADO, CP FROM tabla_de_clientes;
-- CONTROLAMOS EL ERROR
DECLARE CONTINUE HANDLER FOR NOT FOUND
SET fin_c = 1;
-- INICIA ABRIENDO EL CURSOR
OPEN c;
WHILE fin_c = 0 DO
	FETCH c INTO vnombre, vdireccion, vbarrio, vciudad, vestado, vcp;
		IF fin_c = 0 
        THEN SELECT CONCAT('Nombre: ',vnombre,' Direccion: ',vdireccion,
        ' Barrio: ', vbarrio, ' Ciudad: ', vciudad, ' Estado: ', vestado, ' CP: ', vcp) AS RESULTADO;
		END IF;
	END WHILE;
CLOSE c;
END
*/
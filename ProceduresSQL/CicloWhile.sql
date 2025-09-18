CREATE TABLE tb_looping(ID INT);
SELECT * FROM tb_looping;

CALL looping(1,10);

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `looping`(vinicial INT, vfinal INT)
BEGIN
DECLARE vcontador INT;
SET vcontador = vinicial;
DELETE FROM tb_looping;
WHILE vcontador <= vfinal
DO
INSERT INTO tb_looping VALUES (vcontador);
SET vcontador = vcontador + 1;
END WHILE;
SELECT * FROM tb_looping;
END
*/

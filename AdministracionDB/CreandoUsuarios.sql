-- Creamos un nuevo usuario administrador con comandos
CREATE USER 'admin02'@'localhost' IDENTIFIED BY 'admin02';
-- Le damos todos los privilegios al usuario nuevo
GRANT ALL PRIVILEGES ON *.* TO 'admin02'@'localhost' WITH GRANT OPTION;

-- Creamos un nuevo usuario con comandos
CREATE USER 'user02'@'localhost' IDENTIFIED BY 'user02';
-- Le damos los privilegios al usuario nuevo
GRANT SELECT, INSERT, UPDATE, DELETE, 
CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE
 ON *.* TO 'user02'@'localhost';
 
 -- Creamos un nuevo usuario de lectura con comandos
CREATE USER 'read01'@'localhost' IDENTIFIED BY 'read01';
-- Le damos los privilegios al usuario nuevo
GRANT SELECT, EXECUTE ON *.* TO 'read01'@'localhost';

 -- Creamos un nuevo usuario de back-up con comandos
CREATE USER 'back01'@'localhost' IDENTIFIED BY 'back01';
-- Le damos los privilegios al usuario nuevo
GRANT SELECT, RELOAD, LOCK TABLES, REPLICATION CLIENT 
ON *.* TO 'back01'@'localhost';

-- Creamos un nuevo usuario administrador generico con comandos
CREATE USER 'admingeneric02'@'%' IDENTIFIED BY 'admingeneric02';
-- Le damos todos los privilegios al usuario nuevo
GRANT ALL PRIVILEGES ON *.* TO 'admingeneric02'@'%' WITH GRANT OPTION;
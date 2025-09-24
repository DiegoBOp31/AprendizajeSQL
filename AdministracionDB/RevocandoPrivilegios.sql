-- Vemos todos los usuarios y sus privilegios
SELECT * FROM mysql.user;

-- Vemos los privilegios del usuario seleccionado
SHOW GRANTS FOR 'user02'@'localhost';

-- Revocamos los privilegios del usuario seleccionado
REVOKE ALL PRIVILEGES,
GRANT OPTION FROM 'user02'@'localhost';
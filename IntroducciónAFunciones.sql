-- Hay documentación de todo esto en la página de 
-- W3schools

SELECT LTRIM("     MySQL es fácil");
SELECT RTRIM("MySQL es fácil      ");
SELECT TRIM("     MySQL es fácil     ");

SELECT CONCAT("MyQSL ", "ES ", "FÁCIL");
SELECT UPPER("mysql es una super herramienta");
SELECT LOWER("MYSQL ES INCREIBLE");

SELECT SUBSTRING("mysql es una base de datos", 10, 10);
SELECT CONCAT(NOMBRE, ": ", DNI) FROM tabla_de_clientes;

SELECT CONCAT(NOMBRE, " - Calle: ", DIRECCION_1, 
" - Barrio: ", BARRIO, " - Ciudad: ", CIUDAD, 
" - Estado: ", ESTADO) AS COMPLETO FROM tabla_de_clientes;
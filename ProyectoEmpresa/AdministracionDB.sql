/*En esta ruta se encuentra la configuración de las conexiones que tengamos
de nuestra base de datos, el archivo se llama connections.xml*/
-- C:\Users\{tu usuario}{\AppData\Roaming\MySQL\Workbench

/*
MySQL se ejcuta en automático cuando arrancamos windows porque así lo 
configuramos en la instalación, para detenerlo debemos ir a los servicios
de windows. Buscarlo como MySQL80 y detenerlo.

los comandos desde la cmd son los siguientes
Detenerlo: net stop mysql80
Iniciarlo: net start mysql80
*/


SHOW GLOBAL STATUS LIKE 'Created_tmp_disk_tables';
SHOW GLOBAL STATUS LIKE 'Created_tmp_tables';
SHOW GLOBAL VARIABLES LIKE 'tmp_table_size';
-- Aumentamos el tamaño de creacion de tablas temporales
-- SET GLOBAL tmp_table_size = 134603008;
/*esta es la ruta del archivo my.ini de las variables de ambiente
C:\ProgramData\MySQL\MySQL Server 8.0
*/


/*MECANISMOS DE ALMACENAMIENTO
*MyISAM*
*InnoDB* por defecto
*MEMORY* todo en ram
*/

CREATE TABLE df_table (ID INT, NOMBRE VARCHAR(100));
-- Cambiamos el mecanismo de almacenamiento de una tabla
ALTER TABLE df_table ENGINE = MyISAM;

-- Creamos una nueva tabla con un mecanismo de almacenamiento diferente
CREATE TABLE df_table1 (ID INT, NOMBRE VARCHAR(100)) ENGINE = MEMORY;

SHOW ENGINES;

CREATE DATABASE base;
USE base;
DROP DATABASE base;

SHOW VARIABLES WHERE Variable_Name LIKE '%dir';
/*
En "datadir" es donde se encuentran todas las bases de datos
que tenemos almacenadas, y las podemos cambiar de lugar en caso 
de ser necesario. También tendríamos que cambiar la ruta del 
archivo my.ini
*/
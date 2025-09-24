-- cost = 8850.35. Con índice 25.90
SELECT * FROM facturas WHERE FECHA_VENTA = '20170101';
ALTER TABLE facturas ADD INDEX(FECHA_VENTA);
-- cost 8863.05
SELECT * FROM facturas1 WHERE FECHA_VENTA = '20170101';

/*PRUEBA DE RENDIMIENDO DESDE CMD
***Primero entramos a la ruta de mysql
C:\Program Files\MySQL\MySQL Server 8.0\bin>
***Después ejecutamos el siguiente comando
(los parámetros pueden variar)
mysqlslap -uroot -p --concurrency=100 --iterations=10 
--create-schema=jugos_ventas 
--query="SELECT * FROM facturas WHERE FECHA_VENTA = '20170101'"
***Ese comando te mide qué tan rápido responde tu servidor 
MySQL cuando 100 usuarios al mismo tiempo quieren consultar 
todas las facturas de una fecha específica.
*/
/* BACK UP LÓGICO
-Exporta estructuras, tablas, rutinas, etc. que al ser
ejecutado crea la base de datos
-Permite editarlo de forma externa
*/

/*BACK UP FÍSICO
- Contienearchivos binarios del sistema pero sin
los comandos respectivos
- No permite editar datos antes de la restauración
*/

/*PASOS PARA HACER UN BACK UP DESDE CMD
1.Entrar a esta  ruta: C:\Program Files\MySQL\MySQL Server 8.0\bin>
2.Ejecutar este comando: 
mysqldump -uroot -p --databases jugos_ventas > c:\Users/{usuario}/OneDrive/Escritorio\jugos_ventas_full.sql
**La ruta depende de cada quién en donde quiera guardar el archivo
** con eso solo respaldamos una db
3. Este comando respalda la base de datos, ignorando una tabla:
mysqldump -uroot -p --databases jugos_ventas --ignore-table jugos_ventas.facturas > c:\Users/{usuario}/OneDrive/Escritorio\jugos_ventas_full.sql
*/
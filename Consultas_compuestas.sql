SELECT * FROM tbcliente;

-- Mayor qué
SELECT * FROM tbcliente WHERE EDAD > 27;
-- Menor que
SELECT * FROM tbcliente WHERE EDAD <= 27;
-- Diferente de 
SELECT * FROM tbcliente WHERE EDAD <> 27;

-- Este filtro de nombres (mayor, menor o diferente) se aplica de forma consecutiva en el orden del alfabeto
-- En este caso llamamos todos los registros que empiecen con las letras consecutivas de Erica
SELECT * FROM tbcliente WHERE NOMBRE > 'Erica Carvajo';

SELECT * FROM tbproducto WHERE PRECIO_LISTA = 28.51;

SELECT * FROM tbproducto WHERE PRECIO_LISTA < 28.51;

SELECT * FROM tbproducto WHERE PRECIO_LISTA BETWEEN 28.49 AND 28.52;
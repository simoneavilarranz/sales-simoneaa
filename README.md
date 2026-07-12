# sales-simoneaa

## Descripción

En este ejercicio se nos proporcionaba un script para crear una tabla "sales" con unos datos. Debíamos generarla dentro de una base de datos MySQL de Docker a través de DBeaver, para a continuación crear una serie de Scripts con los que conseguir los siguientes resultados:  

1. Obtener todos los datos de la columna food category y subcategory
2. Obtener solo las sub categorías que empiezan por la letra "C"
3. Obtener la cantidad total de unidades vendidas
4. Obtener la unidades totales del continente americano

## category-and-sub.sql  

Script sencillo en el que se concatenan dos columnas diferentes utilizando el símbolo ",".

```
SELECT food_category, food_subcategory FROM sales;
```

## sub-start-c.sql  

La etiqueta "LIKE" permite elegir únicamente las celdas en las que se cumpla un criterio específico, en este caso utilizamos 'c%' donde la letra al principio unida al símbolo de "%" que significa "uno, varios o ningún símbolo después de la letra inicial".

```
SELECT food_subcategory FROM sales
WHERE food_subcategory  LIKE 'c%'; 
```

## total-sales.sql  

La etiqueta "SUM()" une todos los valores de una columna, la cual se indica entre los paréntesis, y utilizamos "AS" para asignarle un nombre a la columna del output que indique qué representa.

```
SELECT SUM(unit_sales) AS total_sales FROM sales;
```

## unit-sales-america.sql  

Utilizamos de nuevo "SUM()", y en este caso además empleamos la etiqueta "IN" para indicar que únicamente debe sumar las "unit_sales" de las celdas en las que su valor "continent" sea únicamente los dos países que queremos ver, unidos en un output con el nombre "total_america" gracias a "AS".

```
SELECT SUM(unit_sales) AS total_america
FROM sales s
WHERE s.continent IN ('North America', 'South America');
```

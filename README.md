# sales-simoneaa

## Descripción

En este ejercicio se nos proporcionaba un script para crear una tabla "sales" con unos datos. Debíamos generarla dentro de una base de datos MySQL de Docker a través de DBeaver, para a continuación crear una serie de Scripts con los que conseguir los siguientes resultados:  

1. Obtener todos los datos de la columna food category y subcategory
2. Obtener solo las sub categorías que empiezan por la letra "C"
3. Obtener la cantidad total de unidades vendidas
4. Obtener la unidades totales del continente americano

## Obtener todos los datos de la columna food category y subcategory  

```
SELECT food_category, food_subcategory FROM sales;
```

## Obtener solo las sub categorías que empiezan por la letra "C"  

```
SELECT food_subcategory FROM sales
WHERE food_subcategory  LIKE 'c%'; 
```

## Obtener la cantidad total de unidades vendidas  

```
SELECT SUM(unit_sales) AS total_sales FROM sales;
```

## Obtener la unidades totales del continente americano  

```
SELECT SUM(unit_sales) AS total_america
FROM sales s
WHERE s.continent IN ('North America', 'South America');
```

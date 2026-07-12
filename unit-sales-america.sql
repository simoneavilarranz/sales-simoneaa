SELECT SUM(unit_sales) AS total_america
FROM sales s
WHERE s.continent IN ('North America', 'South America');
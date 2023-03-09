SELECT p.sku, p.product_name
FROM product p
LEFT JOIN invoice_item i ON p.id = i.product_id
WHERE i.quantity IS NULL
ORDER BY p.sku ASC


SELECT c.country_name, d.total_inv, ROUND(d.average, 6)
FROM (SELECT ci.country_id, COUNT(i.id) as total_inv, AVG(i.total_price) AS average
	FROM city ci
	INNER JOIN customer cu ON ci.id = cu.city_id
	INNER JOIN invoice i ON i.customer_id = cu.id
	GROUP BY ci.country_id
	HAVING average > (SELECT AVG(i.total_price) FROM invoice i)) d
LEFT JOIN country c ON c.id = d.country_id
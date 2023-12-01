/* 1 */
SELECT *
FROM orders
WHERE ship_country LIKE 'U%'
/* 2 */
SELECT order_id, customer_id, freight, ship_country
FROM orders
WHERE ship_country LIKE 'N%'
ORDER BY freight DESC
LIMIT 10
/* 3 */
SELECT first_name, last_name, home_phone, region
FROM employees
WHERE region IS NULL
/* 4 */
SELECT COUNT(*)
FROM customers
WHERE region IS NOT NULL
/* 5 */
SELECT COUNT(*),country
FROM suppliers
GROUP BY country
ORDER BY COUNT(*) DESC
/* 6 */
SELECT SUM(freight), ship_country
FROM orders
WHERE ship_region IS NOT NULL
GROUP BY ship_country
HAVING SUM(freight) > 2750
ORDER BY SUM(freight) DESC
/* 7 */
SELECT  country
FROM suppliers 
UNION
SELECT country
FROM customers 
ORDER BY country
/* 8 */
SELECT  country
FROM employees
INTERSECT
SELECT country
FROM customers 
INTERSECT
SELECT  country
FROM suppliers 
/* 9 */
SELECT country
FROM customers 
INTERSECT
SELECT  country
FROM suppliers 
EXCEPT
SELECT  country
FROM employees 

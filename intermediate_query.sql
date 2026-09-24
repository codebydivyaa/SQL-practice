-- count
SELECT COUNT(*) AS total_products
FROM products;


-- AVERAGE
SELECT AVG(price) AS average_price
FROM products;


-- GROUP BY 
SELECT category, COUNT(*) AS total_products
FROM products
GROUP BY category;

-- HAVING  
SELECT category, COUNT(*) AS total_products
FROM products
GROUP BY category
HAVING COUNT(*) >= 2;
 

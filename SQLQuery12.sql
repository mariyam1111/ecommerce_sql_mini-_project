-- Top 5 Customers by Total Spending
SELECT TOP 5 c.name, SUM(p.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
WHERE p.payment_status='Success'
GROUP BY c.name
ORDER BY total_spent DESC;

SELECT TOP 5
    pr.name, 
    SUM(o.quantity) AS total_quantity
FROM products pr
JOIN orders o ON pr.product_id = o.product_id
GROUP BY pr.name
ORDER BY total_quantity DESC;

SELECT 
    pr.category, 
    SUM(p.amount) AS revenue
FROM products pr
JOIN orders o ON pr.product_id = o.product_id
JOIN payments p ON o.order_id = p.order_id
WHERE p.payment_status='Success'
GROUP BY pr.category
ORDER BY revenue DESC;


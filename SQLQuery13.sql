SELECT 
    payment_method, 
    SUM(amount) AS total_revenue
FROM payments
WHERE payment_status='Success'
GROUP BY payment_method
ORDER BY total_revenue DESC;

SELECT 
    AVG(amount) AS avg_order_value
FROM payments
WHERE payment_status='Success';

SELECT 
    COUNT(*) AS failed_payments
FROM payments
WHERE payment_status <> 'Success';

SELECT 
    c.city, 
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY total_orders DESC;

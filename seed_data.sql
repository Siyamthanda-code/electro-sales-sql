SELECT 
    p.product_name, 
    SUM(s.quantity) AS Total_Sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY Total_Sold DESC;
SELECT first_name, last_name, SUM(total_amount) AS top_spending
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY last_name
ORDER BY top_spending DESC;
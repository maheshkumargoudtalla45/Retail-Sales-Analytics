SELECT
    store_id,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(sales_amount) AS total_revenue,
    ROUND(AVG(sales_amount), 2) AS avg_transaction_value
FROM retail_sales
GROUP BY store_id
ORDER BY total_revenue DESC;

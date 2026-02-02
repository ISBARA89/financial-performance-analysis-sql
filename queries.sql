-- Monthly revenue & profit trend
SELECT
  DATE_TRUNC('month', sale_date)
  SUM(revenue) AS total_revenue,
  SUM(revenue - expenses) AS total_profit
FROM sales
GROUP BY month
ORDER BY month;

-- Profit by product
SELECT
  product_name,
  SUM(revenue - expenses) AS total_product
FROM sales
GROUP BY product_name
ORDER BY total_profit DESC;

-- Average profit per sale
SELECT
  product_name,
  AVG(revenue - expenses) AS avg_profit_per_sale
FROM sales
GROUP BY product_name
ORDER BY avg_profit_per_sale DESC;

-- Cost analysis
SELECT
  cost_type,
  SUM(cost_amount) AS total_cost
FROM costs
GROUP BY cost_type
ORDER BY total_cost DESC;   

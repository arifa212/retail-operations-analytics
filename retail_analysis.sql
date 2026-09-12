USE retail_analytics;

-- Dataset preview
SELECT *
FROM retail_operations_starter
LIMIT 10;


-- Revenue
SELECT
    Category,
    SUM(revenue_clean) AS total_revenue
FROM retail_operations_starter
GROUP BY Category
ORDER BY total_revenue DESC;


-- Transactions per day
SELECT
    Day,
    COUNT(`ï»¿Transaction ID`) AS transaction_count
FROM retail_operations_starter
GROUP BY Day
ORDER BY transaction_count DESC;


-- Waste
SELECT
    Category,
    SUM(`Waste Quantity`) AS total_waste
FROM retail_operations_starter
GROUP BY Category
ORDER BY total_waste DESC;


-- Check out times by hour
SELECT
    Hours,
    ROUND(AVG(`Checkout Wait (mins)`), 2) AS avg_checkout_wait
FROM retail_operations_starter
GROUP BY Hours
ORDER BY avg_checkout_wait DESC;



SELECT
    Hours,
    COUNT(`ï»¿Transaction ID`) AS transaction_count
FROM retail_operations_starter
GROUP BY Hours
ORDER BY transaction_count DESC;
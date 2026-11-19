
-- =====================================================
-- OLIST E-COMMERCE INTELLIGENCE PLATFORM
-- BUSINESS ANALYSIS QUERIES
-- =====================================================


-- 1. MONTHLY REVENUE ANALYSIS
-- Understand how revenue changes month by month.

SELECT
    d.year,
    d.month,
    d.month_name,
    ROUND(SUM(f.total_payment)::NUMERIC, 2) AS monthly_revenue
FROM analytics.fact_orders f
JOIN analytics.dim_date d
    ON f.date_key = d.date_key
GROUP BY d.year, d.month, d.month_name
ORDER BY d.year, d.month;


-- 2. TOP 10 BEST-SELLING PRODUCTS
-- Identify products with the highest number of units sold.

SELECT
    p.product_id,
    p.product_category_name,
    COUNT(*) AS units_sold,
    ROUND(SUM(f.price)::NUMERIC, 2) AS product_revenue
FROM analytics.fact_order_items f
JOIN analytics.dim_products p
    ON f.product_id = p.product_id
GROUP BY p.product_id, p.product_category_name
ORDER BY units_sold DESC
LIMIT 10;


-- 3. TOP 10 SELLERS BY REVENUE
-- Identify sellers generating the highest sales revenue.

SELECT
    s.seller_id,
    s.seller_city,
    s.seller_state,
    ROUND(SUM(f.price)::NUMERIC, 2) AS total_revenue
FROM analytics.fact_order_items f
JOIN analytics.dim_sellers s
    ON f.seller_id = s.seller_id
GROUP BY s.seller_id, s.seller_city, s.seller_state
ORDER BY total_revenue DESC
LIMIT 10;


-- 4. STATE-WISE CUSTOMER REVENUE
-- Analyse orders and revenue across customer states.

SELECT
    c.customer_state,
    COUNT(DISTINCT f.order_id) AS total_orders,
    ROUND(SUM(f.total_payment)::NUMERIC, 2) AS total_revenue
FROM analytics.fact_orders f
JOIN analytics.dim_customers c
    ON f.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY total_revenue DESC;


-- 5. DELIVERY PERFORMANCE ANALYSIS
-- Classify orders based on delivery delay.

SELECT
    CASE
        WHEN delivery_delay_days < 0 THEN 'Early'
        WHEN delivery_delay_days = 0 THEN 'On Time'
        WHEN delivery_delay_days > 0 THEN 'Late'
        ELSE 'Unknown'
    END AS delivery_status,
    COUNT(*) AS total_orders
FROM analytics.fact_orders
GROUP BY delivery_status
ORDER BY total_orders DESC;

# Business Insights – Olist E-Commerce Intelligence Platform

## 1. Overview

This document presents the key findings obtained from exploratory data analysis, SQL queries and Power BI visualisations using the Olist Brazilian E-Commerce dataset.

## 2. Order Analysis

- The dataset contains 99,441 unique orders.
- 96,478 orders were successfully delivered.
- 625 orders were canceled.
- The overall cancellation rate was approximately 0.63%.

**Business Insight:** Although cancellations represent a small proportion of total orders, monitoring cancellation trends can help identify potential operational issues.

## 3. Payment Analysis

- Credit cards were the most frequently used payment method.
- There were 103,886 payment records for 99,440 unique orders.
- 2,961 orders had multiple payment records.
- One order had no matching payment record in the payment dataset.

**Business Insight:** Multiple payment records per order demonstrate the importance of aggregating payment data before joining it to order-level records.

## 4. Delivery Performance

- Average delivery duration was approximately 12.56 days.
- Median delivery duration was approximately 10.22 days.
- 88,644 orders were delivered before their estimated delivery date.
- 1,292 orders were delivered on the estimated date.
- 6,534 orders were delivered late.

Among orders with known delivery delay:
- 91.89% were delivered early.
- 1.34% were delivered on time.
- 6.77% were delivered late.

**Business Insight:** Most delivered orders arrived before the estimated date. However, late deliveries should be monitored to improve customer experience.

## 5. Product and Seller Analysis

SQL and Power BI analysis were used to identify:
- Top 10 best-selling products.
- Top 10 sellers by product revenue.
- Revenue contribution across product categories.

**Business Insight:** Identifying high-performing products and sellers can support inventory planning, sales strategies and seller performance evaluation.

## 6. Customer Analysis

Customer revenue was analysed across Brazilian states.

The analysis helps identify:
- States generating the highest revenue.
- Differences in customer demand across geographical regions.
- Opportunities for regional marketing strategies.

São Paulo (SP) emerged as the leading state in the customer revenue dashboard.

## 7. Recommendations

1. Monitor cancellation patterns to identify operational problems.
2. Investigate reasons for delayed deliveries.
3. Focus on high-performing products and sellers.
4. Use geographical revenue patterns to plan regional marketing.
5. Maintain accurate payment and order records to improve data quality.

## 8. Conclusion

The project demonstrates how raw e-commerce data can be transformed into a structured analytical data warehouse and interactive dashboards.

The findings provide insights into sales performance, customer behaviour, payment patterns, seller contribution and delivery efficiency.
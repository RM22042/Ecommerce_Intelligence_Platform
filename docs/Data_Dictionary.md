# Data Dictionary – Olist E-Commerce Intelligence Platform

## 1. Dataset Overview

The project uses the Brazilian Olist E-Commerce Public Dataset, which contains information about orders, customers, products, sellers, payments, reviews and geographical locations.

The dataset contains nine CSV files.

## 2. Source Dataset Tables

| Table | Description |
|---|---|
| Orders | Contains order details, status and timestamps |
| Order Items | Contains products purchased, sellers, prices and freight charges |
| Payments | Contains payment methods, installments and payment values |
| Customers | Contains customer identifiers and location details |
| Products | Contains product identifiers and product attributes |
| Sellers | Contains seller identifiers and location details |
| Reviews | Contains customer review scores and comments-related information |
| Geolocation | Contains geographical coordinates associated with postal codes |
| Category Translation | Maps Portuguese product categories to English |

## 3. Data Warehouse Tables

### Dimension Tables

| Table | Description |
|---|---|
| dim_customers | Stores customer information |
| dim_order_customers | Separate customer dimension used by the order-level fact table |
| dim_products | Stores product attributes |
| dim_sellers | Stores seller information |
| dim_date | Stores date-related attributes such as year, quarter and month |

### Fact Tables

| Table | Description |
|---|---|
| fact_orders | Stores order-level metrics, payment information and delivery details |
| fact_order_items | Stores individual order-item transactions, product prices and freight values |

## 4. Important Measures and Metrics

| Metric | Description |
|---|---|
| Total Revenue | Sum of order payment values |
| Total Orders | Count of unique orders |
| Average Order Value | Total Revenue divided by Total Orders |
| Delivered Orders | Number of successfully delivered orders |
| Units Sold | Count of order-item records |
| Product Revenue | Sum of product prices |
| Delivery Delay | Difference between actual delivery date and estimated delivery date |

## 5. Data Warehouse Design

The project uses a dimensional modelling approach with separate fact and dimension tables.

- Fact tables store measurable business transactions.
- Dimension tables provide descriptive information.
- Primary keys identify records uniquely.
- Foreign keys connect fact tables with their dimensions.
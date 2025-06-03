# 📊 Task 6 – Sales Trend Analysis

## 📌 Objective
Analyze monthly revenue and order volume using SQL aggregation functions.

## 📂 Dataset
Synthetic dataset created manually with columns:
- `order_id`
- `order_date`
- `amount`
- `product_id`

- 🧠 SQL Concepts Used
GROUP BY for monthly grouping  `GROUP BY`
SUM() for total revenue `SUM()`
COUNT(DISTINCT order_id) for unique orders `COUNT()`
YEAR() and MONTH() functions `YEAR()`
ORDER BY and LIMIT for sorting/filtering  `ORDER BY`, `LIMIT`

## 🔎 Sample Queries
```sql
-- Monthly aggregation
SELECT YEAR(order_date), MONTH(order_date), SUM(amount), COUNT(DISTINCT order_id) FROM orders GROUP BY YEAR(order_date), MONTH(order_date);
![task1 2](https://github.com/user-attachments/assets/de122f19-9918-4ef4-940f-a2f4266e497f)
![task1 3](https://github.com/user-attachments/assets/00475f1c-682a-4df2-92d9-64d83c13dddc)
![task1 4](https://github.com/user-attachments/assets/9c2cdb34-5b3d-49f9-be9d-f31606563cad)

## ✅ Final Note

This task strengthened my ability to perform real-world sales trend analysis using SQL, and taught me how to present insights in a professional, GitHub-ready format.


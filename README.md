# E-commerce SQL Mini Project

## **Project Overview**

This is a mini SQL project to analyze sample **e-commerce sales data**. The goal is to simulate real-world data analysis workflows and generate actionable insights on **customers, products, orders, and payments**.

It demonstrates **SQL skills for data analysts** including table creation, data insertion, joins, aggregation, and business insights.

---

## **Database Schema**

### **1. Customers**

* `customer_id` – unique ID
* `name` – customer name
* `city` – city of the customer
* `join_date` – date customer joined

### **2. Products**

* `product_id` – unique ID
* `name` – product name
* `category` – product category
* `price` – product price

### **3. Orders**

* `order_id` – unique ID
* `customer_id` – FK to customers
* `product_id` – FK to products
* `order_date` – date of order
* `quantity` – units purchased

### **4. Payments**

* `payment_id` – unique ID
* `order_id` – FK to orders
* `payment_method` – Credit Card / Debit Card / UPI / Cash
* `payment_status` – Success / Failed
* `amount` – total payment amount

---

## **Sample Data**

* 10 Customers
* 10 Products
* 20 Orders
* 20 Payments

*(Full INSERT scripts are included in the `sql/` folder)*

---

## **Analysis Queries & Insights**

Some of the key SQL analyses performed:

1. **Top 5 Customers by Spending**
2. **Top 5 Products by Quantity Sold**
3. **Revenue by Product Category**
4. **Revenue by Payment Method**
5. **Average Order Value**
6. **Failed / Cancelled Payments**
7. **Orders per City**

**Insights Example:**

* Identified the most valuable customers 💰
* Top-selling products and categories 🛒
* Payment method distribution and revenue trends 💳
* Highlighted failed payments for potential revenue recovery ❌

---

## **Tools & Skills Used**

* **SQL Server** – database creation, queries, joins, aggregation
* **Data Analysis** – generating business insights from raw data
  
## **Next Steps / Extensions**

* Add more sample data (50–100 rows) for deeper insights
* Create dashboards using **Power BI or Tableau**
* Extend analysis with **monthly trends, customer segmentation, or product performance over time**

Do you want me to do that?

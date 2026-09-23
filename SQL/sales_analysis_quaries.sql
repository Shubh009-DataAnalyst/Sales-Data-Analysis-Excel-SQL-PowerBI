SELECT * FROM sales_project.sales_data_clean;
-- Q.1 How much the total revenue did the company generate?
SELECT SUM(total_sales) AS company_total_sales
FROM sales_project.sales_data_clean;
-- Q.2 Which cities generate the highest sales?
select city, sum(total_sales) as total_sales from sales_project.sales_data_clean
group by city order by total_sales desc;
-- Q.3 Which products generate the most revenue?
select product, sum(total_sales) as revenue from sales_project.sales_data_clean
group by product order by revenue desc;
-- Q.4 Which product category performs the best?
select category, sum(total_sales) as total_sales from sales_project.sales_data_clean
group by category order by total_sales desc;
-- Q.5 Which payment modes are most commonly used by customers?
select payment_mode, count(order_id) as total_orders from sales_project.sales_data_clean
group by payment_mode order by total_orders desc;
-- Q.6 Which payment modes generate the highest total revenue?
select payment_mode, sum(total_sales) as total_sales from sales_project.sales_data_clean
group by payment_mode order by total_sales desc;
-- Q.7 Which payment mode has the highest average order value?
select payment_mode, avg(total_sales) as avg_order_value from sales_project.sales_data_clean
group by payment_mode order by avg_order_value desc;
-- Q. 8 Which customers contribute significantly high(100000) to total revenue?
select * from sales_project.sales_data_clean
where total_sales >= 100000
order by total_sales desc;
-- Q. 9 Does payment mode preference vary by product category?
SELECT product, payment_mode, COUNT(*) as orders
FROM sales_project.sales_data_clean GROUP BY product, payment_mode;

select * from pizza_sales
select sum(total_price) as Total_revenue from pizza_sales

select SUM(total_price)/count(DISTINCT order_id) as Average_order_Value from pizza_sales

select SUM(quantity) as Total_Pizza_Sold from pizza_sales

select COUNT(DISTINCT order_id) as Total_Orders from pizza_sales

select CAST(CAST(SUM(quantity) as decimal (10,2)) / cast(COUNT(DISTINCT order_id) as decimal(10,2)) as decimal (10,2)) 
as AVG_Pizza_Per_order from pizza_sales

select DATENAME(DW, order_date) as order_day , COUNT(DISTINCT order_id) as Total_Orders
from pizza_sales
GROUP BY DATENAME(DW,order_date)

select DATENAME (MONTH,order_date) as Month_Name , COUNT(DISTINCT order_id) as Total_orders
from pizza_sales
Group by DATENAME(MONTH,order_date)
order by Total_orders DESC


select DATENAME (MONTH,order_date) as Month_Name , COUNT(DISTINCT order_id) as Total_orders
from pizza_sales
Group by DATENAME(MONTH,order_date)
order by Total_orders ASC

select * from pizza_sales



SELECT pizza_category  , CAST(SUM(total_price) as int) as Total_Sales , COUNT(quantity) as Total_Quantity, COUNT(DISTINCT order_id) as Total_Orders
from pizza_sales
Group by pizza_category
order by Total_sales desc


SELECT 
 pizza_category,SUM(total_price) as Total_Sales, CAST(SUM(total_price) *100 / (SELECT SUM(total_price) from pizza_sales) as decimal(10,2)) as Sales_Percentage
 from  pizza_sales
 WHERE MONTH(order_date) =1
 Group by pizza_category


 select 
 pizza_size,CAST(Sum(total_price)*100/(SELECT SUM(total_price) from pizza_sales)as decimal(10,2)) as Sales_Percentage ,CAST( SUM(total_price)  as decimal(10,2)) "Total Sales"
 from pizza_sales
 group by pizza_size
 order by Sales_Percentage desc

select top 5
pizza_name, CAST(SUM(total_price) as decimal(10,2)) "Total Revenue"
from pizza_sales

group by pizza_name 
order by [Total Revenue] desc




select top 5
pizza_name, COUNT(distinct order_id) as Total_orders
from pizza_sales
group by pizza_name
order by Total_orders ASC












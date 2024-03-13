-- Total Sales
Select sum(total_price) as total_price from food_sales;

-- Total Pizzas Sold
Select sum(quantity) as total_pizzas from food_sales;

-- Total orders placed
Select count(distinct order_id) as total_orders from food_sales;

-- Average order value
Select sum(total_price) / count(distinct order_id) as AvgOrderValue from food_sales;

-- Average Pizza per Order
Select sum(quantity) / count(distinct order_id) as AvgPizzaPerOrder from food_sales;

-- Per month orders
SELECT date_format(str_to_date(order_date, '%d-%m-%Y'), '%M') as formatted_month,
count(distinct order_id) as tot_orders
from food_sales
group by formatted_month
ORDER BY tot_orders desc;

-- Percentage of sales by pizza category
select pizza_category, 
((sum(total_price)/(Select sum(total_price) from food_sales)) * 100) as Percentage
from food_sales
group by pizza_category;

-- Percentage of sales by pizza size
select pizza_size, 
((sum(total_price)/(Select sum(total_price) from food_sales)) * 100) as Percentage
from food_sales
group by pizza_size;

select count(*) from food_sales;

-- Top 5 best seller by revenue
select pizza_name, sum(total_price) as price 
from food_sales
group by pizza_name
order by price desc
limit 5;

-- Top 5 worst seller by revenue
select pizza_name, sum(quantity) as price 
from food_sales
group by pizza_name
order by quantity
limit 5;

--  Top 5 best pizza names by quantity
select pizza_name, sum(quantity) as tot_quantity 
from food_sales
group by pizza_name
order by tot_quantity  desc
limit 5;

--  Top 5 worst pizza names by quantity
select pizza_name, sum(quantity) as tot_quantity  
from food_sales
group by pizza_name
order by tot_quantity 
limit 5;

-- Most ordered pizza
select pizza_name, count(DISTINCT order_id) as total_orders
from food_sales
group by pizza_name
order by total_orders desc 
limit 5;

-- Least ordered pizza
select pizza_name, count(DISTINCT order_id) as total_orders
from food_sales
group by pizza_name
order by total_orders 
limit 5;

-- Total sales during weekdays and weekends

select 
case dayofweek(str_to_date(order_date, '%d-%m-%Y'))
	when 1 then "Weekend"
	when 7 then "Weekend"
	else "Weekday"
end as day_type,
sum(total_price) as price
from food_sales
group by day_type
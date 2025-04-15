-- Using database online_sales
use online_Sales;
show tables;

# Previewing data
select * from online_sales_data;


-- Use EXTRACT(MONTH FROM order_date) for month
select Date, extract(month from Date) as Month
from online_sales_data;


--  GROUP BY year/month
select extract(year from Date) as Year,extract(month from Date) as month, sum(`Total Revenue`) as total_revenue
from online_sales_data
group by Year, month
order by total_revenue desc;


-- Use SUM() for revenue
select sum(`total revenue`) from online_sales_data;


-- COUNT(DISTINCT Transaction_id) for volume
select count(distinct(`Transaction ID`)) 
from online_sales_data;

-- Use ORDER BY for sorting
select region, sum(`total revenue`) as total_revenue
from online_sales_data 
group by region
order by total_revenue desc;



-- Limit results for specific time periods
select * from online_sales_data
where date between '2024-01-01' and '2024-01-15';


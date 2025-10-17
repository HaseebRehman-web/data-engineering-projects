select s.sale_id, p.product_name, c.customer_name, s.quantity, s.sale_date
from sales s
join products p on s.product_id = p.product_id
join customers c on s.customer_id = c.customer_id;

select p.product_name, sum(s.quantity * p.price) as total_revenue
from sales s
join products p on s.product_id = p.product_id
group by p.product_name
order by total_revenue desc;

select p.product_name, sum(s.quantity) as total_sold
from sales s
join products p on s.product_id = p.product_id
group by p.product_name
order by total_sold desc
limit 3;

select c.city, sum(s.quantity * p.price) as city_revenue
from sales s
join customers c on s.customer_id = c.customer_id
join products p on s.product_id = p.product_id
group by c.city
order by city_revenue desc;



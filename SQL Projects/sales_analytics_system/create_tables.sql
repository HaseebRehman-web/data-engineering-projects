insert into products (product_name, category, price)
values
('laptop', 'electronics', 85000),
('mouse', 'electronics', 1200),
('chair', 'furniture', 5000),
('table', 'furniture', 9000),
('headphones', 'electronics', 3500);
insert into customers (customer_name, city)
values
('ali khan', 'lahore'),
('sara noor', 'karachi'),
('bilal ahmed', 'islamabad'),
('fatima tariq', 'multan');
insert into sales (product_id, customer_id, quantity, sale_date)
values
(1, 1, 1, '2024-01-05'),
(2, 1, 2, '2024-01-07'),
(3, 2, 1, '2024-01-10'),
(1, 3, 1, '2024-02-01'),
(4, 4, 1, '2024-02-03'),
(5, 2, 3, '2024-02-04');

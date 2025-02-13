create database sales_analytics;

use sales_analytics;

create table customer_shopping (
invoice_no varchar(50),
customer_id varchar(50),
gender varchar(10),
age varchar(50),
category varchar(200),
quantity varchar(50),
price varchar(100),
payment_method varchar(50),
invoice_date varchar(100),
shopping_mall varchar(200)
);

select * from customer_shopping;
describe customer_shopping;

select
sum(case when invoice_no is null then 1 else 0 end) as missing_invoice_no,
sum(case when customer_id is null then 1 else 0 end) as missing_customer_id,
sum(case when gender is null then 1 else 0 end) as missing_gender,
sum(case when age is null then 1 else 0 end) as missing_age,
sum(case when category is null then 1 else 0 end) as missing_category,
sum(case when quantity is null then 1 else 0 end) as missing_quantity,
sum(case when price is null then 1 else 0 end) as missing_price,
sum(case when payment_method is null then 1 else 0 end) as missing_payment_method,
sum(case when invoice_date is null then 1 else 0 end) as missing_invoice_date,
sum(case when shopping_mall is null then 1 else 0 end) as missing_shopping_mall
from customer_shopping;

select invoice_no,customer_id,count(*)
from customer_shopping
group by invoice_no,customer_id
having count(*)>1
;

select * from customer_shopping where age<0 or quantity<0 or price<0;




create table customer_shopping_2 as
select * from customer_shopping;



select invoice_date from customer_shopping_2;

update customer_shopping_2
set invoice_date = str_to_date(invoice_date,'%d/%m/%Y');

alter table customer_shopping_2 modify column invoice_date date;

update customer_shopping_2 as cs1
join customer_shopping as cs
	on cs1.customer_id = cs.customer_id
set cs1.age = cs.age;





create table customer_shopping_3 as
select * from customer_shopping;

select invoice_date from customer_shopping_3;

update customer_shopping_3
set invoice_date = str_to_date(invoice_date,'%d/%m/%Y');

alter table customer_shopping_3 modify column invoice_date date;

update customer_shopping_3
set payment_method = trim(payment_method);

update customer_shopping_3
set shopping_mall = trim(shopping_mall);






select gender,count(age) 
from customer_shopping_3
group by gender;

select
min(age) as min_age,
round(avg(age),0) as avg_age,
max(age)as maz_age
from customer_shopping_3;

select gender,
min(age) as min_age,
round(avg(age),0) as avg_age,
max(age)as max_age,
round(stddev(age),2) as std_dev
from customer_shopping_3
group by gender;




select year(invoice_date) as `date`,round(sum(quantity*price),2) as revenue
from customer_shopping_3
group by `date`
order by `date`;

select category, round(sum(quantity*price),0) as revenue
from customer_shopping_3
group by 1
order by 2 desc;


select distinct(shopping_mall), count(customer_id) as total_visit
from customer_shopping_3
group by 1
order by 2 desc;


select year(invoice_date) as `year`, payment_method,count(customer_id) as payment_count
from customer_shopping_3
group by payment_method,`year`
order by year, 2 desc;

















































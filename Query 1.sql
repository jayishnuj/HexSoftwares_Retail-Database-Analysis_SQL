create database shopping_trend;

use shopping_trend;

create table shopping_trends (
    customer_id int,
    age int,
    gender varchar(20),
    item_purchased varchar(50),
    category varchar(50),
    purchase_amount_usd int,
    location varchar(50),
    size varchar(10),
    color varchar(30),
    season varchar(20),
    review_rating decimal(3,1),
    subscription_status varchar(10),
    shipping_type varchar(30),
    discount_applied varchar(10),
    promo_code_used varchar(10),
    previous_purchases int,
    payment_method varchar(30),
    frequency_of_purchases varchar(30)
);

-- Data was imported by Right-clicking on the tables and choosing Table data import wizard thereafter 

select*from shopping_trends;

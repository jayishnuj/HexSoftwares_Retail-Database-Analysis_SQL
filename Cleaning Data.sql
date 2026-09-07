use shopping_trend;
-------------------
-- DATA CLEANING --
-------------------

---------------------
-- Data inspection --
---------------------
select*from shopping_trends limit 10;

--------------------
-- Missing Values --
--------------------
select sum(customer_id is null) as customer_id_nulls,
sum(age is null) as age_nulls,
sum(gender is null) as gender_nulls,
sum(item_purchased is null) as item_nulls,
sum(category is null) as category_nulls,
sum(purchase_amount_usd is null) as purchase_amount_nulls,
sum(location is null) as location_nulls,
sum(size is null) as size_nulls,
sum(color is null) as color_nulls,
sum(season is null) as season_nulls,
sum(review_rating is null) as rating_nulls,
sum(subscription_status is null) as subscription_nulls,
sum(shipping_type is null) as shipping_nulls,
sum(discount_applied is null) as discount_nulls,
sum(promo_code_used is null) as code_nulls,
sum(previous_purchases is null) as previous_nulls,
sum(payment_method is null) as payment_nulls,
sum(frequency_of_purchases is null) as frequency_nulls
from shopping_trends;

-- There are no missing values in this data --

-----------------------
-- Duplicate Records --
-----------------------
select customer_id , count(*) as duplicate_count
from shopping_trends
group by customer_id having count(*)>1;

-- There are no duplicate records in this imported data --

----------------------------------------------------------
-- Checking for Distinct Values in Categorical Columns  --
----------------------------------------------------------
select distinct category from shopping_trends;
select distinct item_purchased from shopping_trends;
select distinct gender from shopping_trends;
select distinct location from shopping_trends;
select distinct size from shopping_trends;
select distinct color from shopping_trends;
select distinct season from shopping_trends;
select distinct subscription_status from shopping_trends;
select distinct discount_applied from shopping_trends;
select distinct promo_code_used from shopping_trends;
select distinct shipping_type from shopping_trends;
select distinct payment_method from shopping_trends;
select distinct frequency_of_purchases from shopping_trends;

-- The column frequency_of_purchases has 2 distinct values Quarterly, and Every 3 Months which mean one and the same thing

---------------------
-- Column Updation --
---------------------
update shopping_trends
set frequency_of_purchases = "Quarterly"
where frequency_of_purchases = "Every 3 Months";

-----------------------------------------------------
-- Checking for Valid Entries in Numerical Columns --
-----------------------------------------------------
select*from shopping_trends where age<0 or age>100;
select*from shopping_trends where purchase_amount_usd<=0;
select*from shopping_trends where previous_purchases<0;
Select*from shopping_trends where review_rating<0 or review_rating>5;

-- Our imported data is perfect for Analysis --

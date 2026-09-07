# HexSoftwares_Retail-Database-Analysis_SQL
This project focuses on analyzing a Shopping Trends dataset using MySQL to understand customer purchasing behavior, sales performance, product preferences, customer experience, and payment patterns.

# Data Source 
https://www.kaggle.com/datasets/iamsouravbanerjee/customer-shopping-trends-dataset

# Dataset Glossary :-
1. **Customer ID** - Unique identifier for each customer
2. **Age** - Age of the customer
3. **Gender** - Gender of the customer (Male/Female)
4. **Item Purchased** - The item purchased by the customer
5. **Category** - Category of the item purchased
6. **Purchase Amount (USD)** - The amount of the purchase in USD
7. **Location** - Location where the purchase was made
8. **Size** - Size of the purchased item
9. **Color** - Color of the purchased item
10. **Season** - Season during which the purchase was made
11. **Review Rating** - Rating given by the customer for the purchased item
12. **Subscription Status** - Indicates if the customer has a subscription (Yes/No)
13. **Shipping Type** - Type of shipping chosen by the customer
14. **Discount Applied** - Indicates if a discount was applied to the purchase (Yes/No)
15. **Promo Code Used** - Indicates if a promo code was used for the purchase (Yes/No)
16. **Previous Purchases** - The total count of transactions concluded by the customer at the store, excluding the ongoing transaction
17. **Payment Method** - Customer's most preferred payment method
18. **Frequency of Purchases** - Frequency at which the customer makes purchases (e.g., Weekly, Fortnightly, Monthly)

# Tools & Technologies
MySQL, SQL, Aggregate Functions, Group By, Order By, Case, Subqueries, Dense_Rank(), Window Functions, Data Cleaning & Validation

# Workflow :-
The project follows a complete SQL workflow:
* Database and table creation
* Data import
* Data inspection
* Data cleaning and validation
* Exploratory data analysis
* Aggregation and grouping
* Ranking using SQL Window Functions
* Business-oriented insights

## 1. Database & Table Creation
The project begins by creating the `shopping_trend` database and the `shopping_trends` table.
The table contains customer, purchase, product, rating, payment, and purchase-frequency information.
The dataset was then imported using MySQL's **Table Data Import Wizard**.

## 2. Data Cleaning
Before performing analysis, the dataset was inspected and validated.

### Data Quality Checks
The following checks were performed:
* Initial data inspection
* Missing-value detection
* Duplicate-record detection
* Distinct-value checks for categorical columns
* Numerical-value validation
* Standardization of inconsistent categorical values
The analysis found **no missing values** and **no duplicate records** in the imported data.

### Standardizing Frequency Values
The `frequency_of_purchases` column contained both:
* `Quarterly`
* `Every 3 Months`
Since these represent the same purchase frequency, `Every 3 Months` was standardized to `Quarterly`.
Numerical columns such as age, purchase amount, previous purchases, and review rating were also checked for invalid values.

## 3. Data Analysis
The cleaned dataset was analyzed to answer several business questions

### Business Questions Answered
The project uses SQL to answer questions such as:
1. How many customers are present and what is the total revenue?
2. Should the store stock more male or female clothing?
3. Which gender generates more revenue?
4. Which age group spends the most on average?
5. Which products generate the highest sales?
6. What are the most frequently purchased products?
7. Which products perform best in each season?
8. Which products have the highest customer ratings?
9. Which categories generate the most revenue?
10. Which categories perform best within each season?
11. Which locations have the highest number of purchases?
12. Which locations generate the most revenue?
13. Which locations have the highest customer ratings?
14. What are the most preferred colors?
15. Which sizes generate the most revenue?
16. Who are the most loyal customers according to the analysis?
17. Which payment methods generate the most transactions and revenue?

### Key Insights
Some of the major findings from the analysis include:
* The dataset contains approximately **3,900 customers** and generated approximately **$233,081 in revenue**.
* Male customers represent more than **68%** of the dataset.
* Female customers have a slightly higher average spending compared with male customers, while males generate greater overall revenue.
* The **18–25** age group records the highest average spending among the defined age groups.
* **Clothing** generates the highest revenue among the product categories.
* **Medium** is the most commonly purchased size and generates the highest revenue among the size categories.
* Credit cards account for the highest number of transactions among the listed payment methods.

### Conclusion
This project demonstrates how SQL can be used to transform raw shopping data into meaningful business insights.
Starting from **database creation and data import**, the project progresses through **data cleaning and validation** and finally into **customer, product, category, location, loyalty, and payment analysis**.
The project highlights practical SQL skills that are useful for a **Data Analyst** role, particularly in data cleaning, exploratory analysis, aggregation, and analytical querying.

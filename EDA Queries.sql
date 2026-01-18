-- Exploratory Data Analysis 

SELECT * FROM business_dataset.business2;

-- before working on any data , we should always check if its data types are correct or not.

DESCRIBE business2;

-- And always check if there any false values present

SELECT *
FROM business2
WHERE Age < 0 OR Age > 100;

-- count of customers by genders

SELECT Gender, COUNT(*) 
FROM business2
GROUP BY Gender;


-- How many customer churned

SELECT DISTINCT Churn
FROM business2;

select Churn, count(*) as Customer_Churned
from business2
where churn = 'Yes';

-- total customer group by 

select Churn, count(*) as total_customers
from business2
group by Churn ;

-- Percentage by Churn of total customers

select Churn, count(*) as toatal_customers,
round( 
count(*) * 100.0 / (select count(*) from business2),
2)as churn_percentage
from business2
group by Churn;

-- now , Customer churn by Region and Subscription score

select Region, count(*) as total_customer1
from business2
group by Region;

select Subscription_Type, count(*) as total_customer2
from business2
group by Subscription_Type;

-- Average , MAX, MIN income by gender 

select Gender, max(Annual_Income),min(Annual_Income),round(avg(Annual_Income))
from business2
group by Gender;

--  every spending score by subscription type

select 
Subscription_Type,
 count(*) as total_customers,
 round(AVG(Spending_Score), 2) as avg_spending_score,
 MAX(Spending_Score) as max_spending,
 MIN(Spending_Score) as min_spending
from business2
group by Subscription_Type;

-- region wise customer distributions

SELECT
    Region,
    COUNT(*) AS total_customers
FROM business2
GROUP BY Region
ORDER BY total_customers DESC;

-- churn by region
-- percentage wise region by churn

select Region,
 count(*) as total_churn,
round(
sum(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / count(*),
2) as total_percentage
from business2
group by  Region
order by total_percentage DESC;

-- Check whether income level affects churn probability
-- Churn vs Annual income
-- with percentge too

select case 
when Annual_Income < 40000 then 'Low Income'
when Annual_Income between 40000 and 80000 then 'Middle Income'
else 'High Income' 
end as income_category,
Churn, count(*) AS total_customers,
round(
count(*)*100.0 / sum(count(*) ) over (partition by 
case 
when Annual_Income < 40000 then 'Low Income'
when Annual_Income between 40000 and 80000 then 'Middle Income'
else 'High Income' 
end 
),2
) as percentge
from business2
group by income_category, Churn
order by income_category;

-- churn valus with respect to spending score

select case
when Spending_Score is null then 'unknow spending'
when Spending_Score between 0 and 30 then 'low spending'
when Spending_Score between 30 and 60 then 'medium spending'
else 'high spending'
end as spending_category,
Churn, count(*) as total_customer
from business2
group by spending_category, Churn
order by spending_category;

-- the highest values of churners 

select Churn, count(*) as high_value_churner
from business2
where Churn = 'Yes'
and Annual_Income > 80000
and Spending_Score > 60 ;

-- END
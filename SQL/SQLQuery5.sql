Select Gender, Count(Gender) as TotalCount,
Count(Gender)*100.0 / (Select count(*) from stg_churn) as Percentage 
from stg_churn
group by Gender
-- 100.0 multiplication converts into float

Select Contract, Count(Contract) as TotalCount,
Count(Contract)*100.0 / (Select count(*) from stg_churn) as Percentage 
from stg_churn
group by Contract

Select Customer_Status, Count(Customer_Status) as TotalCount,
Count(Customer_Status)*100.0 / (Select count(*) from stg_churn) as Percentage 
from stg_churn
group by Customer_Status

Select State, Count(State) as TotalCount,
Count(State)*100.0 / (Select count(*) from stg_churn) as Percentage 
from stg_churn
group by State
order by Percentage desc

select distinct Internet_Type
from stg_churn



--Group Age
SELECT 
client_id,
person_age,
CASE 
WHEN person_age between 20 and 25  then'20-25'
WHEN person_age between 26 and 30 then '26-30'
WHEN person_age between 31 and 35 then '31-35'
WHEN person_age between 36 and 40 then '36-40'
WHEN person_age between 41 and 45 then '41-45'
WHEN person_age between 46 and 50 then '46-50'
WHEN person_age between 51 and 55 then '51-55'
WHEN person_age between 56 and 60 then '56-60'
else '60+'
end as [Group Age]
FROM novobank

--Total loan
SELECT 
SUM(loan_amnt) as [Total Loan]
from novobank

--Loan issued
SELECT 
COUNT(loan_amnt) as [Loan issued number]
from novobank

--Total paid
SELECT 
COUNT(loan_amnt) as [Total paid]
From novobank
where loan_status = 0

--Total default
SELECT
COUNT(loan_amnt) as [Total default]
FROM novobank
WHERE loan_status =1

--Total loan by intent
SELECT 
loan_intent,
COUNT(loan_intent) as [Total]
FROM novobank
GROUP BY(loan_intent)


--Total loan and percenatage by employment type
SELECT 
 employment_type,
 1.0 * count(employment_type)/(  
        SELECT 
        COUNT(employment_type) 
        From novobank
) * 100 as [percenatage]
 from novobank
GROUP BY employment_type

--Total loan and percentage by home ownership status
SELECT 
person_home_ownership,
1.0 * COUNT(person_home_ownership) / (
    select COUNT(person_home_ownership)
    from novobank
) * 100 as [percenatage]

FROM novobank
GROUP BY person_home_ownership

--Probability default by term loan
with default_amount as (
SELECT 
loan_term_months as [Loan term],
SUM(loan_amnt) as [default amount]
From novobank
WHERE loan_status = 1
GROUP BY loan_term_months
)
SELECT 
loan_term_months,
sum(loan_amnt) as [total amount],
def.[default amount] as [default],
1.0* def.[default amount]/sum(loan_amnt)*100 as [Probability of default (%)]
from novobank nvb
INNER JOIN default_amount def
ON nvb.loan_term_months = def.[Loan term]
GROUP BY nvb.loan_term_months,def.[default amount]

-- Sort of risk borrowers
with cte as (
    SELECT 
client_ID,
debt_to_income_ratio,
case
when debt_to_income_ratio < 0.20 then 'Low risk'
when debt_to_income_ratio > 0.70 then 'High risk'
else 'Morderate risk' 
end as [Risk]
FROM novobank
)
SELECT 
COUNT(client_id)
from cte
where risk = 'High risk'

--exposure at default
SELECT 
SUM(loan_amnt)
from novobank
WHERE loan_status = 1
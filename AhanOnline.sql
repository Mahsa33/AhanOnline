--Q1
select sum(Quantity * UnitPrice + Quantity * UnitPrice * ProfitRatio * 0.01) AS 'Total Sale'
from Sale_TBL, SaleProfit_TBL
where Sale_TBL.Product = SaleProfit_TBL.Product

--Q2
select count(distinct Customer) AS 'Number of Customers'
from Sale_TBL

--Q3
select Product, sum(Quantity) AS '# of Sold Product'
from Sale_TBL
group by Product

--Q4
select Customer, count(Customer) As 'Number of Factor', sum(Quantity) As 'Number of Quantity', sum(Quantity * UnitPrice + Quantity * UnitPrice * ProfitRatio * 0.01)
from Sale_TBL, SaleProfit_TBL
where Sale_TBL.Product = SaleProfit_TBL.Product and
(Quantity * UnitPrice + Quantity * UnitPrice * ProfitRatio * 0.01) > 1500
group by Customer

--Q5
select sum(Quantity *ProfitRatio * UnitPrice * 0.01) AS 'Profit Amount',
sum(Quantity *ProfitRatio * UnitPrice * 0.01) / sum(Quantity * UnitPrice + Quantity * UnitPrice * ProfitRatio * 0.01) AS 'Percentage'
from Sale_TBL, SaleProfit_TBL
where Sale_TBL.Product = SaleProfit_TBL.Product

--Q6
select Date, count(distinct Customer) AS 'Number of Customers'
from Sale_TBL
group by Date


select organ_emp.id, organ_emp.name, organ1.manager
from OrganizationChart_TBL organ_emp
join OrganizationChart_TBL organ_man
on organ_emp.ManagerID=organ_man.id
join OrganizationChart_TBL organ1 
on organ1.id= organ_man.ManagerID


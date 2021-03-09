select ProductName,
	   UnitsInStock * UnitPrice as PotentialRevenue
from products
where UnitPrice = 20

--right outer joins give you all the data from the rightmost table 
--and the left join give you all the data from the leftmost table

select s.*,p.* 
from products p
	right join Suppliers s
		on p.SupplierID = s.SupplierID
where p.ProductID is null	

select p.*,s.CompanyName, c.CategoryName 
from products p
	 join Suppliers s
		on p.SupplierID = s.SupplierID
	 join Categories c 
		on c.CategoryID = p.CategoryID

/*
Which category (name) of product had the largest $ amount in sales all time
*/

select c.CategoryName, sum(od.UnitPrice * Quantity * (1-Discount)) as revenue
from [order details] od
	join products p 
		on p.ProductID = od.ProductID
	join Categories c
		on c.CategoryID = p.CategoryID
group by c.CategoryName -- columns either have to be a grouping, or used for calculation
order by revenue desc

select c.CategoryName, count(distinct od.ProductID)--(od.UnitPrice * Quantity * (1-Discount)) as revenue
from [order details] od
	join products p 
		on p.ProductID = od.ProductID
	join Categories c
		on c.CategoryID = p.CategoryID
group by c.CategoryName -- columns either have to be a grouping, or used for calculation
--order by revenue desc

select count(*) from [Order Details]




select *, 
	Case 
		When s.Country = 'usa' Then 'Made in the usa'
		When s.Country = 'america' then 'Made in the usa'
		else null
	end MuricaTag,
		Case s.Country
		When 'usa' Then 'Made in the usa'
		When 'america' then 'Made in the usa'
		else null
	end MuricaTag2
from Suppliers s


select c.Address, city, PostalCode, Country, c.Fax
from Customers c
where c.Region = 'OR'
union --eliminates duplicates, acts like distinct, unless you do union all
select e.Address, city, PostalCode, Country, null
from Employees e
where e.Region = 'OR'

--all from the first set that doesn't exist in the second
select e.Address, city, PostalCode, Country
from Employees e
except
select e.Address, city, PostalCode, Country
from Employees e
where e.Region = 'OR'
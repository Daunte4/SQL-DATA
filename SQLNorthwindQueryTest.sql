USE NORTHWIND;

--1. List the customer in NA

Select * from Customers;

Select C.CompanyName, C.Country
    from Customers as C
	where C.Country = 'USA'
	or C.Country = 'CANADA'
	or C.Country = 'Mexico';


Select C.CompanyName, C.Country
    from Customers as C
	where C.Country in ('USA', 'Canada', 'Mexico')
	order by C.Country desc;

--2 What orders were placed in April, 1998

Select * from orders;

Select O.OrderID, O.OrderDate
from Orders as O
where OrderDate >= '1998-04-01' and O.OrderDate <= '1998-04-30'


Select O.OrderID, O.OrderDate
from Orders as O
where month (O.OrderDate) = 4 and YEAR (O.OrderDate) = 1998;

--3. List the sauces

Select * from Products;

Select *from Categories;
Select *
  from Products as P
  where P.CategoryID = 2
   and (P.ProductName like '%sauce&' or P.ProductName like '%sosse%' );

   --4.Look for a dried fruit

   Select * from Products where ProductName like '%dried%';
   
  


   

 



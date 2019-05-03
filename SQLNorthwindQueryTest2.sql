USE Northwind;

--1 what are regions

SELECT RegionDescription
FROM Region;


--2 what are cities

SELECT C.ContactName, C.Phone, C.City
FROM Customers AS C

--3 what are souther regions

SELECT T.TerritoryDescription
FROM Territories AS T
JOIN Region AS R 
on T.RegionID = R.RegionID
WHERE R.RegionDescription = 'Southern';

--4 How do you run this query with the fully qualified column name

SELECT T.TerritoryDescription
FROM Territories AS T
WHERE T.RegionID = 4;

--5 How do you run this query with a table alias

SELECT count(*) as [ Number of Suppliers]
FROM Suppliers;

--6 What is the contact name, telephone number, and city for each customer

SELECT C.ContactName, C.Phone, C.City
FROM Customers AS C

--7 What are the products currently out of stock

SELECT ProductName, UnitsInStock
FROM Products
WHERE UnitsInStock = 0;

--8 What are the ten products currently in stock with the least amount on hand

select top(10) p.ProductName, p.UnitsInStock
from Products as p
where p.UnitsInStock > 0
order by p.UnitsInStock asc;

--9 What are the five most expensive products in stock

SELECT top 5 ProductName, UnitPrice
FROM Products
where UnitsInStock > 0
order by UnitPrice desc


--10 How many products does Northwind have? How many customers? How many suppliers?

select top(10) p.ProductName, p.UnitsInStock
from Products as p
where p.UnitsInStock > 0
order by p.UnitsInStock asc;
   
  


   

 



1.SELECT CategoryName  
FROM Categories 
2.SELECT ContactName, CustomerID, CompanyName 
FROM Customers
WHERE City = 'London' 
3. SELECT *
FROM Suppliers
WHERE Fax IS NOT NULL
AND ContactTitle IN ('Sales Manager','Marketing Manager')
4. SELECT CustomerID
FROM Orders
WHERE RequiredDate between 'Jan, 1 1997' and 'Jan 1, 1998' 
AND Freight < '100'
5. SELECT CompanyName, ContactName 
FROM Customers
WHERE Country in('Mexico','Sweden','Germany')
6. SELECT count (*) 
FROM Products
WHERE Discontinued IS NOT NULL
7. SELECT CategoryName, Description 
FROM Categories
WHERE CategoryName LIKE 'Co%'
8. SELECT CompanyName, City, Country, PostalCode 
FROM Suppliers
WHERE Address LIKE '%Rue%' 
9. SELECT DISTINCT ProductID, Quantity 
FROM [Order Details]
10. SELECT c.ContactName, o.ShipAddress 
FROM Orders o, Customers c, Shippers s
WHERE s.CompanyName = 'Speedy Express'
11. SELECT CompanyName, ContactName, ContactTitle, Region 
FROM Suppliers
12.	SELECT p.ProductName
FROM Products p, Categories c
WHERE c.CategoryName = 'condiments'	
13.	SELECT DISTINCT c.ContactName
FROM Customers c, Orders o 
WHERE c.CustomerID <> o.CustomerID
14.	INSERT INTO Shippers(CompanyName)
VALUES('Amazon')
15.	UPDATE Shippers
SET CompanyName='Amazon Prime Shipping' 
WHERE CompanyName='Amazon' 
16.	SELECT s.CompanyName, cast(ROUND(o.Freight,0)as int) AS RoundedWeight  
FROM Shippers s, Orders o
17.	SELECT DisplayName, LastName+ ','+FirstName AS DisplayName
FROM Employees
18.	INSERT INTO Customers(ContactName, CustomerID)
VALUES('Jeff Laumer','4544')
SELECT SCOPE_IDENTITY()
INSERT INTO Orders(CustomerID)
VALUES (SCOPE_IDENTITY()) 
SELECT SCOPE_IDENTITY()
INSERT INTO [Order Details](OrderID, ProductID)
VALUES (SCOPE_IDENTITY(), (SELECT ProductID FROM Products WHERE ProductName = 'Grandma''s Boysenberry Spread'))
19.	DELETE FROM Orders
WHERE CustomerID = '4544'
SELECT SCOPE_IDENTITY()
DELETE FROM [Order Details] WHERE OrderID = SCOPE_IDENTITY() 
DELETE FROM Customers WHERE CustomerID = '4544'
20.	SELECT ProductName, UnitsInStock
FROM Products
WHERE UnitsInStock > 100

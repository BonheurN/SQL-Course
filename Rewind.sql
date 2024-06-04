SELECT DISTINCT City From Suppliers;
SELECT CustomerID, City, Country FROM Customers;
SELECT * FROM Customers;
SELECT * FROM Suppliers;
SELECT * FROM Customers
Where City = 'London';
SELECT COUNT(DISTINCT City) FROM Suppliers;
SELECT * FROM Customers
WHERE City = 'London';

SELECT * FROM Customers
WHERE CustomerID = 'ALFAKIR';

SELECT SupplierID FROM Suppliers;
SELECT * FROM Suppliers 
WHERE SupplierID >= 5;
SELECT * FROM Products
ORDER BY UnitPrice;
SELECT Contacttitle, City FROM Customers;

SELECT DISTINCT Country FROM Suppliers;

SELECT DISTINCT Country, City FROM Customers;

SELECT * FROM Customers
WHERE City = 'Berlin';

SELECT * FROM Suppliers
WHERE Country = 'Germany';

SELECT * FROM Customers
WHERE Country = 'MEXICO';

SELECT * FROM Customers
WHERE Country = 'USA';

SELECT * FROM Customers
WHERE Country = 'Canada';

SELECT * FROM Suppliers
WHERE Country = 'USA';

SELECT * FROM Customers
WHERE Country = 'Canada';

SELECT * FROM Customers
WHERE CustomerID = 'ALFKI';

SELECT * FROM Suppliers
WHERE SupplierID = 1;

SELECT * FROM Suppliers
WHERE SupplierID >= 2;

SELECT * FROM Suppliers
WHERE SupplierID <= 2;

SELECT * FROM Products 
ORDER BY Unitprice;

SELECT * FROM Products
ORDER BY Unitprice DESC;

SELECT * FROM Suppliers
ORDER BY SupplierID ASC;

SELECT * FROM Products
ORDER BY ProductName;

SELECT * FROM Products
ORDER BY ProductName DESC;

SELECT * FROM Customers
ORDER BY City, Country, ContactName;

SELECT * FROM Customers
ORDER BY Country ASC, ContactName DESC;

SELECT * FROM Customers
WHERE Country = 'Mexico' AND ContactName LIKE 'G%';

SELECT * FROM Suppliers 
WHERE Country = 'England' AND City LIKE 'L';


SELECT CustomerID, ContactName, City 
FROM Customers
ORDER BY CustomerID, ContactName, City  ASC;

SELECT SupplierID, City, Country 
FROM Suppliers
ORDER BY SupplierID, City, Country DESC;

SELECT * FROM Products
ORDER BY ProductName;

SELECT * FROM Customers
ORDER BY  ContactName ASC, City DESC ;


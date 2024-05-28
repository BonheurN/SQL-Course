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


SELECT * FROM Suppliers;
SELECT CompanyName, SupplierID, ContactTitle, City FROM Suppliers;
SELECT * FROM Customers;
SELECT DISTINCT City FROM Customers;
SELECT DISTINCT Country FROM Suppliers;
SELECT COUNT(DISTINCT Country) FROM Customers;
SELECT COUNT (DISTINCT City) FROM Suppliers;
SELECT COUNT (DISTINCT City) FROM Customers;
SELECT * FROM Customers
WHERE City = 'Berlin';

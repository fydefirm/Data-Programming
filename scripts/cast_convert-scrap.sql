-- FUNCTIONS

SELECT GETDATE()


SELECT LEN('How many characters in have i typed so far')  

SELECT GETDATE() 

SELECT LEN('Olugbenga Oguntokun')

SELECT LEN('Olugbenga Oguntokun   ') 

SELECT LEN('   Olugbenga Oguntokun') 


SELECT FirstName,
	   LEN(FirstName) AS FirstNameLength
FROM Northwind.dbo.Employees 


-- LEFT
SELECT LEFT('abcdefg', 4) 

SELECT ProductName, 
	   LEFT(ProductName, 4) AS ProductCode
FROM Northwind.dbo.Products

-- RIGHT
SELECT RIGHT('abcdefg', 4)

SELECT ProductName,
	   RIGHT(ProductName, 4) AS NewProductCode
FROM Northwind.dbo.Products 

-- LOWER/UPPER



SELECT UPPER(LastName) AS LastName, 
       LOWER(FirstName) AS FirstName 
FROM Northwind.dbo.Employees 

-- SUBSTRING
SELECT SUBSTRING('A tale of two cities', 3, 4) 

SELECT CompanyName,
	   SUBSTRING(CompanyName, 1, 10) AS First10Characters, 
       SUBSTRING(City, 1, 3) AS CityCode 
FROM Northwind.dbo.Suppliers 

-- CHARINDEX
SELECT CHARINDEX('E', 'HELLO', 1)

SELECT CHARINDEX('p', 'Joseph') 


SELECT ProductName,
	   QuantityPerUnit,
       CHARINDEX(' ', QuantityPerUnit) AS IndexOfSpaceCharacter
FROM Northwind.dbo.Products 


SELECT ProductName, 
	   LEFT(ProductName, 4) AS ProductCode
FROM Northwind.dbo.Products

SELECT ProductName, 
	   UPPER(LEFT(ProductName, 4)) AS ProductCode
FROM Northwind.dbo.Products 

SELECT LEN('   Olugbenga Oguntokun') 

SELECT LEN( LTRIM('   Olugbenga Oguntokun') )  

SELECT  ProductName,
		QuantityPerUnit,
		CHARINDEX(' ', QuantityPerUnit) AS IndexOfSpaceCharacter 
FROM Northwind.dbo.Products 


SELECT ProductName,
   QuantityPerUnit,
   CHARINDEX(' ', QuantityPerUnit) AS IndexOfSpaceCharacter,
   SUBSTRING(QuantityPerUnit, 1, [LENGTH]) AS Quantity 
FROM Northwind.dbo.Products 

SELECT ProductName, 
   QuantityPerUnit,
   CHARINDEX(' ', QuantityPerUnit) AS IndexOfSpaceCharacter,
   SUBSTRING(QuantityPerUnit, 1, CHARINDEX(' ', QuantityPerUnit)) AS Quantity
FROM Northwind.dbo.Products 

SELECT ProductName,
   QuantityPerUnit,
   CHARINDEX(' ', QuantityPerUnit)										AS IndexOfSpaceCharacter,
   SUBSTRING(QuantityPerUnit, 1, CHARINDEX(' ', QuantityPerUnit) - 1)	AS Quantity
FROM Northwind.dbo.Products 


-- REVERSE
SELECT REVERSE('olugbenga oguntokun') 

-- C
CREATE TABLE [dbo].[Student]( 
	[student_id] char NOT NULL,
	[first_name] varchar NOT NULL,
	[last_name] varchar NOT NULL,
	[course_id] char NOT NULL
) 

USE Practice
GO 
DROP TABLE IF EXISTS dbo.Planets

CREATE TABLE dbo.Planets ( 
	PlanetID INT NOT NULL IDENTITY(1,1),
	PlanetName NVARCHAR(50) NOT NULL
) 
ALTER TABLE Planets
	ADD PRIMARY KEY (PlanetID) 


INSERT INTO Planets (PlanetName) 
VALUES  ('Mercury'),
		('Venus'),
		('Earth'),
		('Mars'),
		('Jupiter'),
		('Saturn'),
		('Uranus'),
		('Neptune') 


SELECT * FROM dbo.Planets 

SELECT COUNT(*)
FROM dbo.Planets 

SELECT SUM(Quantity)
FROM [Northwind].[dbo].[Order Details] 






-- Conversion Functions
SELECT 15 + '15' 

SELECT 'Some random string and the number ' + 10 

SELECT 'Some random string and the number ' + CAST(10 AS VARCHAR(3) )

SELECT 'Some random string and the number ' + CONVERT( VARCHAR(3), 10 ) 


SELECT 9.5							AS Original,
       CAST(9.5 AS INT)				AS [int],
       CAST(9.5 AS DECIMAL(6, 4))	AS [decimal]; 

 
SELECT 9.5							AS Original,
       CONVERT(INT, 9.5)			AS [int],
       CONVERT(DECIMAL(6, 4), 9.5)	AS [decimal]; 



SELECT GETDATE()								AS CURRENT_DATE_TIME,
	   CONVERT(DATE, GETDATE())					AS CURRENT_DATE_ONLY,
	   CONVERT(TIME, GETDATE())					AS CURRENT_TIME_ONLY,
	   CONVERT(VARCHAR(12), GETDATE())			AS SHORT_MONTH_NAME,
	   CONVERT(VARCHAR(10), GETDATE(), 1)		AS US_WITHOUT_CENTURY, 
	   CONVERT(VARCHAR(10), GETDATE(), 101)		AS US_WITH_CENTURY,
	   CONVERT(VARCHAR(10), GETDATE(), 2)		AS ANSI_WITHOUT_CENTURY, 
	   CONVERT(VARCHAR(10), GETDATE(), 102)		AS ANSI_WITH_CENTURY,
	   CONVERT(VARCHAR(10), GETDATE(), 3)		AS BRITISH_FRENCH_WITHOUT_CENTURY, 
	   CONVERT(VARCHAR(10), GETDATE(), 103)		AS BRITISH_FRENCH_WITH_CENTURY,
	   CONVERT(VARCHAR(10), GETDATE(), 120)		AS ODBC_CANONICAL



SELECT CAST('04/25/2024' AS INT)

SELECT TRY_CAST('04/25/2024' AS INT)

SELECT CONVERT(INT, '04/25/2024')

SELECT TRY_CONVERT(INT, '04/25/2024')


SELECT 1 + 2 + 3 + 4 + 5 + 6 + 14 + 18 + 19 + 20 AS [SUM TOTAL]

SELECT (1 + 2 + 3 + 4 + 5 + 6 + 14 + 18 + 19 + 20) / 10.0 AS AVERAGE

USE Practice 
GO 
CREATE TABLE dbo.[Aggregate] ( 
series INT NOT NULL 
) 

INSERT INTO dbo.[Aggregate] 
VALUES(1),(2),(3),(4),(5),(6),(14),(18),(19),(20) 

SELECT * FROM dbo.[Aggregate]

SELECT SUM(series) AS Total 
  ,AVG(series) AS Average 
FROM dbo.[Aggregate]

SELECT SUM(series) AS Total 
  ,AVG(CAST(series AS decimal(4,2))) AS Average 
FROM dbo.[Aggregate]

SELECT COUNT(series) AS [Number of rows]
FROM dbo.[Aggregate]

USE Practice 
GO 
CREATE TABLE dbo.[Aggregate2] ( 
series INT NULL 
) 

INSERT INTO dbo.[Aggregate2] 
VALUES(1),(2),(3),(4),(5),(6),(14),(18),(19),(20),(NULL) 

SELECT * FROM dbo.[Aggregate2]

SELECT COUNT(*)		 AS [Asterix COUNT],
	   COUNT(series) AS [Regular COUNT]
FROM dbo.[Aggregate2]

SELECT CustomerID, COUNT(OrderID) AS OrderCount
FROM Northwind.dbo.Orders
GROUP BY CustomerID

SELECT Products.ProductName, 
	   SUM([Order Details].Quantity * [Order Details].UnitPrice) AS TotalRevenue
FROM Northwind.dbo.[Order Details]
	INNER JOIN Northwind.dbo.Products
		ON [Order Details].ProductID = Products.ProductID
GROUP BY Products.ProductName

SELECT EmployeeID, COUNT(OrderID) AS TotalOrders
FROM Northwind.dbo.Orders
GROUP BY Orders.EmployeeID
HAVING COUNT(OrderID) > 50


SELECT OrderDate AS [Date of Order],
	   COUNT(OrderID) AS [Number of Orders]
FROM Northwind.dbo.Orders
WHERE ShipCountry = 'USA'
GROUP BY OrderDate
HAVING COUNT(OrderID) > 1
ORDER BY [Date of Order] DESC

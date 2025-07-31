-- FUNCTIONS
SELECT LEN ('Just another string')

SELECT LEN('the brown fox jumped over the fence')

-- PILLARS OF PROGRAMMING
---- 1. Encapsulate 
---- 2. Abstraction
---- 3. Composability
-- code to count characters
-- free code

-- Find the length of each customer's last name:

SELECT LastName, LEN(LastName) AS LastNameLength
FROM SalesLT.Customer

-- Retrieve products where the name is more than 20 characters long.
SELECT ProductID, [Name]
FROM SalesLT.[Product]
WHERE LEN([Name]) > 20

-- Get the first 3 characters of each customer's first name
SELECT FirstName ,LEFT(FirstName, 3)  AS ShortName 
FROM SalesLT.Customer 

-- Get the last 4 characters of each customer's last name
SELECT LastName, RIGHT(LastName, 4) AS EndName
FROM SalesLT.Customer

-- Convert all customer names (first and last) to lowercase
SELECT LOWER(FirstName) AS FirstName, LOWER(LastName) AS LastName
FROM SalesLT.Customer


-- Display all product names in uppercase
SELECT UPPER([Name]) AS ProductName
FROM SalesLT.[Product]

-- SUBSTRING (Extract a Portion of String)

-- Extract the middle 3 characters of each customer's first name.
SELECT FirstName,
		SUBSTRING(FirstName, 2, 3) Middle3Characters
FROM SalesLT.Customer

-- TAKE HOME QUESTIONS

-- Retrieve the first 5 characters of each product name starting from the 2nd character

-- Find the position of the first occurrence of 'o' in customer last name

-- Extract the first 3 letters of a customer’s name and convert to uppercase

-- Find the position of the first 'a' in the last name, then extract the substring

-- Display customers and extract the first 2 characters of the company name from SalesOrderHeader

-- Reverse employee first names and show their lengt

/*
1. Retrieve all columns and rows from the Customers table.

2. Select the ProductName column from the Products table.

3. List the FirstName and LastName columns from the Employees table.

4. Display all rows and columns from the Orders table.

5. Select the CompanyName and City columns from the Suppliers table.

6. Retrieve the ProductName column from the Products table and rename it as Item.

7. Select CustomerID and CompanyName from the Customers table, renaming them as ID and Name.

8. Display OrderID and OrderDate from the Orders table, with aliases ID and Date.

9. Retrieve the ShipCity column from the Orders table and alias it as ShippingCity.

10. Select CategoryName from the Categories table and rename it as Category.

11. Retrieve the distinct Country values from the Customers table.

12. Get a list of unique ShipCity values from the Orders table.

13. Find all the distinct Region values from the Employees table.

14. Display the unique City values from the Suppliers table.

15. Retrieve distinct CategoryID values from the Products table.

16. Retrieve all columns from the Products table and sort the results by ProductName in ascending order.

17. Display all rows from the Customers table, sorted by City in descending order.

18. Select OrderID and OrderDate from the Orders table, sorted by OrderDate in ascending order.

19. Retrieve EmployeeID and LastName from the Employees table, sorted by LastName alphabetically.

20. List CategoryName from the Categories table, sorted by CategoryName in descending order.

21. Retrieve the UnitPrice from the Products table, and calculate a 10% discount on each price. Display the result as DiscountedPrice

22. Select the OrderID and calculate the total cost of each order in the Order Details table by multiplying UnitPrice and Quantity. Alias the result as TotalCost.

23. Retrieve the EmployeeID from the Employees table and calculate the length of their FirstName. Alias the result as NameLength.

24. Calculate the total value of stock for each product in the Products table by multiplying UnitPrice and UnitsInStock. Alias the result as StockValue.

25. Combine the FirstName and LastName of employees in the Employees table into a single field called FullName.

26. Use a conditional expression to display ProductName and label products in the Products table as LowStock if UnitsInStock is less than 50.

27. Retrieve EmployeeID and check if the Region column in the Employees table is NULL. If so, display 'No Region' using a conditional expression.

28. Show OrderID and calculate a shipping priority in the Orders table. If the Freight cost is over $100, label it as HighPriority; otherwise, label it as Standard.

29. Retrieve ProductName and check if ReorderLevel in the Products table is NULL. Replace NULL values with 'Not Set' using COALESCE.

30. Calculate an employee’s full tenure in days in the Employees table by subtracting the HireDate from the current date. Alias the result as TenureDays.

31. Select the first three characters of CustomerID from the Customers table and alias it as ShortID.

32. Convert the CompanyName from the Suppliers table to uppercase and alias it as UpperName.

33. Retrieve the City column from the Customers table and replace occurrences of 'London' with 'LND' using REPLACE.

34. Trim leading and trailing spaces from the ContactName in the Customers table using LTRIM and RTRIM.

35. Extract the domain (everything after '@') from the Email field (assuming such a field exists) in a hypothetical Customers table.
*/

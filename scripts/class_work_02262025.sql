USE Practice
GO
/*
3. Create two tables, Order and OrderDetail In your practice db.
	Order should have columns:
	OrderID, CustomerID, OrderDate, and OrderTotal.
	OrderDetail should have OrderDetailID, OrderID, ProductID, Quantity and
	UnitPrice. Set up the appropriate Primary Keys and a Foreign Key relationship
	between the two tables.
	Create a new table called Customer with the following columns:
	CustomerID, CustomerName, Address, City, State, Zip. Add a foreign key 
	relationship between the Order and your new customer table. Don't forget
	to add a primary key to your new customer table.

*/
CREATE TABLE [Order](
	OrderID INT NOT NULL, 
	CustomerID INT NOT NULL, 
	OrderDate DATETIME NOT NULL,
	OrderTotal DECIMAL(12,2)
)

GO

CREATE TABLE OrderDetail(
	OrderDetailID INT NOT NULL, 
	OrderID INT NOT NULL, 
	ProductID INT NOT NULL, 
	Quantity INT NOT NULL,
	UnitPrice DECIMAL(12,2)
)

GO

ALTER TABLE [Order]
ADD PRIMARY KEY (OrderID)

ALTER TABLE [OrderDetail]
ADD PRIMARY KEY (OrderDetailID)

ALTER TABLE OrderDetail
ADD FOREIGN KEY (OrderID)
REFERENCES [Order] (OrderID)

/*
Add the following data to all the tables created. Each line is a row in the table.
Customer Data:
[1, 'Chris Tucker', '354 Mary Way', 'Annapolis', 'MD', 23345]
[2, 'Wendell Pierce', '6 Brick St.', 'Richmond', 'VA', 240876]
[3, 'Bailey Song', '67 Capitol Blvd', 'Glen Allen', 'VA', 23059]
[4, 'Mary McCord', '12 Santos Dr.', 'Rivers', 'MD', 23445]
[5, 'John Little', '69 Peace St.', 'Wahiho', 'HI', 78521]
[6, 'Tade Oyebade', '3025 University Dr.', 'Durham', 'NC', 27703]
[7, 'Melvin Mebane', '16 Sunset Blvd', 'Reno', 'NV', 58726]
[8, 'Anthony Bright', '45 Pebblestone Dr.', 'Raleigh', 'NC', 27205]
[9, 'Troy Nemoy', '45 Sidney Ln', 'Silver Spring', 'MD', 23645]
[10, 'Angela Basset', '32 Littleton St.', 'Hollywood', 'CA', 90210]

Order Data:
[1000, 4, '01/04/2025', 500]
[1001, 1, '02/10/2025', 1000]
[1002, 4, '01/06/2025', 410.50]
[1003, 9, '02/12/2025', 650.99]
[1004, 2, '01/20/2025', 500]

OrderDetail Data:
[1500, 1000, 60, 10, 25]
[1501, 1000, 61, 5, 10]
[1502, 1000, 20, 10, 20]
[1503, 1004, 40, 10, 50
[1504, 1002, 50, 10, 41.05]
[1505, 1001, 60, 40, 25
[1506, 1003, 60, 10, 65.10]

*/
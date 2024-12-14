--  join example
SELECT  name,firstname,AGE,AMOUNT  FROM CUSTOMERS, CUST_ORDERS
        WHERE  CUSTOMERS.ID = CUST_ORDERS.CUSTOMER_ID;

SELECT ID, NAME, AGE, AMOUNT  FROM CUSTOMERS, ORDERS
        WHERE  CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

SELECT  name,firstname,AGE,AMOUNT FROM CUSTOMERS, CUST_ORDERS;

SELECT  SUM(SALARY) AS TotalItemsOrdered FROM CUSTOMERS

SELECT * FROM table_name;
-- It collets all data.

SELECT column_name,column_name
FROM table_name;
-- It collects particular columns.

-- SELECT <Column List>
-- FROM <Table Name>
-- WHERE <Search Condition>

SELECT FirstName, LastName, OrderDate
FROM Orders WHERE OrderDate > '10/10/2010'

-- The GROUP BY Statement
-- The GROUP BY statement is used in conjunction with the aggregate functions to group the result-set by one or more columns.
-- Syntax-
-- SELECT column_name, aggregate_function(column_name)
-- FROM table_name
-- WHERE column_name operator value
-- GROUP BY column_name;

-- How to group data and use aggregates
-- SELECT <Column List>, <Aggregate Function>(<Column Name>)
-- FROM <Table Name>
-- WHERE <Search Condition>
-- GROUP BY <Column List>

SELECT LastName, SUM(OrderValue)
FROM Orders
WHERE OrderDate > '10/10/2010'
GROUP BY LastName

SELECT FirstName, SUM(SALARY)
FROM CUSTOMERS
WHERE AGE > 35
GROUP BY firstname

SELECT firstname, SUM(SALARY) FROM CUSTOMERS GROUP BY firstname;

select * into empd from employee where eid <= 65
select * from empd
	
update empd 
set department='asp' where eid=44 OR eid=16
update empd 
set department='php' where eid=33 OR eid=65 or eid=23

select department , SUM(salary) as 'Total salary' from empd group by department
select department , SUM(salary) as 'Total salary' from empd group by department having sum(salary)>58000

-- How to order data
-- You can use a column alias in the ORDER BY clause for sorting.
-- SELECT <Column List>
-- FROM <Table Name>
-- WHERE <Search Condition>
-- ORDER BY <Column List>

SELECT FirstName, LastName, OrderDate
FROM Orders
WHERE OrderDate > '10/10/2010'
ORDER BY OrderDate

SELECT address, firstname
FROM CUSTOMERS
WHERE age > 30
ORDER BY ADDRESS


-- The SELECT DISTINCT statement is used to return only different values.
-- SELECT DISTINCT column_name,column_name
-- FROM table_name;

Select distinct city from customers;

Select distinct firstname from customers;

-- The WHERE clause is used to filter records.
-- SELECT column_name,column_name
-- FROM table_name
-- WHERE column_name operator value;
SELECT * FROM Customers
WHERE Country='Mexico';
-- There are many operators that we also use here-
-- =	Equal
-- !=	Not equal. Note: In some versions of SQL this operator may be written as !=
-- >	Greater than
-- <	Less than
-- >=	Greater than or equal
-- <=	Less than or equal
-- BETWEEN	Between an inclusive range
-- LIKE	Search for a pattern
-- IN	To specify multiple possible values for a column

-- Text Fields vs. Numeric Fields
-- SQL requires single quotes around text values and in numeric fields no quotes are required.
SELECT * FROM Customers
WHERE CustomerID=1;

-- The SQL AND & OR Operators-
-- The AND operator displays a record if both the first condition AND the second condition are true.
-- The OR operator displays a record if either the first condition OR the second condition is true.

SELECT * FROM Customers
WHERE Country='Germany'
AND (City='Berlin' OR City='München');
SELECT * FROM Customers
WHERE Country='Germany'
AND City='Berlin';

-- The ORDER BY keyword is used to sort the result-set. In this it set the data in ascending order.
-- SELECT column_name, column_name
-- FROM table_name
-- ORDER BY column_name;
SELECT * FROM Customers
ORDER BY Country;
-- It give all country names in ascending order.

-- ORDER BY DESC -
-- The following SQL statement selects all customers from the "Customers" table, sorted DESCENDING by the "Country" column:
SELECT * FROM Customers
ORDER BY Country DESC;
-- This give results in descending order.
-- ORDER BY Several Columns Example
-- The following SQL statement selects all customers from the "Customers" table, sorted by the "Country" and the "CustomerName" column:
SELECT * FROM Customers
ORDER BY Country, CustomerName;

-- Desc order-
SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;

-- The SELECT TOP clause is used to specify the number of records to return.
-- The SELECT TOP clause can be very useful on large tables with thousands of records. Returning a large number of records can impact on performance.
-- SQL SELECT TOP Equivalent in MySQL and Oracle
-- MySQL Syntax
SELECT column_name(s)
FROM table_name
LIMIT number;

SELECT *
FROM Persons
LIMIT 5;
-- Oracle Syntax
SELECT column_name(s)
FROM table_name
WHERE ROWNUM <= number;

SELECT *
FROM Persons
WHERE ROWNUM <=5;

-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
-- SELECT column_name(s)
-- FROM table_name
-- WHERE column_name LIKE pattern;

SELECT * FROM Customers
WHERE City LIKE 's%';
-- IN THIS IT GIVE the string that is started with s.
-- In this it give string that is end with s.
SELECT * FROM Customers
WHERE ADDRESS LIKE 'e%';

SELECT * FROM Customers
WHERE City LIKE '%s';
-- The following SQL statement selects all customers with a Country containing the pattern "land":
SELECT * FROM Customers
WHERE Country LIKE '%land%';
-- Using the NOT keyword allows you to select records that do NOT match the pattern.
-- The following SQL statement selects all customers with Country NOT containing the pattern "land":
SELECT * FROM Customers
WHERE Country NOT LIKE '%land%';

-- SQL Wildcard Property-
-- In this we select any string from table.

SELECT * FROM Customers
WHERE City LIKE '_erlin';
-- By this command it selects all customers with a City starting with any character, followed by "erlin".
-- Next is
SELECT * FROM Customers
WHERE City LIKE '[bsp]%';
-- This SQL statement selects all customers with a City starting with "b", "s", or "p":
-- We can also use this
SELECT * FROM Customers
WHERE City LIKE '[a-c]%';
-- It selects all customers with a City starting with "a", "b", or "c".
SELECT * FROM Customers
WHERE City LIKE '[!bsp]%';
-- or
SELECT * FROM Customers
WHERE City NOT LIKE '[bsp]%';
-- This SQL statement selects all customers with a City NOT starting with "b", "s", or "p":

-- The IN operator allows you to specify multiple values in a WHERE clause.
-- SELECT column_name(s)
-- FROM table_name
-- WHERE column_name IN (value1,value2,...);
SELECT * FROM Customers
WHERE City IN ('Paris','London');

-- The BETWEEN operator is used to select values within a range.The values can be numbers, text, or dates.
-- SELECT column_name(s)
-- FROM table_name
-- WHERE column_name BETWEEN value1 AND value2;

-- The following SQL statement selects all products with a price BETWEEN 10 and 20:

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

-- To display the products outside the range of the previous example, use NOT BETWEEN
SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

-- The following SQL statement selects all products with a price BETWEEN 10 and 20, but products with a CategoryID of 1,2, or 3 should not be displayed:
SELECT * FROM Products
WHERE (Price BETWEEN 10 AND 20)
AND NOT CategoryID IN (1,2,3);

-- BETWEEN Operator with Text Value Example-
-- The following SQL statement selects all products with a ProductName beginning with any of the letter BETWEEN 'C' and 'M':

SELECT * FROM Products
WHERE ProductName BETWEEN 'C' AND 'M';

-- NOT BETWEEN Operator with Text Value Example-
-- The following SQL statement selects all products with a ProductName beginning with any of the letter NOT BETWEEN 'C' and 'M':

SELECT * FROM Products
WHERE ProductName NOT BETWEEN 'C' AND 'M';

-- SQL aliases are used to temporarily rename a table or a column heading.

-- SELECT column_name AS alias_name
-- FROM table_name;
-- SQL Alias Syntax for Tables
-- SELECT column_name(s)
-- FROM table_name AS alias_name;

SELECT CustomerName AS Customer, ContactName AS [Contact Person]
FROM Customers;
SELECT CustomerName, Address+', '+City+', '+PostalCode+', '+Country AS Address
FROM Customers;
-- In this it create temporary column Address that contains a address,city,postal code,country.

-- keep remember the typing here
SELECT firstname, Address+', '+firstname AS fulldetails
FROM Customers;

-- SQL Joins-
-- IN this operation we join the two tables.In these two table atleast one column name is need to be same.
-- There are four types if join-
-- INNER JOIN: Returns all rows when there is at least one match in BOTH tables
-- LEFT JOIN: Return all rows from the left table, and the matched rows from the right table
-- RIGHT JOIN: Return all rows from the right table, and the matched rows from the left table
-- FULL JOIN: Return all rows when there is a match in ONE of the tables

-- A.Inner Joins(Equi join)-only matching rows retrieved no null rows retrieved here
-- B.Outer Joins
-- i.Left Outer Join-it includs null considr the first or left table
-- ii.Right Outer Join-consider right table and compare t totally 
-- iii. Full outer
-- C.Cross Joins-no on clause and prints cartesisan product table records 10*4=40 record
-- D.Self Joins-join table itself
-- E.Equi Joins    

-- SELECT <Column List>
-- FROM <Table1> JOIN <Table2>
-- ON <Table1>.<Column1> = <Table2>.<Column1>
-- select data from more than one table
SELECT Orders.LastName, Countries.CountryName
FROM Orders JOIN Countries ON
Orders.CountryID = Countries.ID

SELECT CUST_ORDERS.name, CUSTOMERS.firstname
FROM CUST_ORDERS JOIN CUSTOMERS ON
CUST_ORDERS.ID = CUSTOMERS.ID

SELECT  name,firstname,AGE,AMOUNT  FROM CUSTOMERS INNER JOIN CUST_ORDERS
        on  CUSTOMERS.ID = CUST_ORDERS.CUSTOMER_ID;
        
SELECT  name,firstname,AGE,AMOUNT  FROM CUSTOMERS RIGHT JOIN CUST_ORDERS
        on  CUSTOMERS.ID = CUST_ORDERS.CUSTOMER_ID;

SELECT  name,firstname,AGE,AMOUNT  FROM CUSTOMERS LEFT JOIN CUST_ORDERS
        on  CUSTOMERS.ID = CUST_ORDERS.CUSTOMER_ID;

SELECT  name,firstname,AGE,AMOUNT  FROM CUSTOMERS FULL JOIN CUST_ORDERS
        on  CUSTOMERS.ID = CUST_ORDERS.CUSTOMER_ID;

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

-- Inner Joins  
-- first way
select  empdetails.eid ,  ename, department, designation, doj, mobile, city, dob 	from empcompany inner join empdetails on empcompany.eid=empdetails.eid
	
-- second way
select  ec.eid , ename, department, designation,  doj, mobile, city, dob from empcompany ec join empdetails ed on ec.eid=ed.eid
	
-- third way
select  ec.eid , ename, department, designation, doj, mobile, city, dob from empcompany ec , empdetails ed where ec.eid=ed.eid

select  ec.eid ,  ename, department,designation, doj, mobile,city, dob,hobby, interest from empcompany ec , empdetails ed  , empextra ee where ec.eid=ed.eid and ed.eid = ee.eid

-----------------------------Outer Join -------------------------------------
---- Left Outer Join ----------------
create table A(eid int, ename varchar(20) , edepartment varchar(20))
insert into A values(1,'deepak','IT')
insert into A values(2,'ajay','Sales')
insert into A values(3,'sanjay','Bussines')
	
create table B(eid int , ecity varchar(20), emobile varchar(10))
insert into B values(1,'Agra','989747847')
insert into B values(2,'Delhi','987457474')
insert into B values(4,'Noida','98745747')
	
select * from A
select * from B
select A.eid , ename , edepartment , ecity , emobile from A left outer join B on A.eid = B.eid
select B.eid , ename , edepartment , ecity , emobile from A right outer join B on A.eid = B.eid
select A.eid , ename , edepartment , ecity , emobile from A full outer join B on A.eid = B.eid
	
     
create table A(eid int, ename varchar(20) , edepartment varchar(20))

insert into A values(1,'deepak','IT')
insert into A values(2,'ajay','Sales')
insert into A values(3,'sanjay','Bussines')

create table B(eid int , ecity varchar(20), emobile varchar(10))

insert into B values(1,'Agra','989747847')
insert into B values(2,'Delhi','987457474')
insert into B values(4,'Noida','98745747')

select * from A
select * from B

select A.eid , ename , edepartment , ecity , emobile from A left outer join B on A.eid = B.eid

select B.eid , ename , edepartment , ecity , emobile from A right outer join B on A.eid = B.eid

select A.eid , ename , edepartment , ecity , emobile from A full outer join B on A.eid = B.eid
---------------------------------------------------------self join----------------
-- eid name managerid
-- 	1    mike
-- 	2    todd
-- 	3
-- 	4
-- 	5

-- The LEFT JOIN keyword returns all rows from the left table (table1), with the matching rows in the right table (table2). The result is NULL in the right side when there is no match.
-- Syntax-
-- SELECT column_name(s)
-- FROM table1
-- LEFT JOIN table2
-- ON table1.column_name=table2.column_name;
-- or:
-- SELECT column_name(s)
-- FROM table1
-- LEFT OUTER JOIN table2
-- ON table1.column_name=table2.column_name;

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

SELECT Shippers.ShipperName,COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers
ON Orders.ShipperID=Shippers.ShipperID
GROUP BY ShipperName;

-- The RIGHT JOIN keyword returns all rows from the right table (table2), with the matching rows in the left table (table1). The result is NULL in the left side when there is no match.
SELECT Orders.OrderID, Employees.FirstName
FROM Orders
RIGHT JOIN Employees
ON Orders.EmployeeID=Employees.EmployeeID
ORDER BY Orders.OrderID;

-- SQL FULL OUTER JOIN Keyword-
-- The FULL OUTER JOIN keyword returns all rows from the left table (table1) and from the right table (table2).
-- The FULL OUTER JOIN keyword combines the result of both LEFT and RIGHT joins.
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

-- The SQL UNION operator combines the result of two or more SELECT statements.
-- Syntax-
-- SELECT column_name(s) FROM table1
-- UNION
-- SELECT column_name(s) FROM table2;

-- It select only distinct values to select all records use union all operator.
-- SELECT column_name(s) FROM table1
-- UNION ALL
-- SELECT column_name(s) FROM table2;


-- Using UNION
-- Union, Intersect or Minus operators are called set operators.
-- SELECT <Column List> FROM <Table1>
-- UNION
-- SELECT <Column List> FROM <Table2>

SELECT FirstName, LastName FROM Orders2010
UNION
SELECT FirstName, LastName FROM Orders2011

SELECT FirstName FROM CUSTOMERS
UNION
SELECT name FROM CUST_ORDERS

SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;

SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

-- Both UNION and UNION ALL is used to select information from structurally similar tables. That means corresponding columns specified in the union should have same data type. For example, in the above query, if FIRST_NAME is DOUBLE and LAST_NAME is STRING above query wont work. Since the data type of both the columns are VARCHAR, union is made possible. Difference between UNION and UNION ALL is that , UNION query return only distinct values. 

-- SQL Functions
-- SQL has many built-in functions for performing calculations on data.

-- SQL aggregate functions return a single value, calculated from values in a column.
-- AVG() - Returns the average value of a numeric column
-- COUNT() - Returns the number of rows
-- FIRST() - Returns the first value of the selected column.
-- LAST() - Returns the last value of the selected column.
-- MAX() - Returns the largest value of the selected column.
-- MIN() - Returns the smallest value of the selected column.
-- SUM() - function returns the total sum of a numeric column.

-- SQL scalar functions return a single value, based on the input value.
-- UCASE() - Converts a field to upper case 
-- LCASE() - Converts a field to lower case 
-- MID() - Extract characters from a text field
-- LEN() - Returns the length of a text field 
-- ROUND() - Rounds a numeric field to the number of decimals specified 
-- NOW() - Returns the current system date and time 
-- FORMAT() - Formats how a field is to be displayed 

SELECT AVG(Price) AS PriceAverage FROM Products;
SELECT AVG(salary) AS PriceAverage FROM dbo.CUSTOMERS;
SELECT ProductName, Price FROM Products
WHERE Price>(SELECT AVG(Price) FROM Products);

-- The COUNT(column_name) function returns the number of values (NULL values will not be counted) of the specified column:
-- SELECT COUNT(column_name) FROM table_name;
-- SQL COUNT(*) Syntax
-- The COUNT(*) function returns the number of records in a table:
-- SELECT COUNT(*) FROM table_name;
SELECT COUNT(*) AS NumberOfOrders FROM Orders;
SELECT COUNT(*) AS NumberOfOrders FROM dbo.CUST_ORDERS;
SELECT COUNT(DISTINCT CustomerID) AS NumberOfCustomers FROM Orders;

-- SELECT FIRST(column_name) FROM table_name;
SELECT FIRST(CustomerName) AS FirstCustomer FROM Customers;

-- SELECT LAST(column_name) FROM table_name;
SELECT LAST(CustomerName) AS LastCustomer FROM Customers;

-- SELECT MAX(column_name) FROM table_name;
-- SELECT MAX(Price) AS HighestPrice FROM Products;

-- SELECT MIN(column_name) FROM table_name;
SELECT MIN(Price) AS SmallestOrderPrice FROM Products;

-- SELECT SUM(column_name) FROM table_name;
SELECT SUM(Quantity) AS TotalItemsOrdered FROM OrderDetails;

-- The HAVING Clause
-- The HAVING clause was added to SQL because the WHERE keyword could not be used with aggregate functions.
-- Syntax-
-- SELECT column_name, aggregate_function(column_name)
-- FROM table_name
-- WHERE column_name operator value
-- GROUP BY column_name
-- HAVING aggregate_function(column_name) operator value;

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders FROM (Orders
INNER JOIN Employees
ON Orders.EmployeeID=Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;

SELECT ID, NAME, AGE, ADDRESS, SALARY
FROM CUSTOMERS
GROUP BY age
HAVING COUNT(age) >= 2;

-- SELECT UCASE(column_name) FROM table_name;
SELECT UCASE(CustomerName) AS Customer, City
FROM Customers;

-- SELECT LCASE(column_name) FROM table_name;
SELECT LCASE(CustomerName) AS Customer, City
FROM Customers;

-- SELECT MID(column_name,start[,length]) AS some_name FROM table_name;
-- Parameter	Description
-- column_name	Required. The field to extract characters from
-- start	Required. Specifies the starting position (starts at 1)
-- length	Optional. The number of characters to return. If omitted, the MID() function returns the rest of the text
SELECT MID(City,1,4) AS ShortCity
FROM Customers;

-- SELECT LEN(column_name) FROM table_name;
SELECT CustomerName,LEN(Address) as LengthOfAddress
FROM Customers;

SELECT ProductName, ROUND(Price,0) AS RoundedPrice
FROM Products;

-- SELECT NOW() FROM table_name;
SELECT ProductName, Price, Now() AS PerDate
FROM Products;

-- SELECT FORMAT(column_name,format) FROM table_name;
SELECT ProductName, Price, FORMAT(Now(),'YYYY-MM-DD') AS PerDate
FROM Products;

Select count(*) as TablesCount from sys.tables
select count(*) as ProceduresCount from sys.procedures

-- Displaying details in order
select * from employee order by eid asc
select * from employee order by eid 
select * from employee order by eid desc

-- Retrieving the top details-
select top 3 * from employee
select top 3 eid ,name from employee
select top 3 * from employee order by salary desc
select top 3 * from employee order by salary 
SELECT * FROM CUSTOMERS LIMIT 3;
SELECT * FROM CUSTOMERS WHERE ROWNUM <= 3;
	
-- retrieving distinct values
select city from employee
select distinct city from employee
	
-- String functions – These are used to manipulate varchar or char type columns in the table.
select  ASCII('c') as 'ASCII VAlue'
select CHAR(97) as 'Character Value'
select CHARINDEX('e','hello')
select CHARINDEX('a',name) from employee
select name  from employee where CHARINDEX('a',name) = 5
select LEFT(name,3) from employee
select name  from employee where LEFT(name,3) = 'dee'
select right(name,3) from employee
select name  from employee where right(name,1) = 'a'

-- Equivalent like query
select name from employee where name like '%a'
	
select LEN(name) from employee
select name from employee where LEN(name) >4
select UPPER(name) from employee
select lower(name) from employee
	
select REPLACE(name,'ee','i') from employee
select name , REVERSE(name) as 'Reverse name ' from employee
select name from employee where name = REVERSE(name)
select stuff('weather',2,2,'i')
select name ,STUFF(name,2,3,'***') from employee
select name , SUBSTRING(name,2,3) from employee
select name , SUBSTRING(name,1,3) from employee -- same as left working
select name , SUBSTRING(name , len(name)-2,3) from employee --same as right working
select name + ' lives in '  + city  from employee
select eid + 'is : '+ name from employee--- error due to conversions
select CONVERT(char(3),eid) + 'is : ' + name from employee

-- Date Functions - These are used to manipulate the datatime coulmns values
-- Date parts -  Parameter Value    Description 
-- 	    yy,yyyy - year 2015    
-- 	    qq,q – quarter 2
-- 	    mm,m – month name- May    
-- 	    dy-- day of year - 139    
-- 	    day -- dd,d - 19    Day of the month
-- 	    week – wk - 21    Week of the year
-- 	    weekday – Dw - Tuesday    Day name of the week
-- 	    hour – hh -12    Hour of the date time passed
-- 	    minute -- mi
-- 	    second -- ss
-- 	    millisecond -- ms
-- 	 n    59    Minute of the date time passed
	
select GETDATE()
-- There is a built-in function in SQL called GetDate() which is used to return current timestamp.

-- To change the format of date we will use convert functions
select CONVERT(varchar(20),getdate(),1)
select CONVERT(varchar(20),getdate(),2)
select CONVERT(varchar(20),getdate(),3)--indian date
select CONVERT(varchar(20),getdate(),4)--indian date
select CONVERT(varchar(20),getdate(),5)--indian date
select CONVERT(varchar(20),getdate(),6)
select CONVERT(varchar(20),getdate(),7)
select CONVERT(varchar(20),getdate(),8)
select CONVERT(varchar(20),getdate(),9)--time
select CONVERT(varchar(20),getdate(),10)

-- To get name of a particular date, we can use DATENAME function in Sql Server.
-- To get integer part of a particular date, we can use DATEPART function in Sql Server.
select DAY(getdate())
select DATEPART(dd,getdate())
select DATENAME(dd,getdate())
	
select MONTH(getdate())
select DATEPART(mm,getdate())
select DATENAME(mm,getdate())
	
select YEAR(getdate())
select DATEPART(yy,getdate())
select DATENAME(yy,getdate())
	
select DATEPART(dw,getdate())
select DATENAME(dw,getdate())
select DATEPART(qq,getdate())
select DATEPART(dy,getdate())
select DATEPART(wk,getdate())
select DATEPART(hh,getdate())
select DATEPART(mi,getdate())
select DATEPART(ss,getdate())
select DATEADD(dd,5,getdate())
select DATEADD(mm,5,getdate())
select DATEADD(yy,5,getdate())
select DATEADD(dd,5,getdate()),DATEADD(mm,5,getdate()),DATEADD(yy,5,getdate())

select DATEDIFF(YY,dob,GETDATE()) from emp
select DATENAME(dw,dob) from emp
-- Mathematical Functions-
select ABS(23)
select ABS(-23)
	
select CEILING(8.3)
select Floor(8.3)
	
select ROUND(34.568,2)
select ROUND(34.568,1)
select ROUND(34.568,0)
select ROUND(34.568,-1) ---30.00
select ROUND(37.568,-1) --- 40.00
select ROUND(34.568,-2)--0.000
	
select PI()
select round(PI(),2)
select LOG(100)
select LOG10(100)
select POWER(4,3)
	
select RAND()
select floor(RAND()*10)
select floor(RAND()*100)
	
select SQRT(64)
select SQRT(63)
	
select SIGN(-33)
select SIGN(34)
select SIGN(0)
	
-- will return conutries whose temperature is less than 0-
select countryname from world where SIGN(countrytemperature) = -1 

select SUM(salary) from employee
select Avg(salary) from employee
select MAx(salary) from employee
select min(salary) from employee
select count(salary) from employee
select COUNT(city) from employee
select COUNT(distinct city) from employee

-----------------------------------Subqueries ---------------------------------
select * from A
select * from B
select * from employee where city in ('agra','delhi','noida')
select * from employee where city in ( select ecity from B )
select * from employee where city in ( select ecity from B where emobile='989747847')
select * from employee where city = (select ecity from B where emobile='989747847')
select * from employee where exists ( select ecity from B where emobile='98974784712')
select * from employee where exists ( select ecity from B where emobile='989747847')
-------------------------------------------Identity columns---------------------------------
-- WHERE SALARY LIKE '200%'    Finds any values that start with 200
-- WHERE SALARY LIKE '%200%'    Finds any values that have 200 in any position
-- WHERE SALARY LIKE '_00%'    Finds any values that have 00 in the second and third positions
-- WHERE SALARY LIKE '2_%_%'    Finds any values that start with 2 and are at least 3 characters in length
-- WHERE SALARY LIKE '%2'    Finds any values that end with 2
-- WHERE SALARY LIKE '_2%3'    Finds any values that have a 2 in the second position and end with a 3
-- WHERE SALARY LIKE '2___3'    Finds any values in a five-digit number that start with 2 and end with 3

-- multiple records at once
INSERT INTO MyDetails (FullName, City)
VALUES
 ('Ram', 'Mumbai') ,
 ('Shyam', 'Chennai') ,
('Mohan', 'Delhi')

-- select database-		
USE SqlHowTo  
		
SELECT * FROM PersonalDetails WHERE Age <> 30 //<> is same as !=
SELECT NEWID()  //To get a random unique value in SQL Server, we use NEWID function.
		
-- to retrieve random records
SELECT TOP 2 * FROM PersonalDetails ORDER BY NEWID()
		
-- Knowing SQL Server version in SQL Server
SELECT @@SERVERNAME, @@VERSION
SELECT @@MAX_CONNECTIONS
SELECT @@TEXTSIZE
		
-- give space b/w two columns values 
SELECT FirstName + SPACE(1) + LastName  FROM PersonalDetails 
		
-- concatenating more than one function
SELECT CONCAT(FirstName, SPACE(1),LastName, SPACE(1), Age,	space(2), Active ) FROm PersonalDetails
		
SELECT SYSDATETIME()
SELECT 	DAY(GETDATE()) as Day,	MONTH(GETDATE()) as Month,	YEAR(GETDATE()) As Year
SELECT	DATENAME(WEEKDAY, GETDATE()) as DayName, DATEPART(WEEKDAY, GETDATE()) as DayOfTheWeek, DATENAME(MONTH, GETDATE()) As MonthName
		
-- check for valid date
SELECT	ISDATE('15/16/2015') InValidDate, ISDATE(GETDATE()) ValidDate
		
-- To get the difference between two dates, we can use the DATEDIFF function.
SELECT	DATEDIFF(YY, '01/24/1977', GETDATE()) AgeInYears, DATEDIFF(MM, '01/24/1977', GETDATE()) AgeInMonths, DATEDIFF(DD, '01/24/1977', GETDATE()) AgeInDays

-- To convert a column value from one data type to another, we use CONVERT function.
SELECT	Convert(varchar(20), GETDATE()) DefaultFormat, Convert(varchar(20), GETDATE(), 101) DDMMYYYY, Convert(varchar(20), GETDATE(), 102) YYYYMMDD,	Convert(varchar(20), GETDATE(), 103) DDMMYYYY, Convert(varchar(20), GETDATE(), 104) 		

SELECT  Convert(varchar(20), GETDATE(), 105), Convert(varchar(20), GETDATE(), 106),	          Convert(varchar(20), GETDATE(), 107)
		
SELECT  Convert(varchar(20), GETDATE(), 108),	Convert(varchar(20), GETDATE(), 109),
Convert(varchar(20), GETDATE(), 110)
		
SELECT Convert(varchar(20), GETDATE(), 111),Convert(varchar(20), GETDATE(), 112),
Convert(varchar(20), GETDATE(), 113), Convert(varchar(20), GETDATE(), 114)
		
-- //To retrieve data in XML format from SQL Server database, we can use FOR XML <options> clause.  raw/auto
SELECT * FROM PersonalDetails FOR XML RAW 

select name from city where population>120000 and countrycode='usa'
select distinct city from station where STATION.ID%2=0

SELECT name, population FROM world WHERE name IN ('Brazil', 'Russia', 'India', 'China');

select PID , PNAME ,PSOLDDATE from nttdata
select pcost from nttdata where pcost>=5000
select * from nttdata where pid=217
select * from nttdata where pcompany like 'lg' OR pcompany like   'micromax' or pcompany like  'adidas'
SELECT * from nttdata where pquantity>=100 and pcost<=5000
select * from nttdata where pname like '[plt]%'  //Means value start either from p or l ot t
select * from nttdata where pname like '%[sk]'
select * from nttdata where pname like 'tv' or pname like 'refrigerator' or pname like 'phone'
select distinct pname from nttdata
select pname from nttdata where CHARINDEX('a',pname)=2
select substring(pname,1,3),SUBSTRING(pcompany,1,3) from nttdata
select pcompany from nttdata where len(pcompany)>5
select pname + ' is of Rs ' + CONVERT(char(5),pcost) + ' from company ' + pcompany from nttdata
select sum(pcost),avg(pcost) from nttdata
select pid,pname,'total cost'=pcost*pquantity from nttdata 
select * from nttdata where( MONTH(psolddate)= 11 And YEAR(psolddate) = 2014)
select * from nttdata where psolddate > DATEADD(m, -6, current_timestamp)
select max(pcost)from nttdata
select top 1 pcost from nttdata from (select distinct top 2 pcost from nttdata orderby pcost desc )
select distinct pcost from nttdata order by pcost desc limit 1 , 1 

-- SQL query to find names of employee start with 'A'?
SELECT * FROM Employees WHERE EmpName like 'A%'  

-- SQL query to get third maximum salary of an employee from a table named employee_table.
SELECT TOP 1 salary   
FROM (  
SELECT TOP 3 salary  
FROM employee_table  
ORDER BY salary DESC ) AS emp  
ORDER BY salary ASC;     

delete from newstype

select * from newscategory
delete from newscategory
delete  from newstype where title='yu'
select * from news
SELECT * From Editor
insert into Editor values(NEWID(),GETDATE(),1)
insert into places values('Delhi','10/01/2017',1)
insert into places values('Greater noida','11/02/2017',1)
delete from places
select * from places
select * from newscategory

delete from Person
insert into person values('6C1C21DA-D55E-4E46-A147-D172D98E6B8A',5,'raja','9654673477','raja@gmail.com','pi','chii','3-4-2016','12-11-1995','m','11/7/2017',1,'R')
insert into person values('69625F7D-B4D6-46E8-8BBC-5B0279FB05C5',3,'ram','9654673456','sam@gmail.com','alpha2','beta2','3-5-2016','11-11-1994','m','11/7/2016',1)
insert into person values('DC8C36D2-67B7-411C-8265-38A654B29279',4,'Anchal','9654673469','anc@gmail.com','alpha1','beta1','9-5-2016','7-11-1994','f','12/7/2016',1,'E')
alter table person alter column personid uniqueidentifier 
drop table person


select personName,Personid from Person where Personid in (select Editorid from News)
select * from news
select * from Editor
select * from Reporter
select * from Person
select Personid,PersonName from Person where Personid in (select id from Reporter)

select * from person
select Personid, PersonName from Person where Personid in (select id from Editor)

select * from News
alter table person add persontype char(1)
select * from person
select * from editor
delete from news
select * from newscategory
delete from newscategory where title='p'

delete from newstype where title='in'
select * from Places
insert into places values('meerut',GETDATE(),1)
insert into places values('Ghaziabad',GETDATE(),1)

select * from Editor
select Personid,Personname as editor from Person where Personid in (select id from Editor) 
select * from person
select * from places
delete from news
insert into person values('261630C5-0F07-4642-B648-A1C43D6ED8D1',13,'Saumya','8373673479','saumya@gmail.com','alpha10','beta10','1-8-2016','4-9-1994','f','12/8/2016',1,'R')
insert into person values('13B94FEC-FF76-48A0-BBEF-5DC33B636765',23,'shruti','8065373834','shruti@gmail.com','gamma10','delta10','1-10-2015','1-9-1994','f','11/8/2016',1,'E')

insert into places values('Assam','11/19/2016',1)
delete from places where name='Greater noida' 

select * from Editor
select * from Person

select * from news where newscategoryid=7
select personName from Person where in (select Editorid from news)
select * from aspnet_Users
select * from newscategory

alter table person add editordescription varchar(250) identity
select * from person
SET IDENTITY_INSERT dbo.person ON
ALTER TABLE person alter COLUMN editordescription   varchar(500) 
ALTER TABLE person alter COLUMN editorimage   varchar(500)
select Personid,Personname from Person where Personid in (select id from Editor) .

alter table person add editorimage varchar(500) 


select  * from news_master
select * from regiontable
select * from countrytable
select * from statetable
insert into statetable values('abc',1)


select First_Name,Last_Name from employee 
select First_name as "Employee Name" from employee
select UPPER(First_name) AS first_name from employee
select Lower(First_name) AS first_name from employee
DELETE FROM employee WHERE First_name = 'TestName2'
select distinct department from employee
7)select LEFT(First_name,3) from employee or
select substring(1,3) from employee

8)select CHARINDEX('o','john') from employee

9)select RTRIM(FIRST_NAME) from employee

10)select LTRIM(FIRST_NAME) from employee

11)select len(First_name) from employee

12)select REPLACE(First_name,'o','$') from employee

13)select First_name + '_'+ Last_name from employee
by using concat-

14)select First_name ,(Year(Joining_date)),(Month(Joining_date)),Joining_date from employee
year(doj),month(doj),day(doj)
datepart(yy,doj),datepart(mm,doj)--o/p 2014
datename(yy,doj),datename(mm,doj)--o/p  april

15)select * from employee order by First_name asc

16)select * from employee order by First_name desc

17)select * from employee order by First_name asc,salary desc

18)select * from employee where First_name='john'

19)select * from employee where First_name in ('John','roy')
20)select * from employee where First_name not in ('John','roy')
or select * from employee where First_name!='john' and First_name!='roy'
21)select * from employee where First_name like 'j%'
-- wildcards-
-- In like are %-any no. of characters (0 or more)e.g--'%a' ---manisha,rohan,a,abca
-- 'a%'-----
-- '%a%'----any place
-- '%ab%'---together ab
-- _
-- e.g'_a'---ba,ca,da
-- '__a'-----
-- '_a%'------
-- '%a_'----second last a
-- []
-- like '[ahl]'  or like 'a%' or like 'h%' or name like 'l%'
-- [^]
-- [^ah]---not starting with a or h


22)select * from employee where First_name like '%o%'

23)select * from employee where First_name like '%n'

24)select * from employee where First_name like '%n' And len(First_name)=4 
or
select * from employee where First_name like '___n'

25)select * from employee where First_name like 'j___'
select * from employee where Salary>600000
select * from employee where Salary<800000
select * from employee where Salary>=600000 and salary<=800000
Select * from EMPLOYEE where Salary between 500000 and 800000
Select * from EMPLOYEE where FIRST_NAME in ('John','Michael')
select * from employee where(YEAR(Joining_date) = 2013)
select * from employee where( MONTH(Joining_date)= 01 )
Select * from EMPLOYEE where joining_date < '01/01/2013'
Select * from EMPLOYEE where joining_date > '01/31/2013'
select Joining_date from employee
 select getdate()
 select Last_name from employee where Last_name like '%[%]%'
 select Replace(Last_name,'%',' ') from employee



create table Incentives(Employee_ref_id int,Incentive_date date,Incentive_amount int)

alter table employee alter column Joining_date date

select First_Name,Last_Name from employee 
select First_name as "Employee Name" from employee
select UPPER(First_name) AS first_name from employee
select Lower(First_name) AS first_name from employee

select distinct department from employee
select LEFT(First_name,3) from employee
select CHARINDEX('o','john') from employee
select len(First_name) from employee
select RTRIM(FIRST_NAME) from employee
select LTRIM(FIRST_NAME) from employee

select REPLACE(First_name,'o','$') from employee
select First_name + '_'+ Last_name from employee
select First_name ,(Year(Joining_date)),(Month(Joining_date)),Joining_date from employee
select * from employee order by First_name asc
select * from employee order by First_name desc
select * from employee order by First_name asc,salary desc
select * from employee where First_name in ('John','roy')
select * from employee where First_name not in ('John','roy')
select * from employee where First_name like 'j%'
select * from employee where First_name like '%o%'
select * from employee where First_name like '%n'
select * from employee where First_name like '%n' And len(First_name)=4
select * from employee where First_name like '___n'
select * from employee where First_name like 'j___'
select * from employee where Salary>600000
select * from employee where Salary<800000
select * from employee where Salary>=600000 and salary<=800000
Select * from EMPLOYEE where Salary between 500000 and 800000
Select * from EMPLOYEE where FIRST_NAME in ('John','Michael')
select * from employee where(YEAR(Joining_date) = 2013)
select * from employee where( MONTH(Joining_date)= 01 )
Select * from EMPLOYEE where joining_date < '01/01/2013'
Select * from EMPLOYEE where joining_date > '01/31/2013'
select Joining_date from employee
 select getdate()
 select Last_name from employee where Last_name like '%[%]%'
 select Replace(Last_name,'%',' ') from employee
 select Incentive_date - Joining_date from employee a inner join Incentives b on a.Employee_id=b.Employee_ref_id
 select department,sum(salary) from employee group by Department
 select * from employee where First_name!='john' and First_name!='roy'
 SELECT      create_date FROM        sys.databases WHERE       name = 'ibm'
 Select DEPARTMENT,sum(SALARY)  Total_Salary from employee group by DEPARTMENT order by Total_Salary desc
 Select DEPARTMENT,count(FIRST_NAME),sum(SALARY) Total_Salary from employee group by DEPARTMENT order by Total_Salary desc
 select DEPARTMENT,avg(SALARY) AvgSalary from employee group by DEPARTMENT order by AvgSalary asc
 select DEPARTMENT,max(SALARY) MaxSalary from employee group by DEPARTMENT order by MaxSalary asc
 select DEPARTMENT,min(SALARY) MinSalary from employee group by DEPARTMENT order by MinSalary asc
 select datepart (YYYY,JOINING_DATE) Join_Year,datepart (MM,JOINING_DATE) Join_Month,count(*) Total_Emp from employee group by datepart(YYYY,JOINING_DATE), datepart(MM,JOINING_DATE)
 Select DEPARTMENT,sum(SALARY) Total_Salary from employee group by DEPARTMENT having sum(SALARY) >800000 order by Total_Salary desc
 select * from EMPLOYEE where exists (select * from INCENTIVES)
 select * from EMPLOYEE where Employee_id INTERSECT select * from EMPLOYEE where EMPLOYEE_ID < 4
 select EMPLOYEE_ID from EMPLOYEE Except select EMPLOYEE_REF_ID from INCENTIVES
 SELECT FIRST_NAME, CASE FIRST_NAME WHEN 'John' THEN SALARY * .2 WHEN 'Roy' THEN SALARY * .10 ELSE SALARY * .15 END "Deduced_Amount" FROM EMPLOYEE
 SELECT case DEPARTMENT when 'Banking' then 'Bank Dept' when 'Insurance' then 'Insurance Dept' when 'Services' then 'Services Dept' end FROM EMPLOYEE
delete from employee where employee_id in  (select Employee_ref_id from Incentives)
Insert into employee (LAST_NAME) values ('Test''')
select Last_name from employee where Last_name like '%[0123456789]%'
Select * from EMPLOYEE where lower(LAST_NAME)=upper(LAST_NAME)
update Incentives set Incentive_amount='9000' where Employee_ref_id=(select Employee_id from employee where First_name='John' )

select min(SALARY) from (select top 2 * from employee) a
select FIRST_NAME from EMPLOYEE union select LAST_NAME from EMPLOYEE

select eid , name from employee

select eid , name from employee where eid=65

delete employee
drop table employee

select eid , name ,  salary as 'Old Salary','New salary '= (1.1) * salary from employee

select * from employee where name like 'a%' or name like 'd%' or name like 's%'

select * from employee where name like '[ads]%'
select * from employee where name like '[^ads]%'
select * from employee where name like '%[lkt]'
select * from employee where name like '[ads]%[lkt]'
select * from employee where name like '[ads]%k'

select * from employee where mobile is null
select * from employee where mobile is not null

CREATE TABLE Orders
( FirstName CHAR(100),
 LastName CHAR(100),
 OrderDate DATE,
 OrderValue Currency )

 -- SELECT NOW(),CURDATE(),CURTIME()

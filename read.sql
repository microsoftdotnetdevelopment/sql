
--  join example
SELECT ID, NAME, AGE, AMOUNT  FROM CUSTOMERS, ORDERS
        WHERE  CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

SELECT  ID, NAME, AMOUNT, DATE
     FROM CUSTOMERS
     INNER JOIN ORDERS
     ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

SELECT  ID, NAME, AMOUNT, DATE
     FROM CUSTOMERS
     RIGHT JOIN ORDERS
     ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

SELECT  ID, NAME, AMOUNT, DATE
     FROM CUSTOMERS
     LEFT JOIN ORDERS
     ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

SELECT  ID, NAME, AMOUNT, DATE
     FROM CUSTOMERS
     FULL JOIN ORDERS
     ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

SELECT  ID, NAME, AMOUNT, DATE
     FROM CUSTOMERS, ORDERS;

SELECT FROM WHERE GROUP BY HAVING ORDER BY

SELECT ID, NAME, AGE, ADDRESS, SALARY
FROM CUSTOMERS
GROUP BY age
HAVING COUNT(age) >= 2;

SELECT NAME, SUM(SALARY) FROM CUSTOMERS GROUP BY NAME;

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

-- SELECT <Column List>
-- FROM <Table1> JOIN <Table2>
-- ON <Table1>.<Column1> = <Table2>.<Column1>
-- select data from more than one table
SELECT Orders.LastName, Countries.CountryName
FROM Orders JOIN Countries ON
Orders.CountryID = Countries.ID

-- How to group data and use aggregates
-- SELECT <Column List>, <Aggregate Function>(<Column Name>)
-- FROM <Table Name>
-- WHERE <Search Condition>
-- GROUP BY <Column List>

SELECT LastName, SUM(OrderValue)
FROM Orders
WHERE OrderDate > '10/10/2010'
GROUP BY LastName

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

-- Using UNION
-- Union, Intersect or Minus operators are called set operators.
-- SELECT <Column List> FROM <Table1>
-- UNION
-- SELECT <Column List> FROM <Table2>

SELECT FirstName, LastName FROM Orders2010
UNION
SELECT FirstName, LastName FROM Orders2011

-- The SELECT DISTINCT statement is used to return only different values.
-- SELECT DISTINCT column_name,column_name
-- FROM table_name;

Select distinct city from customers;

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
ORDER BY Several Columns Example
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
In this it create temporary column Address that contains a address,city,postal code,country.

-- SQL Joins-
-- IN this operation we join the two tables.In these two table atleast one column name is need to be same.
-- There are four types if join-
-- INNER JOIN: Returns all rows when there is at least one match in BOTH tables
-- LEFT JOIN: Return all rows from the left table, and the matched rows from the right table
-- RIGHT JOIN: Return all rows from the right table, and the matched rows from the left table
-- FULL JOIN: Return all rows when there is a match in ONE of the tables

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

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

-- MySQL NOW() Function-
-- By this function you get date and time.

-- SELECT NOW(),CURDATE(),CURTIME()

-- SQL Functions
-- SQL has many built-in functions for performing calculations on data.
-- SQL Aggregate Functions
-- SQL aggregate functions return a single value, calculated from values in a column.

-- Useful aggregate functions:
-- AVG() - Returns the average value
-- COUNT() - Returns the number of rows
-- FIRST() - Returns the first value
-- LAST() - Returns the last value
-- MAX() - Returns the largest value
-- MIN() - Returns the smallest value
-- SUM() - Returns the sum

-- SQL Scalar functions
-- SQL scalar functions return a single value, based on the input value.
-- Useful scalar functions:
-- UCASE() - Converts a field to upper case
-- LCASE() - Converts a field to lower case
-- MID() - Extract characters from a text field
-- LEN() - Returns the length of a text field
-- ROUND() - Rounds a numeric field to the number of decimals specified
-- NOW() - Returns the current system date and time
-- FORMAT() - Formats how a field is to be displayed

-- The AVG() Function
-- The AVG() function returns the average value of a numeric column.

SELECT AVG(Price) AS PriceAverage FROM Products;

SELECT ProductName, Price FROM Products
WHERE Price>(SELECT AVG(Price) FROM Products);

-- The COUNT(column_name) function returns the number of values (NULL values will not be counted) of the specified column:
-- SELECT COUNT(column_name) FROM table_name;
-- SQL COUNT(*) Syntax
-- The COUNT(*) function returns the number of records in a table:
-- SELECT COUNT(*) FROM table_name;
SELECT COUNT(*) AS NumberOfOrders FROM Orders;
SELECT COUNT(DISTINCT CustomerID) AS NumberOfCustomers FROM Orders;

-- The FIRST() Function-
-- The FIRST() function returns the first value of the selected column.
-- SELECT FIRST(column_name) FROM table_name;

SELECT FIRST(CustomerName) AS FirstCustomer FROM Customers;

-- The LAST() Function
-- The LAST() function returns the last value of the selected column.
-- SELECT LAST(column_name) FROM table_name;

SELECT LAST(CustomerName) AS LastCustomer FROM Customers;

-- The MAX() Function
-- The MAX() function returns the largest value of the selected column.
-- SELECT MAX(column_name) FROM table_name;

-- SELECT MAX(Price) AS HighestPrice FROM Products;

-- The MIN() Function-
-- The MIN() function returns the smallest value of the selected column.
-- SELECT MIN(column_name) FROM table_name;

SELECT MIN(Price) AS SmallestOrderPrice FROM Products;

-- The SUM() Function
-- The SUM() function returns the total sum of a numeric column.
-- SELECT SUM(column_name) FROM table_name;

SELECT SUM(Quantity) AS TotalItemsOrdered FROM OrderDetails;

-- The GROUP BY Statement
-- The GROUP BY statement is used in conjunction with the aggregate functions to group the result-set by one or more columns.
-- Syntax-
-- SELECT column_name, aggregate_function(column_name)
-- FROM table_name
-- WHERE column_name operator value
-- GROUP BY column_name;

SELECT Shippers.ShipperName,COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers
ON Orders.ShipperID=Shippers.ShipperID
GROUP BY ShipperName;

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

-- The UCASE() Function
-- The UCASE() function converts the value of a field to uppercase.
-- SELECT UCASE(column_name) FROM table_name;

SELECT UCASE(CustomerName) AS Customer, City
FROM Customers;

-- The LCASE() Function
-- The LCASE() function converts the value of a field to lowercase.
-- SELECT LCASE(column_name) FROM table_name;

SELECT LCASE(CustomerName) AS Customer, City
FROM Customers;

-- The MID() Function
-- The MID() function is used to extract characters from a text field.
-- SELECT MID(column_name,start[,length]) AS some_name FROM table_name;
-- Parameter	Description
-- column_name	Required. The field to extract characters from
-- start	Required. Specifies the starting position (starts at 1)
-- length	Optional. The number of characters to return. If omitted, the MID() function returns the rest of the text

SELECT MID(City,1,4) AS ShortCity
FROM Customers;

-- The LEN() Function
-- The LEN() function returns the length of the value in a text field.
-- SELECT LEN(column_name) FROM table_name;

SELECT CustomerName,LEN(Address) as LengthOfAddress
FROM Customers;

-- The ROUND() Function
-- The ROUND() function is used to round a numeric field to the number of decimals specified.

SELECT ProductName, ROUND(Price,0) AS RoundedPrice
FROM Products;

-- The NOW() Function
-- The NOW() function returns the current system date and time.
-- SELECT NOW() FROM table_name;

SELECT ProductName, Price, Now() AS PerDate
FROM Products;

-- The FORMAT() Function
-- The FORMAT() function is used to format how a field is to be displayed.
-- SELECT FORMAT(column_name,format) FROM table_name;

SELECT ProductName, Price, FORMAT(Now(),'YYYY-MM-DD') AS PerDate
FROM Products;

Select count(*) as TablesCount from sys.tables
select count(*) as ProceduresCount from sys.procedures

select * from employee
select eid , name from employee
select eid , name from employee where eid=65
select eid , name ,  salary as 'Old Salary','New salary '= (1.1) * salary from employee
select * from employee where name like 'a%' or name like 'd%' or name like 's%'
SELECT * FROM Employees WHERE EmpName like 'A%'     
select * from employee where name like '[ads]%'
select * from employee where name like '[^ads]%'
select * from employee where name like '%[lkt]'
select * from employee where name like '[ads]%[lkt]'
select * from employee where name like '[ads]%k'	
select * from employee where mobile is null
select * from employee where mobile is not null

-- Displaying details in order
select * from employee order by eid asc
select * from employee order by eid 
select * from employee order by eid desc

-- Retrieving the top details-
select * from employee
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
	
-- Aggregate Functions-
-- Max(), Min() , Sum() , Avg() , Count()
select * from employee
select SUM(salary) from employee
select Avg(salary) from employee
select MAx(salary) from employee
select min(salary) from employee
select count(salary) from employee
select COUNT(city) from employee
select COUNT(distinct city) from employee
	

-- Joins
-- why do we need joins ??
-- A.Inner Joins(Equi join)-only matching rows retrieved no null rows retrieved here
-- B.Outer Joins
-- i.Left Outer Join-it includs null considr the first or left table
-- ii.Right Outer Join-consider right table and compare t totally 
-- iii. Full outer
-- C.Cross Joins-no on clause and prints cartesisan product table records 10*4=40 record
-- D.Self Joins-join table itself
-- E.Equi Joins    

-- Inner Joins
create table EmpCompany(eid int,ename varchar(20),department varchar(20) , designation varchar(20) , doj datetime)
drop table EmpCompany
	
insert into EmpCompany values(101,'Amit','IT','Software Engineer','03/24/2001')
insert into EmpCompany values(99,'Sumit','Sales','Sales Executive','01/18/2002')
insert into EmpCompany values(109,'Ajay','IT','Software Executive','01/4/2003')
insert into EmpCompany values(200,'Anant','IT','Project Manager','02/17/2004')
insert into EmpCompany values(100,'Amir','Sales','Sales Manager','03/29/2002')
insert into EmpCompany values(65,'Anshul','IT','Platmorm MAnager','04/21/2005')
insert into EmpCompany values(111,'Deepak','Bussines','Bussiness Develop','04/21/2002')
	        
select * from empcompany
select * from empdetails
select ename from empcompany
	
create table empdetails (eid int,mobile varchar(20),city varchar(20),dob datetime)
	

insert into empdetails values (99,'98745712474','Delhi','01/15/1985')
insert into empdetails values (101,'98745712474','Noida','01/15/1983')
insert into empdetails values (109,'98745712474','Kolkatta','01/15/1990')
insert into empdetails values (200,'98745712474','Chandigarh','01/15/1982')
insert into empdetails values (100,'98745712474','Lucknow','01/15/1988')
insert into empdetails values (65,'98745712474','Mumbai','01/15/1985')
	
select * from empcompany
select * from empdetails
	
first way
select  empdetails.eid ,  ename, department, designation, doj, mobile, city, dob 	from empcompany inner join empdetails on empcompany.eid=empdetails.eid
	
second way
select  ec.eid , ename, department, designation,  doj, mobile, city, dob from empcompany ec join empdetails ed on ec.eid=ed.eid
	
third way
select  ec.eid , ename, department, designation, doj, mobile, city, dob from empcompany ec , empdetails ed where ec.eid=ed.eid

create table empextra (eid int , hobby varchar(20) , interest varchar(20) )
insert into empextra values(100,'reading books','cooking')
insert into empextra values(65,'playing games','playing')
insert into empextra values(101,'reading comics','outing')
insert into empextra values(99,'reading news','chatting')
	
select * from empextra
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
	
---------------------------------------------------------self join----------------
eid name managerid
	1    mike
	2    todd
	3
	4
	5
----------------------------------Group by -----------------------------------------
select * from employee
select * into empd from employee where eid <= 65
select * from empd
	

update empd 
set department='asp' where eid=44 OR eid=16
update empd 
set department='php' where eid=33 OR eid=65 or eid=23
select department , SUM(salary) as 'Total salary' from empd group by department
select department , SUM(salary) as 'Total salary' from empd group by department having sum(salary)>58000
-----------------------------------Subqueries ---------------------------------
select * from employee
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
		
SELECT * FROM PersonalDetails FOR XML RAW //To retrieve data in XML format from SQL Server database, we can use FOR XML <options> clause.  raw/auto
select name from city where population>120000 and countrycode='usa'
select distinct city from station where STATION.ID%2=0
		
SELECT name, population FROM world WHERE name IN ('Brazil', 'Russia', 'India', 'China');

-- Exercise-
-- Create table with the below columns :
-- pid -- to store the numeric product id
-- pname -- to store the name of product with maximum 20 characte like Lux,Caddle etc.
-- pcompany -- to store categories of products like Soap,Wears,Utensils etc.
-- Pquantity -- to store the quantity of products .
-- pcost -- to store the amount of products.
-- psolddate - to store the date on which item was sold to consumers.

-- Now insert maximum 12 rows and fetch the records accordingly
-- PID
-- PNAME
-- PCOMPANY
-- PQUANTITY
-- PCOST
-- PSOLDDATE
-- 101
-- SOAP
-- LUX
-- 32
-- 18
-- 03/12/14
-- 118
-- SHOES
-- ADIDAS
-- 45
-- 2500
-- 02/02/15
-- 120
-- SLEEPERS
-- ADIDAS
-- 65
-- 1200
-- 09/11/15
-- 156
-- TSHIRTS
-- REEBOK
-- 112
-- 654
-- 16/08/2014
-- 111
-- SPORT LOWERS
-- REEBOK
-- 145
-- 847
-- 19/11/2014
-- 165
-- LAPTOP
-- DELL
-- 100
-- 28000
-- 12/12/14
-- 189
-- TV
-- SAMSUNG
-- 111
-- 16666
-- 11/04/14
-- 245
-- WRIST WATCH
-- TIMEX
-- 99
-- 1500
-- 14/11/2014
-- 196
-- PHONE
-- MICROMAX
-- 78
-- 7500
-- 14/11/2014
-- 200
-- PHONE
-- MOTOROLA
-- 45
-- 8000
-- 16/03/2015
-- 215
-- TV
-- LG
-- 47
-- 15000
-- 08/08/14
-- 217
-- REFRIGERATOR
-- LG
-- 98
-- 12000
-- 09/10/14



-- Now fetch the below details :
-- Fetch all the details .
-- Fetch only PID , PNAME and PSOLDDATE.
-- Fetch only those records which are having cost more than 5000
-- Fetch those records whose PID is 217
-- Fetch only Phone details.
-- Fetch only the products of company LG,Micromax and Adidas
-- Fetch the products which are having quanity more than 100 and cost less than 5000.
-- Fetch the products whose name are starting with  P,L and T.
-- Fetch the products whose company is ending with S or K.
-- Fetch the products which are TV,PHONE and REFRIGERATOR.
-- Display all unique products names.
-- Fetch the products whose name is having character A at second Index.
-- Fetch the first three character of  product name and company names.
-- Fetch the details of those products which are having company character length more than 5.
-- Display the details in the format like “ Soap is of Rs 18 from company Lux”.
-- Display the products which are sold in month of November and in year 2014.
-- Display the details of products which are sold before 6 months from now.
-- Display the Pid,Pname with total cost means Pcost * Pquantity.
-- Display the sum , avg , count , max , min of cost of all records.

-- Solutions--
create table nttdata(pid int, pname varchar(20),pcompany varchar(20),pquantity int,pcost int,psolddate datetime)
select * from nttdata
insert into nttdata values(101,'soap','lux',32,18,'12/03/2014')
insert into nttdata values(118,'shoes','adidas',45,2500,'02/02/2015')
insert into nttdata values(120,'sleepers','adidas',65,1200,'11/09/2015')
insert into nttdata values(156,'tshirts','reebok',112,654,'08/16/2014')
insert into nttdata values(111,'sports lowers','reebok',145,847,'11/19/2014')
insert into nttdata values(165,'laptop','dell',100,28000,'12/12/2014')
insert into nttdata values(189,'tv','samsung',111,16666,'04/11/14')
insert into nttdata values(245,'wrist watch','timex',99,1500,'11/14/2014')
insert into nttdata values(196,'phone','micromax',78,7500,'11/14/2014')
insert into nttdata values(200,'phone','motorola',45,8000,'03/16/2015')
insert into nttdata values(215,'tv','lg',47,15000,'08/08/2014')
insert into nttdata values(217,'refrigerator','lg',98,12000,'10/09/2014')
insert into nttdata values(217,'refrigerator','xyz',98,12000,'10/09/2016')
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

-- SQL query to find names of employee start with 'A'?
SELECT * FROM Employees WHERE EmpName like 'A%'  

-- SQL query to get third maximum salary of an employee from a table named employee_table.
SELECT TOP 1 salary   
FROM (  
SELECT TOP 3 salary  
FROM employee_table  
ORDER BY salary DESC ) AS emp  
ORDER BY salary ASC;     

-- Another example of News :
-- Table : NewsType
-- Id - Pk, identity , int
-- Title - unique,not null,varchar(150)//
-- DateOfAdd - datetime , not null
-- Active bit
-- -----Data -----
-- India
-- World
-- Advertisement
-- Editorial
-------------------------------------------------------------------------------------------------
-- Table : NewsCategory
-- Id - pk,identity , int
-- Title - varchar(200) , unique, not null //
-- DateOfAdd - datetime , not null
-- Active bit
-----Data-------------
-- Sports
-- Entertainment
-- Business
-- Technology/Gadgets
-- Culture
-- Politics
-- Weather/Disaster
-- Health
-- Automobiles
-- Others

-- Table : News ( Master table)

-- NewsID - pk , identity , int
-- NewsTypeID - fk , int
-- NewsCategoryID - fk , int//drop
-- Heading - varchar(500) , unique , not null//text
-- Subheading - varchar(800) , unique , not null//text box
-- Description - varchar(200) , unique , not null//file upload
-- ReporterID - uniqueidentifier , fk , not null//drop down
-- Place - varchar(150) , not null//text
-- NewsDate - datetime , not null//text
-- DateOfAdd - datetime , not null
-- Image - varchar(200) , not null//file upload
-- EditorID - uniqueidentifier , not null//dropdown
-- Priority - (1-10) - int , check cosntraintto check for range (1-10)//dropdown
-- Approved - bit , not null , default constraint for 0.
-- Read - bit , not null , default constraint for 0.
-- visit - int , not null
-- Active bit

-- Table : Reporter
-- ID - uniqueidentifier , pk 
-- EditorID  - uniqueidentifier , fk
-- DateOfAdd - datetime, not null
-- Active bit

-- Table : Editor
-- ID : uniqueidentifier , pk
-- DateOfAdd - datetime , not null
-- Active bit

-- Table : Person

-- PersonID - pk
-- PlaceID - int , fk
-- PersonName - varchar(max), not null
-- Mobile - varch ar(10) . unique , not null
-- Email - varchar(200) , unique , not null
-- CAddress - varchar(800) , unique , not null
-- PAddress - varchar(800) , unique , not null
-- DOJ - datetime ,not null
-- DOB - date , not null
-- Gender - char(1) , not null 
-- Anniversary - date , allows null
-- Active bit

-- Table : Places
-- ID - int,identity, pk
-- Name - varchar(150) , not null , unique
-- DateOFAdd - datetime , not null
-- Active bit

create database newsreporter
create table newstype(ID int IDENTITY(1,1) PRIMARY KEY,title varchar(150) unique NOT NULL,DateOfAdd datetime NOT NULL,Active bit )
create table newscategory(ID int IDENTITY(1,1) PRIMARY KEY,title varchar(200) unique NOT NULL,DateOfAdd datetime NOT NULL,Active bit)
create table Editor(id uniqueidentifier PRIMARY KEY,DateOfAdd datetime NOT NULL,Active bit)
create table Places(ID int IDENTITY(1,1) PRIMARY KEY,name varchar(150) unique NOT NULL ,DateOfAdd datetime NOT NULL,Active bit)
create table Reporter(id uniqueidentifier PRIMARY KEY,EditorID  uniqueidentifier  FOREIGN KEY REFERENCES Editor(id),DateOfAdd datetime NOT NULL,Active bit )
create table Person(Personid int PRIMARY KEY,PlaceID int  FOREIGN KEY REFERENCES Places(id) ,PersonName varchar(100) NOT NULL,Mobile varchar(10) unique NOT NULL,Email varchar(200) unique NOT NULL,CAddress varchar(200) unique NOT NULL,PAddress  varchar(200) unique NOT NULL,DOJ datetime NOT NULL,
DOB date NOT NULL,Gender char(1) NOT NULL ,Anniversary  date NOT NULL,Active bit)
create table News(Newsid int IDENTITY(1,1) PRIMARY KEY,Newstypeid int FOREIGN KEY REFERENCES newstype(id),Newscategoryid int FOREIGN KEY REFERENCES newscategory(id),Heading varchar(500) unique NOT NULL,Subheading varchar(800) unique NOT NULL,descriptio varchar(200) unique NOT NULL,Reporterid uniqueidentifier FOREIGN KEY REFERENCES Reporter(id)  NOT NULL,
Place varchar(150) NOT NULL,NewsDate datetime NOT NULL,DateOfAdd datetime NOT NULL, Images varchar(200) NOT NULL,Editorid uniqueidentifier NOT NULL,Rangee int CHECK(Rangee<=10),Approved bit NOT NULL DEFAULT 0,Reed bit NOT NULL DEFAULT 0,visit int not null,Active bit )

create database newsreporter
create table newstype(ID int IDENTITY(1,1) PRIMARY KEY,title varchar(150) unique NOT NULL,DateOfAdd datetime NOT NULL,Active bit )
create table newscategory(ID int IDENTITY(1,1) PRIMARY KEY,title varchar(200) unique NOT NULL,DateOfAdd datetime NOT NULL,Active bit)
create table News(Newsid int IDENTITY(1,1) PRIMARY KEY,Newstypeid int FOREIGN KEY REFERENCES newstype(id),Newscategoryid int FOREIGN KEY REFERENCES newscategory(id),Heading varchar(500) unique NOT NULL,Subheading varchar(800) unique NOT NULL,descriptio varchar(200) unique NOT NULL,Reporterid uniqueidentifier  NOT NULL,
Place varchar(150) NOT NULL,NewsDate datetime NOT NULL,DateOfAdd datetime NOT NULL, Images varchar(200) NOT NULL,Editorid uniqueidentifier NOT NULL,Rangee int CHECK(Rangee<=10),Approved bit NOT NULL DEFAULT 0,Reed bit NOT NULL DEFAULT 0,visit int not null,Active bit )
create table Reporter(id uniqueidentifier PRIMARY KEY,EditorID  uniqueidentifier  FOREIGN KEY REFERENCES,DateOfAdd datetime NOT NULL,Active bit )
create table Editor(id uniqueidentifier PRIMARY KEY,DateOfAdd datetime NOT NULL,Active bit)
create table Places(ID int IDENTITY(1,1) PRIMARY KEY,name varchar(150) unique NOT NULL ,DateOfAdd datetime NOT NULL,Active bit)
create table Person(Personid int PRIMARY KEY,PlaceID int ,PersonName varchar(100) NOT NULL,Mobile varchar(10) unique NOT NULL,Email varchar(200) unique NOT NULL,CAddress varchar(200) unique NOT NULL,PAddress  varchar(200) unique NOT NULL,DOJ datetime NOT NULL,
DOB date NOT NULL,Gender char(1) NOT NULL ,Anniversary  date NOT NULL,Active bit)

delete from newstype
select * from newstype
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
select * from newstype
select * from Reporter
delete from Person
insert into person values('6C1C21DA-D55E-4E46-A147-D172D98E6B8A',5,'raja','9654673477','raja@gmail.com','pi','chii','3-4-2016','12-11-1995','m','11/7/2017',1,'R')
insert into person values('69625F7D-B4D6-46E8-8BBC-5B0279FB05C5',3,'ram','9654673456','sam@gmail.com','alpha2','beta2','3-5-2016','11-11-1994','m','11/7/2016',1)
insert into person values('DC8C36D2-67B7-411C-8265-38A654B29279',4,'Anchal','9654673469','anc@gmail.com','alpha1','beta1','9-5-2016','7-11-1994','f','12/7/2016',1,'E')
alter table person alter column personid uniqueidentifier 
drop table person
create table Person(Personid uniqueidentifier PRIMARY KEY,PlaceID int  FOREIGN KEY REFERENCES Places(id) ,PersonName varchar(100) NOT NULL,Mobile varchar(10) unique NOT NULL,Email varchar(200) unique NOT NULL,CAddress varchar(200) unique NOT NULL,PAddress  varchar(200) unique NOT NULL,DOJ datetime NOT NULL,
DOB date NOT NULL,Gender char(1) NOT NULL ,Anniversary  date NOT NULL,Active bit)
select * from Reporter
insert into Reporter values(newid(),'C9C685AF-2476-4491-8A1B-D9E0573E1D77','12-4-2016',1)
insert into Reporter values(newid(),'DC8C36D2-67B7-411C-8265-38A654B29279','11-6-2016',1)
insert into Reporter values(newid(),'6FA5B882-0384-411F-8F0C-51AB3B5A06B4','11-6-2016',1)
insert into Reporter values(newid(),'ABC0B8F5-1D0A-4325-8F06-DA924C5F1F87','11-6-2016',1)
select personName,Personid from Person where Personid in (select Editorid from News)
select * from news
select * from Editor
select * from Reporter
select * from Person
select Personid,PersonName from Person where Personid in (select id from Reporter)
create table Person(Personid int PRIMARY KEY,PlaceID int  FOREIGN KEY REFERENCES Places(id) ,PersonName varchar(100) NOT NULL,Mobile varchar(10) unique NOT NULL,Email varchar(200) unique NOT NULL,CAddress varchar(200) unique NOT NULL,PAddress  varchar(200) unique NOT NULL,DOJ datetime NOT NULL,
DOB date NOT NULL,Gender char(1) NOT NULL ,Anniversary  date NOT NULL,Active bit)
select * from person
select Personid, PersonName from Person where Personid in (select id from Editor)
create table Person(Personid uniqueidentifier PRIMARY KEY,PlaceID int  FOREIGN KEY REFERENCES Places(id) ,PersonName varchar(100) NOT NULL,Mobile varchar(10) unique NOT NULL,Email varchar(200) unique NOT NULL,CAddress varchar(200) unique NOT NULL,PAddress  varchar(200) unique NOT NULL,DOJ datetime NOT NULL,
DOB date NOT NULL,Gender char(1) NOT NULL ,Anniversary  date NOT NULL,Active bit)
select * from News
alter table person add persontype char(1)
select * from person
select * from editor
delete from news
select * from newscategory
delete from newscategory where title='p'
select * from newstype
delete from newstype where title='in'
select * from Places
insert into places values('meerut',GETDATE(),1)
insert into places values('Ghaziabad',GETDATE(),1)
select * from Reporter
select * from Editor
select Personid,Personname as editor from Person where Personid in (select id from Editor) 
select * from person
select * from places
delete from news
insert into person values('261630C5-0F07-4642-B648-A1C43D6ED8D1',13,'Saumya','8373673479','saumya@gmail.com','alpha10','beta10','1-8-2016','4-9-1994','f','12/8/2016',1,'R')
insert into person values('13B94FEC-FF76-48A0-BBEF-5DC33B636765',23,'shruti','8065373834','shruti@gmail.com','gamma10','delta10','1-10-2015','1-9-1994','f','11/8/2016',1,'E')

insert into places values('Assam','11/19/2016',1)
delete from places where name='Greater noida' 
insert into Reporter values(newid(),'3072F286-5DD9-47C4-A0B9-D6363B52BABA','12-7-2016',1)
select * from Reporter
select * from Editor
select * from Person
select * from Newstype
select * from news where newscategoryid=7
select personName from Person where in (select Editorid from news)
select * from aspnet_Users
select * from newscategory
select * from newstype
alter table person add editordescription varchar(250) identity
select * from person
SET IDENTITY_INSERT dbo.person ON
ALTER TABLE person alter COLUMN editordescription   varchar(500) 
ALTER TABLE person alter COLUMN editorimage   varchar(500)
select Personid,Personname from Person where Personid in (select id from Editor) .

alter table person add editorimage varchar(500) 
create table messagedetail(editerid int ,detail varbinary(max),dateofmsg date,Replystatus bit,replymessage varbinary(max),replydate date,messagetitle varchar(500),messageid uniqueidentifier)
create table adrequest(name varchar(500),company varchar(300),adtype varchar(100),addescription varchar(500),requestid uniqueidentifier)
create table complaint(name varchar(100),emailid varchar(150),cmessage varchar(200),cid uniqueidentifier,dateofadd date,cstatus bit) 




select * from nttdata
select max(pcost)from nttdata
select top 1 pcost from nttdata from (select distinct top 2 pcost from nttdata orderby pcost desc )
select distinct pcost from nttdata order by pcost desc limit 1 , 1 
select  * from news_master
select * from regiontable
select * from countrytable
select * from statetable
insert into statetable values('abc',1)

create table nttdata(pid int, pname varchar(20),pcompany varchar(20),pquantity int,pcost int,psolddate datetime)
select * from nttdata
insert into nttdata values(101,'soap','lux',32,18,'12/03/2014')
insert into nttdata values(118,'shoes','adidas',45,2500,'02/02/2015')
insert into nttdata values(120,'sleepers','adidas',65,1200,'11/09/2015')
insert into nttdata values(156,'tshirts','reebok',112,654,'08/16/2014')
insert into nttdata values(111,'sports lowers','reebok',145,847,'11/19/2014')
insert into nttdata values(165,'laptop','dell',100,28000,'12/12/2014')
insert into nttdata values(189,'tv','samsung',111,16666,'04/11/14')
insert into nttdata values(245,'wrist watch','timex',99,1500,'11/14/2014')
insert into nttdata values(196,'phone','micromax',78,7500,'11/14/2014')
insert into nttdata values(200,'phone','motorola',45,8000,'03/16/2015')
insert into nttdata values(215,'tv','lg',47,15000,'08/08/2014')
insert into nttdata values(217,'refrigerator','lg',98,12000,'10/09/2014')
insert into nttdata values(217,'refrigerator','xyz',98,12000,'10/09/2016')
select PID , PNAME ,PSOLDDATE from nttdata
select pcost from nttdata where pcost>=5000
select * from nttdata where pid=217
select * from nttdata where pcompany like 'lg' OR pcompany like   'micromax' or pcompany like  'adidas'
SELECT * from nttdata where pquantity>=100 and pcost<=5000
select * from nttdata where pname like '[plt]%'
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

-- ALTER COMMANDS-
ALTER TABLE table_name ADD column_name datatype;
ALTER TABLE table_name DROP COLUMN column_name;
ALTER TABLE table_name MODIFY COLUMN column_name datatype;
ALTER TABLE table_name MODIFY column_name datatype NOT NULL;
alter table employee alter column Joining_date date 
alter table classics drop type
alter table classics rename to classy
Alter table PersonalDetails ADD Primary Key (AutoId)
Alter table PersonalDetails Add AutoId int NOT NULL IDENTITY (1, 1) Primary key

-- //multiple records at once
INSERT INTO MyDetails (FullName, City)
VALUES
('Ram', 'Mumbai') ,
('Shyam', 'Chennai') ,
('Mohan', 'Delhi')

-- //select database
USE SqlHowTo  

SELECT * FROM PersonalDetails WHERE Age <> 30 //<> is same as !=

SELECT NEWID()  //To get a random unique value in SQL Server, we use NEWID function.

-- to retrieve random records
SELECT TOP 2 * FROM PersonalDetails ORDER BY NEWID()

-- //Knowing SQL Server version in SQL Server
SELECT @@SERVERNAME, @@VERSION
SELECT @@MAX_CONNECTIONS
SELECT @@TEXTSIZE

SELECT FirstName + SPACE(1) + LastName  FROM PersonalDetails //give space b/w two columns values

-- concatenating more than one function
SELECT CONCAT(
                           FirstName,
                           SPACE(1),
                           LastName,
                           SPACE(1),
                           Age,
                           space(2),
                           Active
                           )
FROm PersonalDetails


SELECT SYSDATETIME()

SELECT 
DAY(GETDATE()) as Day,
MONTH(GETDATE()) as Month,
YEAR(GETDATE()) As Year

SELECT
DATENAME(WEEKDAY, GETDATE()) as DayName,
DATEPART(WEEKDAY, GETDATE()) as DayOfTheWeek,
DATENAME(MONTH, GETDATE()) As MonthName

-- check for valid date
SELECT
ISDATE('15/16/2015') InValidDate,
ISDATE(GETDATE()) ValidDate

-- To get the difference between two dates, we can use DATEDIFF function.
SELECT
DATEDIFF(YY, '01/24/1977', GETDATE()) AgeInYears,
DATEDIFF(MM, '01/24/1977', GETDATE()) AgeInMonths,
DATEDIFF(DD, '01/24/1977', GETDATE()) AgeInDays

-- To convert a column value from one data type to another, we use CONVERT function.
SELECT
       Convert(varchar(20), GETDATE()) DefaultFormat,
       Convert(varchar(20), GETDATE(), 101) DDMMYYYY,
       Convert(varchar(20), GETDATE(), 102) YYYYMMDD,
       Convert(varchar(20), GETDATE(), 103) DDMMYYYY,
       Convert(varchar(20), GETDATE(), 104) 

SELECT 
          Convert(varchar(20), GETDATE(), 105),
          Convert(varchar(20), GETDATE(), 106),
          Convert(varchar(20), GETDATE(), 107)

SELECT    
          Convert(varchar(20), GETDATE(), 108),
          Convert(varchar(20), GETDATE(), 109),
          Convert(varchar(20), GETDATE(), 110)

SELECT Convert(varchar(20), GETDATE(), 111),
             Convert(varchar(20), GETDATE(), 112),
             Convert(varchar(20), GETDATE(), 113),
             Convert(varchar(20), GETDATE(), 114)

-- //To retrieve data in XML format from SQL Server database, we can use FOR XML <options> clause.  raw/auto
SELECT * FROM PersonalDetails FOR XML RAW 

select name from city where population>120000 and countrycode='usa'
select distinct city from station where STATION.ID%2=0

SELECT name, population FROM world WHERE name IN ('Brazil', 'Russia', 'India', 'China');

-- Exercise-
-- SQL Queries for Freshers 
-- Table Name : Employee
-- 1,
-- Employee_id	First_name	Last_name	Salary		Joining_date		Department
-- 1 		John 		Abraham 	1000000 	01-JAN-13 12.00.00 AM 	Banking
-- 2 		Michael 	Clarke 		800000 		01-JAN-13 12.00.00 AM 	Insurance
-- 3 		Roy 		Thomas 		700000 		01-FEB-13 12.00.00 AM 	Banking
-- 4 		Tom 		Jose 		600000 		01-FEB-13 12.00.00 AM 	Insurance
-- 5 		Jerry 		Pinto 		650000 		01-FEB-13 12.00.00 AM 	Insurance
-- 6 		Philip 		Mathew 		750000 		01-JAN-13 12.00.00 AM 	Services
-- 7 		TestName1 	123 		650000 		01-JAN-13 12.00.00 AM 	Services
-- 8 		TestName2 	Lname% 		600000 		01-FEB-13 12.00.00 AM 	Insurance


-- Table Name : Incentives
-- Employee_ref_id		Incentive_date		Incentive_amount
-- 1 			01-FEB-13 		5000
-- 2 			01-FEB-13 		3000
-- 3 			01-FEB-13 		4000
-- 1 			01-JAN-13 		4500
-- 2 			01-JAN-13 		3500


-- 1.Get all employee details from the employee table
-- 2. Get First_Name,Last_Name from employee table
-- 3. Get First_Name from employee table using alias name “Employee Name”
-- 4. Get First_Name from employee table in upper case
-- 5. Get First_Name from employee table in lower case
-- 6. Get unique DEPARTMENT from employee table
-- 7. Select first 3 characters of FIRST_NAME from EMPLOYEE
-- 8. Get position of 'o' in name 'John' from employee table
-- 9. Get FIRST_NAME from employee table after removing white spaces from right side
-- 10. Get FIRST_NAME from employee table after removing white spaces from left side
-- 11. Get length of FIRST_NAME from employee table
-- 12. Get First_Name from employee table after replacing 'o' with '$'
-- 13. Get First_Name and Last_Name as single column from employee table separated by a '_'
-- 14. Get FIRST_NAME ,Joining year,Joining Month and Joining Date from employee table
-- 15. Get all employee details from the employee table order by First_Name Ascending
-- 16. Get all employee details from the employee table order by First_Name descending
-- 17. Get all employee details from the employee table order by First_Name Ascending and Salary descending
-- 18. Get employee details from employee table whose employee name is “John”
-- 19. Get employee details from employee table whose employee name are “John” and “Roy”
-- 20. Get employee details from employee table whose employee name are not “John” and “Roy”
-- 21. Get employee details from employee table whose first name starts with 'J'
-- 22. Get employee details from employee table whose first name contains 'o'
-- 23. Get employee details from employee table whose first name ends with 'n'
-- 24. Get employee details from employee table whose first name ends with 'n' and name contains 4 letters
-- 25. Get employee details from employee table whose first name starts with 'J' and name contains 4 letters
-- 26. Get employee details from employee table whose Salary greater than 600000
-- 27. Get employee details from employee table whose Salary less than 800000
-- 28. Get employee details from employee table whose Salary between 500000 and 800000
-- 29. Get employee details from employee table whose name is 'John' and 'Michael'
-- 30. Get employee details from employee table whose joining year is “2013”
-- 31. Get employee details from employee table whose joining month is “January”
-- 32. Get employee details from employee table who joined before January 1st 2013
-- 33. Get employee details from employee table who joined after January 31st
-- 35. Get Joining Date and Time from employee table
-- 36. Get Joining Date,Time including milliseconds from employee table
-- 37. Get difference between JOINING_DATE and INCENTIVE_DATE from employee and incentives table
-- 38. Get database date
-- 39. Get names of employees from employee table who has '%' in Last_Name. Tip : Escape character for special characters in a query.
-- 40. Get Last Name from employee table after replacing special character with white space
-- 41. Get department,total salary with respect to a department from employee table.
-- 42. Get department,total salary with respect to a department from employee table order by total salary descending
-- 	Select DEPARTMENT,sum(SALARY) Total_Salary from employee group by DEPARTMENT order by Total_Salary descending
-- 43. Get department,no of employees in a department,total salary with respect to a department from employee table order by total salary descending
-- 	Select DEPARTMENT,count(FIRST_NAME),sum(SALARY) Total_Salary from employee group by DEPARTMENT order by Total_Salary descending
-- 44. Get department wise average salary from employee table order by salary ascending
-- 	select DEPARTMENT,avg(SALARY) AvgSalary from employee group by DEPARTMENT order by AvgSalary asc
-- 45. Get department wise maximum salary from employee table order by salary ascending
-- 	select DEPARTMENT,max(SALARY) MaxSalary from employee group by DEPARTMENT order by MaxSalary asc
-- 46.Get department wise minimum salary from employee table order by salary ascending
-- 	select DEPARTMENT,min(SALARY) MinSalary from employee group by DEPARTMENT order by MinSalary asc
-- 47. Select no of employees joined with respect to year and month from employee table
-- 	select datepart (YYYY,JOINING_DATE) Join_Year,datepart (MM,JOINING_DATE) Join_Month,count(*) Total_Emp from employee group by datepart(YYYY,JOINING_DATE), datepart(MM,JOINING_DATE)

-- 48.Select department,total salary with respect to a department from employee table where total salary greater than 800000 order by Total_Salary descending
-- 	Select DEPARTMENT,sum(SALARY) Total_Salary from employee group by DEPARTMENT having sum(SALARY) >800000 order by Total_Salary desc
-- 49. Select employee details from employee table if data exists in incentive table ?
-- 	select * from EMPLOYEE where exists (select * from INCENTIVES)
-- 50.How to fetch data that are common in two query results ?
-- 	select * from EMPLOYEE where EMPLOYEE_ID INTERSECT select * from EMPLOYEE where EMPLOYEE_ID < 4
-- 51. Get Employee ID's of those employees who didn't receive incentives without using sub query ?
-- 	select EMPLOYEE_ID from EMPLOYEE
-- 	Except
-- 	select EMPLOYEE_REF_ID from INCENTIVES

-- Note : Learn Union, Union All , Intersect and Except

-- 52. Select 20 % of salary from John , 10% of Salary for Roy and for other 15 % of salary from employee table
-- 	Use Switch Case in Sql
-- 	SELECT FIRST_NAME, CASE FIRST_NAME WHEN 'John' THEN SALARY * .2 WHEN 'Roy' THEN SALARY * .10 ELSE SALARY * .15 END "Deduced_Amount" FROM EMPLOYEE

-- 53. Select Banking as 'Bank Dept', Insurance as 'Insurance Dept' and Services as 'Services Dept' from employee table

-- 54. Delete employee data from employee table who got incentives in incentive table

-- 55. Insert into employee table Last Name with " ' " (Single Quote - Special Character) 
-- 	Tip - Use another single quote before special character
-- 	Insert into employee (LAST_NAME) values ('Test''')
-- 56.Select Last Name from employee table which contain only numbers
-- 	Select * from EMPLOYEE where lower(LAST_NAME)=upper(LAST_NAME)

-- 57. Write a query to rank employees based on their incentives for a month
-- 	select FIRST_NAME,INCENTIVE_AMOUNT,DENSE_RANK() OVER (PARTITION BY INCENTIVE_DATE ORDER BY INCENTIVE_AMOUNT DESC) AS Rank from EMPLOYEE a, INCENTIVES b where a.EMPLOYEE_ID=b.EMPLOYEE_REF_ID

-- 58. Update incentive table where employee name is 'John'
	 
-- 59. Select first_name, incentive amount from employee and incentives table for those employees who have incentives
-- 	Select FIRST_NAME,INCENTIVE_AMOUNT from employee a inner join incentives B on A.EMPLOYEE_ID=B.EMPLOYEE_REF_ID
-- 60. Select first_name, incentive amount from employee and incentives table for those employees who have incentives and incentive amount greater than 3000

-- 	Select FIRST_NAME,INCENTIVE_AMOUNT from employee a inner join incentives B on A.EMPLOYEE_ID=B.EMPLOYEE_REF_ID and INCENTIVE_AMOUNT >3000
-- 61. Select first_name, incentive amount from employee and incentives table for all employes even if they didn't get incentives
-- 	Select FIRST_NAME,INCENTIVE_AMOUNT from employee a left join incentives B on A.EMPLOYEE_ID=B.EMPLOYEE_REF_ID
-- 62. Select first_name, incentive amount from employee and incentives table for all employees even if they didn't get incentives and set incentive amount as 0 for those employees who didn't get incentives.

-- 	Select FIRST_NAME, ISNULL(INCENTIVE_AMOUNT,0) from employee a left join incentives B on A.EMPLOYEE_ID=B.EMPLOYEE_REF_ID

-- 63. Select first_name, incentive amount from employee and incentives table for all employees who got incentives using left join
-- 	Select FIRST_NAME, isnull(INCENTIVE_AMOUNT,0) from employee a right join incentives B on A.EMPLOYEE_ID=B.EMPLOYEE_REF_ID
-- 64. Select max incentive with respect to employee from employee and incentives table using sub query
-- 	 select DEPARTMENT,(select ISNULL(max(INCENTIVE_AMOUNT),0) from INCENTIVES where EMPLOYEE_REF_ID=EMPLOYEE_ID) Max_incentive from EMPLOYEE
-- 65. Select TOP 2 salary from employee table
-- 66. Select TOP N salary from employee table
-- 	select top N * from employee
-- 67. Select 2nd Highest salary from employee table
-- 	select min(SALARY) from (select top 2 * from employee) a
-- 68. Select Nth Highest salary from employee table
-- 	select min(SALARY) from (select top N * from employee) a
-- 69. Select First_Name,LAST_NAME from employee table as separate rows
-- 	select FIRST_NAME from EMPLOYEE union select LAST_NAME from EMPLOYEE
-- 70. What is the difference between UNION and UNION ALL ?
-- Both UNION and UNION ALL is used to select information from structurally similar tables. That means corresponding columns specified in the union should have same data type. For example, in the above query, if FIRST_NAME is DOUBLE and LAST_NAME is STRING above query wont work. Since the data type of both the columns are VARCHAR, union is made possible. Difference between UNION and UNION ALL is that , UNION query return only distinct values. 

-- 71. Write create table syntax for employee table

-- -CREATE TABLE EMPLOYEE(
-- EMPLOYEE_ID int NOT NULL,
-- FIRST_NAME varchar(50) NULL,
-- LAST_NAME varchar(50) NULL,
-- SALARY decimal(18, 0) NULL,
-- JOINING_DATE datetime2(7) default getdate(),
-- DEPARTMENT varchar(50) NULL)

-- 72. Write syntax to delete table employee
-- 	DROP table employee;

-- 73. Write syntax to set EMPLOYEE_ID as primary key in employee table
-- 	ALTER TABLE EMPLOYEE add CONSTRAINT EMPLOYEE_PK PRIMARY KEY(EMPLOYEE_ID)
-- 74. Write syntax to set 2 fields(EMPLOYEE_ID,FIRST_NAME) as primary key in employee table
-- 	ALTER TABLE EMPLOYEE add CONSTRAINT EMPLOYEE_PK PRIMARY KEY(EMPLOYEE_ID,FIRST_NAME)
-- 75. Write syntax to drop primary key on employee table
-- 	Alter TABLE EMPLOYEE drop CONSTRAINT EMPLOYEE_PK;
-- 76. Write Sql Syntax to create EMPLOYEE_REF_ID in INCENTIVES table as foreign key with respect to EMPLOYEE_ID in employee table
-- 	ALTER TABLE INCENTIVES ADD CONSTRAINT INCENTIVES_FK FOREIGN KEY (EMPLOYEE_REF_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID)
-- 77. Write SQL to drop foreign key on employee table
-- 	ALTER TABLE INCENTIVES drop CONSTRAINT INCENTIVES_FK;
-- 78. What is SQL Injection ?
-- 	SQL Injection is one of the the techniques uses by hackers to hack a website by injecting SQL commands in data fields.

-- -----------------------------------------------------------Other Querrie
-- 1. SQL Query to find second highest salary of Employee
-- select MAX(Salary) from Employee WHERE Salary NOT IN (select MAX(Salary) from Employee 
-- SELECT max(salary) FROM Employee WHERE salary < (SELECT max(salary) FROM Employee);
-- SELECT TOP 1 salary FROM ( SELECT TOP 2 salary FROM employees ORDER BY salary DESC) AS emp ORDER BY salary ASC

-- 2. SQL Query to find Max Salary from each department.
-- SELECT DeptID, MAX(Salary) FROM Employee  GROUP BY DeptID.

-- Solutions-
create database ibm
create table employee(Employee_id int,First_name varchar(30),Last_name varchar(40),Salary int,Joining_date datetime,Department varchar(50))
select * from employee
create table Incentives(Employee_ref_id int,Incentive_date date,Incentive_amount int)
select * from Incentives
insert into employee values(1,'John','Abraham',1000000,'01-01-2013 12:00:00 AM','Banking')
insert into employee values(2,'Michael','Clarke',800000,'01-01-2013 12:00:00 AM','Insurance')
insert into employee values(3,'Roy','Thomas',700000,'02-01-2013 12:00:00 AM','Banking')
insert into employee values(4,'Tom','Jose',600000,'02-01-2013 12:00:00 AM','Insurance')
insert into employee values(5,'Jerry','Pinto',650000,'02-01-2013 12:00:00 AM','Insurance')
insert into employee values(6,'Philip','Mathew',750000,'01-01-2013 12:00:00 AM','Services')
insert into employee values(7,'TestName1','123',650000,'01-01-2013 12:00:00 AM','Services')
insert into employee values(8,'TestName2','Lname%',600000,'02-01-2013 12:00:00 AM','Insurance')
DELETE FROM employee WHERE First_name = 'TestName2'
insert into Incentives values(1,'02-01-2013',5000)
insert into Incentives values(2,'02-01-2013',3000)
insert into Incentives values(3,'02-01-2013',4000)
insert into Incentives values(1,'01-01-2013',4500)
insert into Incentives values(2,'01-01-2013',3500)
select First_Name,Last_Name from employee 
select First_name as "Employee Name" from employee
select UPPER(First_name) AS first_name from employee
select Lower(First_name) AS first_name from employee

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

create database ibm
create table employee(Employee_id int,First_name varchar(30),Last_name varchar(40),Salary int,Joining_date datetime,Department varchar(50))
select * from employee
create table Incentives(Employee_ref_id int,Incentive_date date,Incentive_amount int)
select * from Incentives
alter table employee alter column Joining_date date
insert into employee values(1,'John','Abraham',1000000,'01-01-2013 12:00:00 AM','Banking')
insert into employee values(2,'Michael','Clarke',800000,'01-01-2013 12:00:00 AM','Insurance')
insert into employee values(3,'Roy','Thomas',700000,'02-01-2013 12:00:00 AM','Banking')
insert into employee values(4,'Tom','Jose',600000,'02-01-2013 12:00:00 AM','Insurance')
insert into employee values(5,'Jerry','Pinto',650000,'02-01-2013 12:00:00 AM','Insurance')
insert into employee values(6,'Philip','Mathew',750000,'01-01-2013 12:00:00 AM','Services')
insert into employee values(7,'TestName1','123',650000,'01-01-2013 12:00:00 AM','Services')
insert into employee values(8,'TestName2','Lname%',600000,'02-01-2013 12:00:00 AM','Insurance')
DELETE FROM employee WHERE First_name = 'TestName2'
insert into Incentives values(1,'02-01-2013',5000)
insert into Incentives values(2,'02-01-2013',3000)
insert into Incentives values(3,'02-01-2013',4000)
insert into Incentives values(1,'01-01-2013',4500)
insert into Incentives values(2,'01-01-2013',3500)
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


CREATE TABLE EMPLOYE(
EMPLOYEE_ID int NOT NULL,
FIRST_NAME varchar(50) NULL,
LAST_NAME varchar(50) NULL,
SALARY decimal(18, 0) NULL,
JOINING_DATE datetime2(7) default getdate(),
DEPARTMENT varchar(50) NULL)
ALTER TABLE EMPLOYE add CONSTRAINT EMPLOYEE_PK PRIMARY KEY(EMPLOYEE_ID)
select * from EMPLOYE
ALTER TABLE EMPLOYE add CONSTRAINT EMPLOYEE_PK PRIMARY KEY(EMPLOYEE_ID,FIRST_NAME)
Alter TABLE EMPLOYE drop CONSTRAINT EMPLOYEE_PK;
select min(SALARY) from (select top 2 * from employee) a
select FIRST_NAME from EMPLOYEE union select LAST_NAME from EMPLOYEE

create database synapse   //first step
create table employee(eid int,name varchar(20),mobile varchar(10),city varchar(20),department varchar(20) , salary int)

select * from employee
insert into employee values(1,'deepak','9874561234','Delhi','php',15000)
insert into employee values(22,'ajay','9874564534','Noida','asp',16000)
insert into employee values(33,'sunil','9874545234','Agra','android',25000)
insert into employee values(44,'ashish','9874561234','chandigarh','windows',28000)
insert into employee values(65,'deepkia','9878561234','kolkatta','linux',17000)
insert into employee values(16,'namrata','9823561234','aligarh','C',13000)
insert into employee values(23,'sanjay','9878961234','hathras','c++',17000)
insert into employee values(67,'nishant','9890561234','kochi','unix',20000)
insert into employee values(78,'shikhar','9809561234','jalhandar','solaris',28000)
insert into employee values(101,'nitin','9874561234','Mathura','phonegap',18000)
insert into employee values(98,'harendra',null,'jalhandar','solaris',88000)

select * from employee

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

-- displaying details in order


select * from employee order by eid asc
select * from employee order by eid 
select * from employee order by eid desc

-- retreiving the top details ....
select * from employee
select top 3 * from employee
select top 3 eid ,name from employee
select top 3 * from employee order by salary desc
select top 3 * from employee order by salary 
SELECT * FROM CUSTOMERS LIMIT 3;
SELECT * FROM CUSTOMERS WHERE ROWNUM <= 3;

-- retreiving distinct values 
select city from employee
select distinct city from employee
------------------------------String functions --------------------------
--Are used to manipulate varchar or char type columns in the table
select  ASCII('c') as 'ASCII VAlue'
select CHAR(97) as 'Character Value'
select CHARINDEX('e','hello')
select CHARINDEX('a',name) from employee
select name  from employee where CHARINDEX('a',name) = 5
select LEFT(name,3) from employee
select name  from employee where LEFT(name,3) = 'dee'
select right(name,3) from employee
select name  from employee where right(name,1) = 'a'

-- equlvialent like query

select name from employee where name like '%a'

select LEN(name) from employee
select name from employee where LEN(name) >4
select UPPER(name) from employee
select lower(name) from employee
select * from employee
select REPLACE(name,'ee','i') from employee
select name , REVERSE(name) as 'Reverse name ' from employee
select name from employee where name = REVERSE(name)
select stuff('weather',2,2,'i')
select name ,STUFF(name,2,3,'***') from employee
select name , SUBSTRING(name,2,3) from employee
select name , SUBSTRING(name,1,3) from employee -- same as left working
select name , SUBSTRING(name , len(name)-2,3) from employee --same as right working
select * from employee
select name + ' lives in '  + city  from employee
select eid + 'is : '+ name from employee--- error due to conversions
select CONVERT(char(3),eid) + 'is : ' + name from employee

-------Date Functions ----------------------------
-- functions are used to manipulate the datatime coulmns values
select GETDATE()

to change the format of date we will use convert functions
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
create table emp (id int , name varchar(20) , dob datetime)
insert into emp values (1,'abhay','03/21/1992')
select DATEDIFF(YY,dob,GETDATE()) from emp
select DATENAME(dw,dob) from emp
-------------Mathematical Functions ------------------------------
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

--- will return conutries whose temperature is less than 0.
select countryname from world where SIGN(countrytemperature) = -1 

------------------------Aggregate Functions ---------------------------

---- Max(), Min() , Sum() , Avg() , Count()
select * from employee
select SUM(salary) from employee
select Avg(salary) from employee
select MAx(salary) from employee
select min(salary) from employee
select count(salary) from employee
select COUNT(city) from employee
select COUNT(distinct city) from employee

create table empextra (eid int , hobby varchar(20) , interest varchar(20) )

insert into empextra values(100,'reading books','cooking')
insert into empextra values(65,'playing games','playing')
insert into empextra values(101,'reading comics','outing')
insert into empextra values(99,'reading news','chatting')

select * from empextra

select  ec.eid , 
		ename,
		department,
		designation,
		doj,
		mobile,
		city,
		dob,
		hobby,
		interest 
from empcompany ec , empdetails ed  , empextra ee where ec.eid=ed.eid and ed.eid = ee.eid

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
---------------------------------------------------------self join----------------
-- eid name managerid
-- 1    mike
-- 2    todd
-- 3
-- 4
-- 5

----------------------------------Group by -----------------------------------------

select * from employee

select * into empd from employee where eid <= 65

select * from empd

update empd 
set department='asp' where eid=44 OR eid=16

update empd 
set department='php' where eid=33 OR eid=65 or eid=23

select department , SUM(salary) as 'Total salary' from empd group by department

select department , SUM(salary) as 'Total salary' from empd group by department having sum(salary)>58000

-----------------------------------Subqueries ---------------------------------

select * from employee

select * from A
select * from B

select * from employee where city in ('agra','delhi','noida')

select * from employee where city in ( select ecity from B )

select * from employee where city in ( select ecity from B where emobile='989747847')

select * from employee where city = (select ecity from B where emobile='989747847')

select * from employee where exists ( select ecity from B where emobile='98974784712')

select * from employee where exists ( select ecity from B where emobile='989747847')

---------------------------------------Constraints-----------------------------------------
/*

Implementing Data Integrity:
A.Entity Integrity --
B.Domain Integrity --
C.Referential integrity --
D.User defined integrity : by set of rules.

can maintain integrity by below ways :
A.Applying constraints with Enabling and disabling constraints.
B.Applying rules
C.User defined data types

Constraints :

A.Primary Keys Constraint
B.Unique Keys ''
C.Foreign Keys ''
D.Check Constraint
E.Default Constraint
*/

create table employeedetails
(
	eid int primary key ,
	ename varchar(20) not null default 'Admin',
	emobile varchar(10) unique,
	ecity varchar(20) check ( ecity in ('Agra','Noida','Delhi'))  default 'Agra' ,
	eage int check ( eage between 20 and 25),
	egender char(1) check (egender in ('F','M'))
)
	  
	  
insert into employeedetails values(101,'deepak','987414784','Agra',23,'M')

insert into employeedetails values(102,'deepak','987414785','Agra',23,'M')

insert into employeedetails values(103,'deepak','987414781','Delhi',24,'M')

insert into employeedetails values(104,default,'987414782',default,24,'M')

select * from employeedetails

insert into employeedetails(eid,emobile,eage,egender) values (105,'87471477',24,'F')

-------------------------------------------Identity columns---------------------------------

create table employee1 
(
	id int identity(100,1) primary key , 
	ename varchar(20) not null,
	department varchar(30) not null,
	doj datetime not null
)

-- adding columns  by using alter table
alter table employee1
add designation varchar(20) not null

drop table employee1

create table employee1 
(
	id int identity(100,1) primary key , 
	ename varchar(20) not null,
	department varchar(30) not null,
	designation varchar(20) not null,
	doj datetime not null
)


insert into employee1 values('Deepak Singh','IT','Software Enginner','09/03/2014')
insert into employee1 values('Abhay Singh','SALES','Sales Manager','02/08/2014')

select * from employee1

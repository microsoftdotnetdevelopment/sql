RDBMS
1NF, 2NF, 3NF
Normalization
ORM
SQLite
SQL
Redundancy & replication

Relational database(RDBMS)-

These DBs provide database environments also.

MySQL, MariaDB, PostgreSQL, ms SQL, Oracle, SQL Server, Redis, Firebase, AWS DynamoDB, SQLite, CouchDB, AWS RDS, Cassandra, Couchbase, Cloud Firestore

IBM DB2, Neo4j

A relation is in first normal form (1NF) if (and only if):

Each attribute contains only one value.

All attribute values are atomic, which means they can’t be broken down into anything smaller.

second normal form - 2NF

any column that’s not a key column is dependent on the whole information in the candidate key.

3NF non-prime attributes depend on “nothing but the key”.

Non-prime attributes(other column names) and prime attributes (key)

Normalization: Normalization of a database means organizing all the information within the database to avoid data replication and redundancy. Redundancy means having multiple copies of the same data in the database. This problem arises when a database is not normalized.

Normalization means distributing the data into multiple smaller related tables instead of storing all the data in one large table.

Make sure to normalize things.

Every database should, at least, be normalized to the third normal form

Avoid Nulls: This can be done by specifying NOT NULL whenever one wants to keep empty information. Avoid nulls or use them only when you truly need them since attributes with null values cannot form primary keys.

Object-Relational Mapping (ORM) frameworks (DB)

It is a technique (Design Pattern) for accessing a relational database from an object-oriented language.

Data/Database Sharding is the capability that comes into use when database size becomes so large that a particular machine may not be able to store all data then sharding solves this problem through horizontal scaling.
Sharding is the process of breaking up large tables into smaller chunks called shards that are spread across multiple servers. A shard is essentially a horizontal data partition that contains a subset of the total data set and hence is responsible for serving a portion of the overall workload.

scalability gives the developer the ability to easily add or remove as many machines as needed.

It has some great features like document-oriented storage, ease of use, high performance, fast execution of queries and Maintenance of database backup is easy.

Its queries run very fast because the data is present in one place and it can easily be retrieved. It is very flexible it does not require a unified data structure overall objects. It is easy to use. It also has some problems like- sometimes we face leaking problems and missing data over time. It has not joined all relations that are supposed to be resolved client-side which requires an extra request to the server.

HackerRank, SurveyMonkey, Red Hat Inc, IBM, Citrix, Twitter and Codecademy is one of the popular companies that use MongoDB.

SQLite

SQLite is originally released in 2000. It is a relational database. SQLite is the lite version of SQL which runs on low-powered devices or devices with low memory. There is not much configuration required to run SQLite. It is serverless means there is no need to install, manage, initialize, configure and troubleshoot. But It lacks multiuser capabilities.

It is very manageable throughout different applications, to transfer the entire database all that's needed is to create a copy of the file. You can use this with Node but it is not much used generally. It does not require much support from external libraries or the operating system.

SQLite has a binding of a large no. of programming languages including C, C# etc. It is a database tool that implements a self-contained, transactional SQL database engine. It has an embedded SQL database engine. The processes run by the server are not separated.

it reads and writes directly to regular disk files. It is single-threaded, simple, lightweight, SQL.

SQLite is used by companies like Intuit, Codorus, and Infoshare.


Redundancy & replication:

Redundancy - describes the fact that you have more than one node/component/process in a system and it's pretty useful for handling failovers. In the case that one of your nodes fails, another node in the system can take over and carry on. Redundancy can be:

active - where all the traffic goes to all nodes at the same time

passive - where one node receive traffic and in the case of failure, a switch will be made to another node.

"Redundancy is the duplication of nodes, in case some of them are failing"

Replication - includes redundancy, but involves the copying of data from one node to another or the synchronization of state between nodes. An example of where replication is done is at the databases or MQs level that forms a cluster. Replication can be:

active: each node receives each message in order to keep in sync with the rest of the nodes

passive: this is the leader-follower model, where the leader receives all the requests and then forwards them to the followers.

"Replication is the synchronization of state between redundant nodes."

Redundancy increases reliability while Replication ensures Consistency.

What is the difference between 'REPLACE' and 'STUFF' functions in SQL Server?

how to use IDENTITY in SQL Server?

What do you mean by SQL join and how can you use it?

How are databases shared?
How is the network set up for redundancy and maximum throughput?



tableplus-
friendly GUI tool for relational databases: MySQL, PostgreSQL, SQLite

Entity Relationship Diagram (ERD)?

Redundancy
can include any
Kind of resource which is extraneous,
including:
extra functions
•extra data/information 
extra execution time.
• extra memory, files, or processes



# Sql Server questions
Q01. What is a Temp Table or Temporary Table in SQL? 
Q02. Is a duplicate Temp Table name allowed?
Q03. Can a Temp Table be used for SELECT INTO or INSERT EXEC statement? 
Q04. What are the different ways to create a Temp Table in SQL?
Q05. What is the difference between Local and Global Temporary Table in SQL?
Q06. What is the storage location for the Temp Tables?
Q07. What is the difference between a Temp Table and a Derived Table in SQL?
Q08. What is the difference between a Temp Table and a Common Table Expression in SQL?
Q09. How many Temp Tables can be created with the same name?
Q10. How many users or who can access the Temp Tables?
Q11. Can you create an Index and Constraints on the Temp Table?
Q12. Can you apply Foreign Key constraints to a temporary table? 
Q13. Can you use the Temp Table before declaring it?
Q14. Can you use the Temp Table in the User-Defined Function (UDF)?
Q15. If you perform an Insert, Update, or delete operation on the Temp Table, does it also affect the underlying base table?
Q16. Can you TRUNCATE the temp table? 
Q17. Can you insert the IDENTITY Column value in the temp table? Can you reset the IDENTITY Column of the temp table? 
Q18. Is it mandatory to drop the Temp Tables after use? How can you drop the temp table in a stored procedure that returns data from the temp table itself?
Q19. Can you create a new temp table with the same name after dropping the temp table within a stored procedure?
Q20. Is there any transaction log created for the operations performed on the Temp Table?
Q21. Can you use explicit transactions on the Temp Table? Does the Temp Table hold a lock? Does a temp table create Magic Tables?
Q22. Can a trigger access the temp tables?
Q23. Can you access a temp table created by a stored procedure in the same connection after executing the stored procedure?
Q24. Can a nested stored procedure access the temp table created by the parent stored procedure?
Q25. Can you ALTER the temp table? Can you partition a temp table?
Q26. Which collation will be used in the case of Temp Table, the database on which it is executing, or temp DB? What is a collation conflict error and how you can resolve it?
Q27. What is a Contained Database? How does it affect the Temp Table in SQL?
Q28. Can you create a column with user-defined data types (UDDT) in the temp table?
Q29. How many concurrent users can access a stored procedure that uses a temp table?
Q30. Can you pass a temp table to the stored procedure as a parameter?

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
-- 48 Select department,total salary with respect to a department from employee table where total salary greater than 800000 order by Total_Salary descending
-- 	Select DEPARTMENT,sum(SALARY) Total_Salary from employee group by DEPARTMENT having sum(SALARY) >800000 order by Total_Salary desc
-- 49. Select employee details from employee table if data exists in incentive table ?
-- 	select * from EMPLOYEE where exists (select * from INCENTIVES)
-- 50.How to fetch data that are common in two query results ?
-- 	select * from EMPLOYEE where EMPLOYEE_ID INTERSECT select * from EMPLOYEE where EMPLOYEE_ID < 4
-- 51. Get Employee ID's of those employees who didn't receive incentives without using sub query ?
-- 	select EMPLOYEE_ID from EMPLOYEE
-- 	Except
-- 	select EMPLOYEE_REF_ID from INCENTIVES
-- 52. Select 20 % of salary from John , 10% of Salary for Roy and for other 15 % of salary from employee table
-- 	Use Switch Case in Sql
-- 	SELECT FIRST_NAME, CASE FIRST_NAME WHEN 'John' THEN SALARY * .2 WHEN 'Roy' THEN SALARY * .10 ELSE SALARY * .15 END "Deduced_Amount" FROM EMPLOYEE
-- 53. Select Banking as 'Bank Dept', Insurance as 'Insurance Dept' and Services as 'Services Dept' from employee table
-- 54. Delete employee data from employee table who got incentives in incentive table
-- 55. Insert into employee table Last Name with " ' " (Single Quote - Special Character) 
-- 	Tip - Use another single quote before special character
-- 	Insert into employee (LAST_NAME) values ('Test''')
-- 56 Select Last Name from employee table which contain only numbers
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
-- 	SQL Injection is one of the the techniques uses by hackers to hack a website by injecting SQL commands in data fields. SQL Injection (SQLi) refers to an injection attack wherein an attacker can execute malicious SQL statements (also commonly referred to as a malicious payload) that control a web application's database server.
If you take user input through a webpage and insert it into a SQL database, there's a chance that you have left yourself wide open for a security issue known as SQL Injection.
Injection usually occurs when you ask a user for input, like their name, and instead of a name, they give you a SQL statement that you will unknowingly run on your database.

-- 1. SQL Query to find second highest salary of Employee
-- select MAX(Salary) from Employee WHERE Salary NOT IN (select MAX(Salary) from Employee 
-- SELECT max(salary) FROM Employee WHERE salary < (SELECT max(salary) FROM Employee);
-- SELECT TOP 1 salary FROM ( SELECT TOP 2 salary FROM employees ORDER BY salary DESC) AS emp ORDER BY salary ASC
-- 2. SQL Query to find Max Salary from each department.
-- SELECT DeptID, MAX(Salary) FROM Employee  GROUP BY DeptID.

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

Revise all below keywords based queries :
Identifying Data types ?
Working with DQL statements with select command.
Selecting Retrieving attributes e.g. columns from table ?
Selecting the columns with customizing the display means changing the name of column for display ?
Performing Calculations on columns of tables with arithmetic operations ?
Retrieving selected rows with where clause and comparison operators  like =, < . >= etc?
Retrieving records with logical operators ? And, OR , NOT ?
Retrieving Records with range operators like between and not between 
Retrieving records with in and not in operators .
Retrieving Records that match a pattern with like keyword and wildcards .
Retrieving records that contain null values.
Retrieving records to be displayed in a sequence by using order by .
Retrieving records from the top of a table by using top keywords ?
Retrieving records without duplication of values by using distinct keyword ?
Working with string functions.
Working with Conversion functions 
Working with Date Functions.
Working with Mathematical functions.
Working with Aggregate functions.
Grouping data by using group by and having ?
Querying data by using joins .
Working with inner joins ?
Working with outer joins ? Like left outer, right outer  and full outer joins ?
Working with cross joins.
Working with self joins .
Working with Equi joins .
Working with Subqueries ?
Using in and exists keywords?
Working with Modified Comparison operators? Like  > ALL , > ANY , =ANY etc .
Combining result sets by using Union , Except and Intersect operators.
Explaining Various system databases like master, tempdb, model and msdb .
Explaining the database files  like primary,secondary and transaction log files.
Creating, altering, renaming and droping User-defined database.  
Creating, altering, renaming and droping  user defined tables as well as inserting rows and inserting partial data in it.
Working with identity property in tables.
Implementing Data integrity with Applying Constraints, Applying rules and creating user-defined data types.
Creating Synonyms of tables.
Copying table into new table.
Updating and deleting existing rows.
Difference between delete, drop and truncate .

What are Advantages and disadvantages of stored procedures?    
How many instance use in sql server 2005     
In join, which clause in not used?             
What is Peer to peer Replication?     
I have to display ten columns values from different ten tables. how many joins are require?     
how we can use a database with php. 
I have table students with fields classname,studname select * from students classname studname 1 xxxxx 1 yyyy 1 zzzz 2 qqqq 2 tttt 3 dsds 3 www i want the output should be No of students in class 1 : 3 No of students in class 2 : 2 No of students in class 3 : 2     
How to update a null value field in sql server eg a table contains 3 fields id,name,salary and 3 records salary of 1 record is null i want update the nullfield 111 arun 300 112 ddd 200 113 ttt null i want to update table with add 100 to every record include null after updation the recrds should be 111 arun 400 112 ddd 300 113 ttt 100            6      2606     

What is cursor ? And what is difference between Trigger ?           
How to delete duplicate rows from table in sql server         
What is Constraint? How many types of constraints in SQL ?         
CLR Integration ? what is Notification services ?         
Difference between sql server 2000 and sql server 2005? 
Can we maintain one default depreciation key for one asset of long period?               
What is the FI-MM Flow?     
Tell me the script for environment value parameter with an example. which situation environment value parameter is used.
My requirement is : How to populate a empty PS/flat file with ONLY spaces in the first line. You should not use any input dataset to do this. I'm not sure whether you may use any utility for this purpose?
What is main purpose of interface? Technology
Exception handling if we are using the when others first then what happens . whether it will show the compiler error.
What is static function and static class?
How many memory locations can be addressed by a microprocessor with 14 address lines?
How choose conductor &caple&wire depending upon the load
I believe VB6 is a powerful and matured tool that any other front end tool, why is it outdated? is it because of lack of awareness or because of difficult to use?
What is the meaning When we write "#include" what is # and what does include does there???
What new abt truncate in sql server    ?
How to find the second salary write query?     
-- CREATE TABLE <Table Name>
-- ( Column1 DataType,
--  Column2 DataType,
--  Column3 DataType,
--  …. )


CREATE TABLE Orders
( FirstName CHAR(100),
 LastName CHAR(100),
 OrderDate DATE,
 OrderValue Currency )

-- For defining a PRIMARY KEY constraint on multiple columns, use the following SQL syntax:

CREATE TABLE CUSTOMERS(
       ID   INT              NOT NULL,
       NAME VARCHAR (20)     NOT NULL,
       AGE  INT              NOT NULL UNIQUE,
       ADDRESS  CHAR (25) ,
       SALARY   DECIMAL (18, 2),       
       PRIMARY KEY (ID)
);

	CREATE TABLE ORDERS (
	       ID          INT        NOT NULL,
	       DATE        DATETIME, 
	       CUSTOMER_ID INT references CUSTOMERS(ID),
	       AMOUNT     double,
	       PRIMARY KEY (ID)
	);

-- INSERT INTO <Table Name>
-- (<Column List>) VALUES (<Values>)

INSERT INTO Orders
(FirstName, LastName, OrderDate) VALUES
('John', 'Smith', '10/10/2010')


-- The INSERT INTO statement is used to insert new records in a table.
-- The first form does not specify the column names where the data will be inserted, only their values:
-- INSERT INTO table_name
-- VALUES (value1,value2,value3,...);
-- The second form specifies both the column names and the values to be inserted:
INSERT INTO table_name (column1,column2,column3,...)
VALUES (value1,value2,value3,...);

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal','Tom B. Erichsen','Skagen 21','Stavanger','4006','Norway');
-- We can also insert it directly-
INSERT INTO Customers VALUES ('Cardinal','Tom B. Erichsen','Skagen 21','Stavanger','4006','Norway');


-- SQL SELECT INTO Statement-
-- With SQL, you can copy information from one table into another.

-- SELECT *
-- INTO newtable [IN externaldb]
-- FROM table1;

SELECT *
INTO CustomersBackup
FROM Customers;
-- We can also copy particular columns that we need-
SELECT CustomerName, ContactName
INTO CustomersBackup
FROM Customers;

-- The INSERT INTO SELECT statement copies data from one table and inserts it into an existing table.
-- Syntax-
-- INSERT INTO table2
-- SELECT * FROM table1;

INSERT INTO Customers (CustomerName, Country)
SELECT SupplierName, Country FROM Suppliers;

INSERT INTO Customers (CustomerName, Country)
SELECT SupplierName, Country FROM Suppliers
WHERE Country='Germany';


-- The CREATE DATABASE statement is used to create a database.
-- CREATE DATABASE dbname;

-- The CREATE TABLE statement is used to create a table in a database.
-- Syntax-
-- CREATE TABLE table_name
-- (
-- column_name1 data_type(size),
-- column_name2 data_type(size),
-- column_name3 data_type(size),
-- ....
-- );

CREATE TABLE Persons
(
PersonID int,
LastName varchar(255),
FirstName varchar(255),
Address varchar(255),
City varchar(255)
);


-- The NOT NULL constraint enforces a column to NOT accept NULL values.

CREATE TABLE PersonsNotNull
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255)
)

-- The UNIQUE constraint uniquely identifies each record in a database table.

CREATE TABLE Persons
(
P_Id int NOT NULL UNIQUE,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255)
)


-- The PRIMARY KEY constraint uniquely identifies each record in a database table.
-- Primary keys must contain UNIQUE values.
-- A primary key column cannot contain NULL values.
-- Most tables should have a primary key, and each table can have only ONE primary key.

CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
PRIMARY KEY (P_Id)
)

-- A FOREIGN KEY in one table points to a PRIMARY KEY in another table.
-- P_Id	LastName	FirstName	Address	City
-- 1	Hansen	Ola	Timoteivn 10	Sandnes
-- 2	Svendson	Tove	Borgvn 23	Sandnes
-- 3	Pettersen	Kari	Storgt 20	Stavanger
-- The "Orders" table:
-- O_Id	OrderNo	P_Id
-- 1	77895	3
-- 2	44678	3
-- 3	22456	2
-- 4	24562	1

CREATE TABLE Orders
(
O_Id int NOT NULL,
OrderNo int NOT NULL,
P_Id int,
PRIMARY KEY (O_Id),
FOREIGN KEY (P_Id) REFERENCES Persons(P_Id)
)

-- SQL CHECK Constraint
-- The CHECK constraint is used to limit the value range that can be placed in a column.
-- If you define a CHECK constraint on a single column it allows only certain values for this column.
-- If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.
CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
CHECK (P_Id>0)
)


CREATE TABLE Orders
(
OrderId int NOT NULL,
ProductName varchar(50) NOT NULL,
OrderDate datetime NOT NULL DEFAULT NOW(),
PRIMARY KEY (OrderId)
)

create database synapse   //first step
create table employee(eid int,name varchar(20),mobile varchar(10),city varchar(20),department varchar(20) , salary int)

insert into employee values(1,'deepak','9874561234','Delhi','php',15000)

	
create table emp (id int , name varchar(20) , dob datetime)
insert into emp values (1,'abhay','03/21/1992')

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

create table employee1 
	(
	    id int identity(100,1) primary key , 
	    ename varchar(20) not null,
	    department varchar(30) not null,
	    doj datetime not null
	)
	
-- adding columns  by using alter table
alter table employee1 add designation varchar(20) not null
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
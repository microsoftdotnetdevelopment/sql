-- CREATE TABLE <Table Name>
-- ( Column1 DataType,
--  Column2 DataType,
--  Column3 DataType,
--  …. )

-- For defining a PRIMARY KEY constraint on multiple columns, use the following SQL syntax:
CREATE TABLE CUSTOMERS(
       ID   INT              NOT NULL,
       NAME VARCHAR (20)     NOT NULL,
       AGE  INT              NOT NULL UNIQUE,
       ADDRESS  CHAR (25) ,
       SALARY   DECIMAL (18, 2),       
       PRIMARY KEY (ID)
);

use DBname
CREATE TABLE CUST_ORDERS (
		ID          INT        NOT NULL,
		DATE        DATETIME, 
		CUSTOMER_ID INT references CUSTOMERS(ID),
		AMOUNT     float,
		PRIMARY KEY (ID)
);

-- INSERT INTO <Table Name>
-- (<Column List>) VALUES (<Values>)
-- INSERT INTO table_name (column1,column2,column3,...)
-- VALUES (value1,value2,value3,...);
-- The INSERT INTO statement is used to insert new records in a table.
-- The first form does not specify the column names where the data will be inserted, only their values:
-- INSERT INTO table_name
-- VALUES (value1,value2,value3,...);
-- The second form specifies both the column names and the values to be inserted:
INSERT INTO Customers (ID,NAME, AGE, Address, SALARY)
VALUES (1,'Cardinal',50, 'Erichsen',40000);

 INSERT INTO CUST_ORDERS
(ID,DATE, AMOUNT) VALUES
(1,'10/10/2010', 20)

 INSERT INTO CUST_ORDERS
(ID,DATE, CUSTOMER_ID,AMOUNT, name) VALUES
(20,'10/10/2020', 2, 24, 'test')

-- We can also insert it directly-
INSERT INTO Customers VALUES (2, 'test', 60, 'dgsd',20000);

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

create database synapse 
 
create table employee(eid int,name varchar(20),mobile varchar(10),city varchar(20),department varchar(20) , salary int)

create table employee(Employee_id int,First_name varchar(30),Last_name varchar(40),Salary int,Joining_date datetime,Department varchar(50))

create table emp (id int , name varchar(20) , dob datetime)

create table employeedetails
	(
	    eid int primary key ,
	    ename varchar(20) not null default 'Admin',
	    emobile varchar(10) unique,
	    ecity varchar(20) check ( ecity in ('Agra','Noida','Delhi'))  default 'Agra' ,
	    eage int check ( eage between 20 and 25),
	    egender char(1) check (egender in ('F','M'))
	)
	
create table employee1 
	(
	    id int identity(100,1) primary key , 
	    ename varchar(20) not null,
	    department varchar(30) not null,
	    designation varchar(20) not null,
	    doj datetime not null
	)

create table EmpCompany(eid int,ename varchar(20),department varchar(20) , designation varchar(20) , doj datetime)

create table empdetails (eid int,mobile varchar(20),city varchar(20),dob datetime)

create table empextra (eid int , hobby varchar(20) , interest varchar(20) )

CREATE TABLE EMPLOYE(
EMPLOYEE_ID int NOT NULL,
FIRST_NAME varchar(50) NULL,
LAST_NAME varchar(50) NULL,
SALARY decimal(18, 0) NULL,
JOINING_DATE datetime2(7) default getdate(),
DEPARTMENT varchar(50) NULL)

create database ibm

create database newsreporter

create table newstype(ID int IDENTITY(1,1) PRIMARY KEY,title varchar(150) unique NOT NULL,DateOfAdd datetime NOT NULL,Active bit )

create table newscategory(ID int IDENTITY(1,1) PRIMARY KEY,title varchar(200) unique NOT NULL,DateOfAdd datetime NOT NULL,Active bit)

create table Editor(id uniqueidentifier PRIMARY KEY,DateOfAdd datetime NOT NULL,Active bit)

create table News(Newsid int IDENTITY(1,1) PRIMARY KEY,Newstypeid int FOREIGN KEY REFERENCES newstype(id),Newscategoryid int FOREIGN KEY REFERENCES newscategory(id),Heading varchar(500) unique NOT NULL,Subheading varchar(800) unique NOT NULL,descriptio varchar(200) unique NOT NULL,Reporterid uniqueidentifier FOREIGN KEY REFERENCES Reporter(id)  NOT NULL,
Place varchar(150) NOT NULL,NewsDate datetime NOT NULL,DateOfAdd datetime NOT NULL, Images varchar(200) NOT NULL,Editorid uniqueidentifier NOT NULL,Rangee int CHECK(Rangee<=10),Approved bit NOT NULL DEFAULT 0,Reed bit NOT NULL DEFAULT 0,visit int not null,Active bit )

create table Reporter(id uniqueidentifier PRIMARY KEY,EditorID  uniqueidentifier  FOREIGN KEY REFERENCES Editor(id),DateOfAdd datetime NOT NULL,Active bit )

create table Places(ID int IDENTITY(1,1) PRIMARY KEY,name varchar(150) unique NOT NULL ,DateOfAdd datetime NOT NULL,Active bit)

create table Person(Personid uniqueidentifier PRIMARY KEY,PlaceID int  FOREIGN KEY REFERENCES Places(id) ,PersonName varchar(100) NOT NULL,Mobile varchar(10) unique NOT NULL,Email varchar(200) unique NOT NULL,CAddress varchar(200) unique NOT NULL,PAddress  varchar(200) unique NOT NULL,DOJ datetime NOT NULL, DOB date NOT NULL,Gender char(1) NOT NULL ,Anniversary  date NOT NULL,Active bit)

create table nttdata(pid int, pname varchar(20),pcompany varchar(20),pquantity int,pcost int,psolddate datetime)

create table messagedetail(editerid int ,detail varbinary(max),dateofmsg date,Replystatus bit,replymessage varbinary(max),replydate date,messagetitle varchar(500),messageid uniqueidentifier)

create table adrequest(name varchar(500),company varchar(300),adtype varchar(100),addescription varchar(500),requestid uniqueidentifier)

create table complaint(name varchar(100),emailid varchar(150),cmessage varchar(200),cid uniqueidentifier,dateofadd date,cstatus bit) 

create table Incentives(Employee_ref_id int,Incentive_date date,Incentive_amount int)

insert into Incentives values(1,'02-01-2013',5000)
insert into Incentives values(2,'02-01-2013',3000)
insert into Incentives values(3,'02-01-2013',4000)
insert into Incentives values(1,'01-01-2013',4500)
insert into Incentives values(2,'01-01-2013',3500)

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

insert into EmpCompany values(101,'Amit','IT','Software Engineer','03/24/2001')
insert into EmpCompany values(99,'Sumit','Sales','Sales Executive','01/18/2002')
insert into EmpCompany values(109,'Ajay','IT','Software Executive','01/4/2003')
insert into EmpCompany values(200,'Anant','IT','Project Manager','02/17/2004')
insert into EmpCompany values(100,'Amir','Sales','Sales Manager','03/29/2002')
insert into EmpCompany values(65,'Anshul','IT','Platmorm MAnager','04/21/2005')
insert into EmpCompany values(111,'Deepak','Bussines','Bussiness Develop','04/21/2002')

insert into empdetails values (99,'98745712474','Delhi','01/15/1985')
insert into empdetails values (101,'98745712474','Noida','01/15/1983')
insert into empdetails values (109,'98745712474','Kolkatta','01/15/1990')
insert into empdetails values (200,'98745712474','Chandigarh','01/15/1982')
insert into empdetails values (100,'98745712474','Lucknow','01/15/1988')
insert into empdetails values (65,'98745712474','Mumbai','01/15/1985')

insert into empextra values(100,'reading books','cooking')
insert into empextra values(65,'playing games','playing')
insert into empextra values(101,'reading comics','outing')
insert into empextra values(99,'reading news','chatting')

insert into employee1 values('Deepak Singh','IT','Software Enginner','09/03/2014')
insert into employee1 values('Abhay Singh','SALES','Sales Manager','02/08/2014')

insert into employeedetails values(101,'deepak','987414784','Agra',23,'M')
insert into employeedetails values(102,'deepak','987414785','Agra',23,'M')
insert into employeedetails values(103,'deepak','987414781','Delhi',24,'M')
insert into employeedetails values(104,default,'987414782',default,24,'M')
insert into employeedetails(eid,emobile,eage,egender) values (105,'87471477',24,'F')

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

insert into employee values(1,'John','Abraham',1000000,'01-01-2013 12:00:00 AM','Banking')
insert into employee values(2,'Michael','Clarke',800000,'01-01-2013 12:00:00 AM','Insurance')
insert into employee values(3,'Roy','Thomas',700000,'02-01-2013 12:00:00 AM','Banking')
insert into employee values(4,'Tom','Jose',600000,'02-01-2013 12:00:00 AM','Insurance')
insert into employee values(5,'Jerry','Pinto',650000,'02-01-2013 12:00:00 AM','Insurance')
insert into employee values(6,'Philip','Mathew',750000,'01-01-2013 12:00:00 AM','Services')
insert into employee values(7,'TestName1','123',650000,'01-01-2013 12:00:00 AM','Services')
insert into employee values(8,'TestName2','Lname%',600000,'02-01-2013 12:00:00 AM','Insurance')

insert into emp values (1,'abhay','03/21/1992')

insert into Reporter values(newid(),'3072F286-5DD9-47C4-A0B9-D6363B52BABA','12-7-2016',1)
insert into Reporter values(newid(),'C9C685AF-2476-4491-8A1B-D9E0573E1D77','12-4-2016',1)
insert into Reporter values(newid(),'DC8C36D2-67B7-411C-8265-38A654B29279','11-6-2016',1)
insert into Reporter values(newid(),'6FA5B882-0384-411F-8F0C-51AB3B5A06B4','11-6-2016',1)
insert into Reporter values(newid(),'ABC0B8F5-1D0A-4325-8F06-DA924C5F1F87','11-6-2016',1)
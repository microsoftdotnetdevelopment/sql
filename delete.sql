-- DELETE FROM <Table Name>
-- WHERE <Search Condition>

DELETE FROM Orders
WHERE OrderDate < '10/10/2010'

-- The DELETE statement is used to delete records in a table.
-- SQL DELETE Syntax
-- DELETE FROM table_name
-- WHERE some_column=some_value;

DELETE FROM Customers
WHERE CustomerName='Alfreds Futterkiste' AND ContactName='Maria Anders';
-- We can also delete all records by using this command-
DELETE FROM table_name;
-- or
DELETE * FROM table_name


-- SQL DROP INDEX, DROP TABLE, and DROP DATABASE-
-- Indexes, tables, and databases can easily be deleted/removed with the DROP statement.

-- The DROP TABLE Statement-
-- DROP TABLE table_name
drop table employee

-- The DROP DATABASE Statement
-- The DROP DATABASE statement is used to delete a database.
-- DROP DATABASE database_name

-- The TRUNCATE TABLE Statement
-- If we only want to delete the data inside the table, and not the table itself.
-- TRUNCATE TABLE table_name
TRUNCATE TABLE dbo.persons

-- The ALTER TABLE Statement
-- The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
-- Syntax-
-- To add a column in a table, use the following syntax:
-- ALTER TABLE table_name
-- ADD column_name datatype
-- To delete a column in a table, use the following syntax (notice that some database systems don't allow deleting a column)
ALTER TABLE table_name
DROP COLUMN column_name

-- SQL ALTER TABLE Example-
ALTER TABLE Persons
ADD DateOfBirth date

-- Change Data Type Example-
ALTER TABLE Persons
ALTER COLUMN DateOfBirth year

-- DROP COLUMN Example
ALTER TABLE Persons
DROP COLUMN DateOfBirth

-- adding columns  by using alter table
alter table employee1 add designation varchar(20) not null

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
alter table person add editordescription varchar(250) identity

ALTER TABLE EMPLOYE add CONSTRAINT EMPLOYEE_PK PRIMARY KEY(EMPLOYEE_ID)
ALTER TABLE EMPLOYE add CONSTRAINT EMPLOYEE_PK PRIMARY KEY(EMPLOYEE_ID,FIRST_NAME)
Alter TABLE EMPLOYE drop CONSTRAINT EMPLOYEE_PK;
-- not a good solution if some columns is PK or FK
SP_RENAME 'dbo.customers.NAME','firstname'

drop table EmpCompany
		
drop table employee1

alter table employee alter column Joining_date date

delete employee
drop table employee

DROP INDEX idx ON dbo.orders;

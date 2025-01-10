SQL Introduction
ACID vs CAP
SQL stands for the structured query language. It is a database language used for database creation, deletion, fetching rows and modifying rows etc. sometimes it is pronounced as se-qwell. It appeared in 1974. SQL doesn't have a loop or Conditional statement. It is used like commanding language to access databases.
SQL or Structured Query Language is a language which is used to communicate with a relational database. It provides a way to manipulate and create databases. 
On the other hand, MySQL and Microsoft's SQL Server both are relational database management systems that use SQL as their standard relational database language.
On the other hand, PL/SQL is a dialect of SQL which is used to enhance the capabilities of SQL. It was developed by Oracle Corporation in the early '90s. It adds procedural features of programming languages in SQL.
Microsoft SQL server is a RDBMS developed by Microsoft.
ASP.NET is an open-source server-side web application framework designed for web development to produce dynamic web pages. It was developed by Microsoft to allow programmers to build dynamic web sites, web applications and web services.
Microsoft Visual Studio is an integrated development environment (IDE) from Microsoft. It is used to develop computer programs for Microsoft Windows, as well as web sites, web apps, web services and mobile apps
MS SQL Server - SQL\T-SQL
ORACLE - SQL\PL-SQL
A Relational database management system (RDBMS) is a database management system (DBMS) that is based on the relational model as introduced by E. F. Codd.
The data in RDBMS is stored in database objects called tables
Every table is broken up into smaller entities called fields. The fields in the CUSTOMERS table consist of ID, NAME, AGE, ADDRESS and SALARY.
A column is a vertical entity in a table that contains all information associated with a specific field in a table.
A NULL value in a table is a value in a field that appears to be blank, which means a field with a NULL value is a field with no value.
MS SQL Server is a Relational Database Management System developed by Microsoft Inc.
microsoft sql server is a rdbms developed by microsoft.
ASP.NET is an open-source server-side web application framework designed for web development to produce dynamic web pages. It was developed by Microsoft to allow programmers to build dynamic web sites, web applications and web services.
Microsoft Visual Studio is an integrated development environment (IDE) from Microsoft. It is used to develop computer programs for Microsoft Windows, as well as web sites, web apps, web services and mobile apps
SQL is a standard language for accessing databases.
how to use SQL to access and manipulate data in: MySQL,Oracle and other database systems.
we can use wampserver to implement queries.
You can easily download it from google.
It is a localhost server.
In this wampserver there is a phpmyadmin
Which deals all database.
In this SQL there are many commands.
What Can SQL do?
SQL can execute queries against a database
SQL can retrieve data from a database
SQL can insert records in a database
SQL can update records in a database
SQL can delete records from a database
SQL can create new databases
SQL can create new tables in a database
SQL can create stored procedures in a database
SQL can create views in a database
SQL can set permissions on tables, procedures, and views
Using SQL in Your Web Site-
To build a web site that shows data from a database, you will need:
An RDBMS database program (i.e. MS Access, SQL Server, MySQL)
To use a server-side scripting language, like PHP or ASP
To use SQL to get the data you want
To use HTML / CSS
In this tutorial we have a sample database which we use to implement query.
Some of The Most Important SQL Commands
SELECT - extracts data from a database
UPDATE - updates data in a database
DELETE - deletes data from a database
INSERT INTO - inserts new data into a database
CREATE DATABASE - creates a new database
ALTER DATABASE - modifies a database
CREATE TABLE - creates a new table
ALTER TABLE - modifies a table
DROP TABLE - deletes a table
CREATE INDEX - creates an index (search key)
DROP INDEX - deletes an index
We study later these commands SQL queries like  select,distinct,where
First thing in SQL is that it is  not case sensitive means select command is same as SELECT. There is no problem while writing the commands.

 SQL is pronounced “sequel”
 SQL is declarative language
 SQL is used to access & manipulate data in databases
 Top SQL DBs are MS SQL Server, Oracle, DB2, and MySQL
It’s usage is-
To execute queries against a database
To retrieve data from a database
To inserts records in a database
To updates records in a database
To delete records from a database
To create new databases
To create new tables in a database
To create views in a database

Database Definitions
 RDBMS (Relational Database Management System) –
Software that stores and manipulates data arranged in relational database tables.
 Table – A set of data arranged in columns and rows. The columns represent characteristics of stored data and the rows represent actual data entries.

SQL Commands Categories basically these are subsets of SQL -
Data Query Language (DQL)
 SELECT - Retrieve data from table(s)

Data Manipulation Language (DML)
Data manipulation language makes the user able to access and manipulate data. It is used to perform the following operations.
 INSERT - Insert data into db table Creates a record
 UPDATE - Update data in db table Modifies records
 DELETE - Delete data from table Deletes records
SELECT    Retrieves certain records from one or more tables

Data Definition Language (DDL)
 CREATE - Create db object (table, view, etc.) Creates a new table, a view of a table, or other object in database.
 ALTER - Modify db object (table, view, etc.) Modifies an existing database object, such as a table.
 DROP - Delete db object (table, view, etc.) Deletes an entire table, a view of a table or other object in the database.
(DDL) allows you to CREATE, ALTER and TRUNCATE database objects such as schema, tables, view, sequence etc.
The SQL TRUNCATE TABLE command is used to delete complete data from an existing table.
You can also use DROP TABLE command to delete complete table but it would remove complete table structure form the database and you would need to re-create this table once again if you wish you store some data.
TRUNCATE TABLE  table_name;

Data Control Language (DCL)
Data control language allows you to control access to the database. It includes two commands GRANT and REVOKE.
GRANT: to grant a specific user to perform a specific task. Assign privilege. Gives a privilege to the user
REVOKE: to cancel previously denied or granted permissions. remove privilege. Takes back privileges granted from user

A table is a set of organized data. It has columns and rows. Columns can be categorized as vertical, and Rows are horizontal.
A table contains a specified number of the column called fields but can have any number of rows which is known as a record.

A primary key is a combination of fields which uniquely specify a row. This is a special kind of unique key. Primary key values cannot be NULL.
Primary keys must contain unique values. A primary key column cannot have NULL values.

A foreign key is specified as a key which is related to the primary key of another table. The relationship needs to be created between two tables by referencing foreign key with the primary key of another table.
A foreign key is a key used to link two tables together. This is sometimes called a referencing key.
Foreign Key is a column or a combination of columns whose values match a Primary Key in a different table. The relationship between 2 tables matches the Primary Key in one of the tables with a Foreign Key in the second table.
	
A Unique key constraint uniquely identifies each record in the database. This provides uniqueness for the column or set of columns.

Types of operators available in SQL-
Arithmetic operators
Logical operators
Comparison operator

view in SQL
A view is a virtual table which contains a subset of data within a table. Views are not virtually present, and it takes less space to store. The view can have data of one or more tables combined, and it is depending on the relationship.

Index in SQL
The index is used to increase the performance and allow faster retrieval of records from the table. An index creates an entry for each value and it will be faster to retrieve data.
Indexes are special lookup tables that the database search engine can use to speed up data retrieval. Simply put, an index is a pointer to data in a table.
if you want to reference all pages in a book that discuss a certain topic, you first refer to the index, which lists all topics alphabetically and is then referred to one or more specific page numbers.
An index helps speed up SELECT queries and WHERE clauses, but it slows down data input, with UPDATE and INSERT statements. 
Indexes can be created or dropped with no effect on the data
CREATE INDEX index_name ON table_name;
There are three types of Indexes in SQL:
Unique Index
Clustered Index
NonClustered Index

Unique Index:
This indexing does not allow the field to have duplicate values if the column is unique indexed. A unique index can be applied automatically when the primary key is defined.
Clustered Index:
The clustered index is used to reorder the physical order of the table and search based on the key values. Each table can have only one clustered index.
NonClustered Index:
NonClustered Index does not alter the physical order of the table and maintains the logical order of data. Each table can have 999 non-clustered indexes.

When we create a primary key in the table, by default it creates clustered index on the primary key column
Clustered index sorts and stores the data rows in the table based on there key values when we insert the record. 
In general, there is only one clustered index in a single table.
Nonclustered Index: A nonclustered index contains index key values and each key-value entry has a pointer to the data row that contains the key value in the database table.

There are mainly two types of indexes in SQL, Clustered index and non clustered index. The differences between these two indexes are very important from the SQL performance perspective.
One table can have only one clustered index but it can have many non clustered index. (approximately 250).
a clustered index determines how data is stored physically in the table. Actually clustered index stores data in the cluster, related data is stored together so it makes simple to retrieve data.
reading from a clustered index is much faster than reading from non clustered index from the same table.
clustered index sort and store data row in the table or view based on their key value, while non-cluster have a structure separate from the data row.

ACID property in database-
ACID property is used to ensure that the data transactions are processed reliably in a database system.
A single logical operation of a data is called transaction.
ACID is an acronym for Atomicity, Consistency, Isolation, Durability.
Atomicity: it requires that each transaction is all or nothing. It means if one part of the transaction fails, the entire transaction fails and the database state is left unchanged.
Consistency: the consistency property ensures that the data must meet all validation rules. In simple words, you can say that your transaction never leaves your database without completing its state.
Isolation: this property ensures that the concurrent property of execution should not be met. The main goal of providing isolation is concurrency control.
Durability: durability simply means that once a transaction has been committed, it will remain so, come what may even power loss, crashes or errors.
A NULL value is not the same as zero or a blank space. A NULL value is a value which is 'unavailable, unassigned, unknown or not applicable'. On the other hand, zero is a number and blank space is treated as a character.

SQL joins-
Joins are used to merge two tables or retrieve data from tables. It depends on the relationship between tables.
Most commonly used SQL joins are INNER JOIN and (left/right) OUTER JOIN.
Following are the most commonly used joins in SQL:
Inner Join
Right Join
Left Join
Full Join



Inner join returns rows when there is at least one match of rows between the tables.
The most frequently used and important of the joins is the INNER JOIN. They are also referred to as an EQUIJOIN.
The query compares each row of table1 with each row of table2 to find all pairs of rows which satisfy the join-predicate.
returns rows when there is a match in both tables.

Right, join is used to retrieve rows which are common between the tables and all rows of Right-hand side table. It returns all the rows from the right-hand side table even though there are no matches in the left-hand side table.
The SQL RIGHT JOIN returns all rows from the right table, even if there are no matches in the left table.

A left join is used to retrieve rows which are common between the tables and all rows of Left-hand side table. It returns all the rows from the Left-hand side table even though there are no matches in the Right-hand side table.
The SQL LEFT JOIN returns all rows from the left table, even if there are no matches in the right table

Full join return rows when there are matching rows in any one of the tables. This means it returns all the rows from the left-hand side table and all the rows from the right-hand side table.
The SQL FULL JOIN combines the results of both left and right outer joins.

Self-join is often very useful to convert a hierarchical structure to a flat structure. It is used to join a table to itself as like if that is the second table.

The CARTESIAN JOIN or CROSS JOIN returns the Cartesian product of the sets of records from the two or more joined tables. 
Thus, it equates to an inner join where the join-condition always evaluates to True or where the join-condition is absent from the statement.


The BETWEEN operator is used to display rows based on a range of values. The IN condition operator is used to check for values contained in a specific set of values.

SQL Constraints-
SQL constraints are used to specify rules for the data in a table.
 If there is any violation between the constraint and the data action, the action is aborted by the constraint.
Constraints are the rules enforced on data columns on the table. These are used to limit the type of data that can go into a table. 
This ensures the accuracy and reliability of the data in the database.
Following are commonly used constraints available in SQL:
NOT NULL Constraint: Ensures that a column cannot have a NULL value.
DEFAULT Constraint: Provides a default value for a column when none is specified.
UNIQUE Constraint: Ensures that all values in a column are different.
PRIMARY Key: Uniquely identified each row/records in a database table.
FOREIGN Key: Uniquely identified a rows/records in any another database table.
CHECK Constraint: The CHECK constraint ensures that all values in a column satisfy certain conditions.
INDEX: Use to create and retrieve data from the database very quickly.
Constraints can be specified when the table is created (inside the CREATE TABLE statement) or after the table is created (inside the ALTER TABLE statement).
In SQL, we have the following constraints:
NOT NULL - Indicates that a column cannot store NULL value
UNIQUE - Ensures that each row for a column must have a unique value
PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Ensures that a column (or combination of two or more columns) have an unique identity which helps to find a particular record in a table more easily and quickly
FOREIGN KEY - Ensure the referential integrity of the data in one table to match values in another table
CHECK - Ensures that the value in a column meets a specific condition
DEFAULT - Specifies a default value when specified none for this column.

Constraints are representators of a column to enforce data entity and consistency. There are two levels :
column level constraint
table level constraint.

Implementing  Data Integrity:
Entity Integrity: There are no duplicate rows in a table.
Domain Integrity: Enforces valid entries for a given column by restricting the type, the format, or the range of values.
Referential integrity: Rows cannot be deleted, which are used by other records.
User-Defined Integrity: Enforces some specific business rules that do not fall into entity, domain or referential integrity. by a set of rules.

can maintain the integrity by below ways :
A. Applying constraints with Enabling and disabling constraints.
B.Applying rules
C.User-defined data types
	
Constraints :
	A.Primary Keys Constraint
	B.Unique Keys ''
	C.Foreign Keys ''
	D. Check Constraint
	E.Default Constraint

The UNIQUE Constraint prevents two records from having identical values in a particular column.

Database Normalization
Database normalization is the process of efficiently organizing data in a database. There are two reasons for the normalization process:
Eliminating redundant data, for example, storing the same data in more than one tables.
Ensuring data dependencies make sense.

The main differences between SQL DELETE and TRUNCATE statements are given below:
No.    DELETE    TRUNCATE
1)    DELETE is a DML command.    TRUNCATE is a DDL command.
2)    We can use WHERE clause in DELETE command.    We cannot use WHERE clause with TRUNCATE
3)    DELETE statement is used to delete a row from a table    TRUNCATE statement is used to remove all the rows from a table.
4)    DELETE is slower than TRUNCATE statement.    TRUNCATE statement is faster than the DELETE statement.
5)    You can rollback data after using the DELETE statement.    It is not possible to rollback after using the TRUNCATE statement.

SQL functions are used for the following purpose:
To perform calculations on data.
To modify individual data items.
To manipulate the output.
To format dates and numbers.
To convert data types.

There are three case manipulation functions in SQL:
LOWER
UPPER
INITCAP

The NVL function is used to convert NULL value to an actual value.

The MOD function returns the remainder in a division operation.

The syntax of the COALESCE function:
COALESCE(exp1, exp2, ... expn)  
The COALESCE function is used to return the first non-null expression given in the parameter list.

The DISTINCT keyword is used to ensure that the fetched value is only a non-duplicate value.

PL/SQL(procedural language extension to Structured Query Language) 
The PL/SQL programming language was developed by Oracle Corporation in the late 1980s 
PL/SQL can also directly be called from the command-line SQL*Plus interface.
PL/SQL is tightly integrated with SQL.
It offers extensive error checking.
It offers numerous data types.
It offers a variety of programming structures.
It supports structured programming through functions and procedures.
It supports object-oriented programming.
It supports the development of web applications and server pages.
To run PL/SQL programs, you should have the Oracle RDBMS Server installed in your machine.

There is a difference in range between varchar and varchar2.

Cursors-
Oracle creates a memory area, known as the context area, for processing an SQL statement, which contains all the information needed for processing the statement; 
for example, the number of rows processed, etc. A cursor is a pointer to this context area. PL/SQL controls the context area through a cursor.
A cursor holds the rows (one or more) returned by a SQL statement. 
The set of rows the cursor holds is referred to as the active set.
Implicit cursors
Explicit cursors
Implicit cursors are automatically created by Oracle whenever an SQL statement is executed
Whenever a DML statement (INSERT, UPDATE and DELETE) is issued, an implicit cursor is associated with this statement.
For INSERT operations, the cursor holds the data that needs to be inserted. 
For UPDATE and DELETE operations, the cursor identifies the rows that would be affected.

Explicit cursors are programmer-defined cursors for gaining more control over the context area
it is created on a SELECT Statement which returns more than one row.

Trigger-
The trigger allows you to execute a batch of SQL code when an insert, update or delete command is executed against a specific table.
Actually, triggers are a special type of stored procedures that are defined to execute automatically in place or after data modifications.
Triggers are stored programs, which are automatically executed or fired when some events occur. 
Triggers are, in fact, written to be executed in response to any of the following events -
A database manipulation (DML) statement (DELETE, INSERT, or UPDATE)
A database definition (DDL) statement (CREATE, ALTER, or DROP).
A database operation (SERVERERROR, LOGON, LOGOFF, STARTUP, or SHUTDOWN).
create trigger trg_I_Table_1 
ON Table_1 
FOR INSERT
as
insert into Table_2 (Col_1, Col_2, Col_3) select Col_1, Col_2, Col_3 
from inserted
insert into Table_3 (Col_1, Col_2, Col_3) select Col_1, Col_2, Col_3 
from inserted
go

The HAVING clause enables you to specify conditions that filter which group results appear in the final results.
The WHERE clause places conditions on the selected columns, whereas the HAVING clause places conditions on groups created by the GROUP BY clause.



CHARINDEX-
The CHARINDEX string function returns the starting position of the specified expression in a character string. 
It accepts three parameters with the third parameter being optional.
CHARINDEX ( expression1, expression2, [ , start_location ] )

The Substring function in SQL is used to return a portion of the string.
SUBSTR (str, position, [length])

The STUFF function deletes a sequence of characters from a source string and then inserts another sequence of characters into the source string, starting at a specified position.
STUFF( source_string, start, length, add_string )
The CHAR function is the opposite of the ASCII function. It returns the character based on the NUMBER code.

The SQL GROUP BY clause is used in collaboration with the SELECT statement to arrange identical data into groups.

The CHAR function is the opposite of the ASCII function. It returns the character based on the NUMBER code.

C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\Backup //Backup of sql server store
computed column specification //use any formula here
Identity specification //it is related to autoincrement

DDL is a Data Definition Language that is used to define data structures. For example: creating a table, and altering a table are instructions in SQL. 
DML is a Data Manipulation Language that is used to manipulate data itself. For example: insert, update, and delete are instructions in SQL.

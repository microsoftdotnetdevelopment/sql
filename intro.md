index-

RDBMS
NoSQL
1NF, 2NF, 3NF
Normalization
ORM
MongoDB - Sharding
SQLite
MongoDB vs SQLite
RDBMS vs MongoDB
SQL
Redundancy & replication
SQL vs NoSQL
When to Use NoSQL?
When to Avoid NoSQL?

Relational database(RDBMS)-

These DBs provide database environments also.

MySQL, MariaDB, PostgreSQL, ms SQL, Oracle, SQL Server, Redis, Firebase, AWS DynamoDB, SQLite, CouchDB, AWS RDS, Cassandra, Couchbase, Cloud Firestore

IBM DB2, Neo4j

NoSQL database- Mongo DB, Firestore

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

MongoDB-

Its first version was released in 2009. It is the most reliable database used with the Node.JS application. Its structure of saving the data is different because it stores data in a document which is like JSON. It used the most popular document store. schema created in this is powerful and flexible.

High scalability, Sharding and availability with built-in replication make it more robust.

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

MongoDB vs SQLite

The basic database model used in this is a document store. -It is RDBMS.

scaling is done horizontally. In this, we set up multiple servers and also one standby server which shows the available server to store data. - scaling is done vertically. It is an old approach to saving and getting data. In this, we extend the hardware resources to manage the large data or bug number of users.

No, join support in this so we use integrated stored engines - It supports Join.

Read-only SQL queries via the MongoDB Connector for Business Intelligence (BI)- it uses SQL for queries

In this, we can write Server-side scripts which are stored procedures. -we cannot write a stored procedure in this.

Indexing and searching are powerful in MongoDB. -The indexing and searching are not as strong in MongoDB.

written in C, C++, JS - written in C, C++

RDBMS vs MongoDB:

SQL Database    - NoSQL Database

Table    -        Collection

Tuple/Row      - Document

column         - Field

Table Join      - Embedded Documents

Primary Key    - Primary Key (Default key _id provided by MongoDB itself)

Database Server/Client: Mysql/Oracle, MySQL/sqlplus - Mongod, mongo

SQL

Most common query lang. used to interact with DB.

It is a declarative lang.

What you can do with SQL is-

Access, manipulate and create DB. how to use SQL to store, query, and manipulate data.    

There are various benefits of this you can be financial analysts, data-driven marketers or online entrepreneurs.

Companies that use SQL-

HSBC, Microsoft, Ford etc.

If a company has a DB. They are using SQL queries.

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

Choose your DB properly. You’ll have to support your decision Whether you go with SQL or NoSQL, why MySQL and not Postgres? why is this app better for a NoSQL?”

What is the difference between 'REPLACE' and 'STUFF' functions in SQL Server?

how to use IDENTITY in SQL Server?

What do you mean by SQL join and how can you use it?

SQL  vs NoSQL 

SQL databases properly follow ACID properties (Atomicity, Consistency, Isolation & Durability). NoSQL databases properly follow Brewers CAP theorem (Consistency, Availability, and Partition tolerance).

When to Use NoSQL?

Given below are the use cases where you should prefer using NoSQL databases:

To handle a huge volume of structured, semi-structured and unstructured data.

Where there is a need to follow modern software development practices like Agile Scrum and if you need to deliver prototypes or fast applications.

If you prefer object-oriented programming.

If your relational database is not capable enough to scale up to your traffic at an acceptable cost.

If you want to have an efficient, scale-out architecture in place of an expensive and monolithic architecture.

If you have local data transactions that need not be very durable.

If you are going with schema-less data and want to include new fields without any ceremony.

When your priority is easy scalability and availability.

When to Avoid NoSQL?

Enlisted below are some pointers that would guide you on when to avoid NoSQL.

If you are required to perform complex and dynamic querying and reporting, then you should avoid using NoSQL as it has a limited query functionality. For such requirements, you should prefer SQL only.

NoSQL also lacks the ability to perform dynamic operations. It can’t guarantee ACID properties. In such cases like financial transactions, etc., you may go with SQL databases.

You should also avoid NoSQL if your application needs run-time flexibility.

If consistency is a must and if there aren’t going to be any large-scale changes in terms of the data volume, then going with the SQL database is a better option.

The choice of the database will depend upon your preferences, business requirements, volume, and variety of data.

The data you store in a NoSQL database does not need a predefined schema like you do for a SQL database

SQL databases scale vertically, meaning you’ll need to increase the capacity of a single server (increasing CPU, RAM, or SSD) to scale your database. SQL databases were designed to run on a single server to maintain the integrity of the data, so they’re not easy to scale.

NoSQL databases scale horizontally, meaning you can add more servers to power your growing database. This is a huge advantage that NoSQL has over SQL.

How are databases shared?
How is the network set up for redundancy and maximum throughput?

https://www.smartdraw.com/entity-relationship-diagram/

https://www.khanacademy.org/computing/computer-programming/sql

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
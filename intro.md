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
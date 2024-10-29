# sql

```
sql vs NoSQL  
Normalization
Sharding
Redundancy
ACID vs CAP
```

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



-- UPDATE <Table Name>
-- SET <Column1> = <Value1>, <Column2> = <Value2>, …
-- WHERE <Search Condition>

UPDATE Orders
SET FirstName = 'John', LastName = 'Who' WHERE LastName='Wo'

-- The UPDATE statement is used to update existing records in a table.
-- UPDATE table_name
-- SET column1=value1,column2=value2,...
-- WHERE some_column=some_value;

UPDATE Customers
SET ContactName='Alfred Schmidt', City='Hamburg'
WHERE CustomerName='Alfreds Futterkiste';

-- Get connection string SQMS
select
    'data source=' + @@servername +
    ';initial catalog=' + db_name() +
    case type_desc
        when 'WINDOWS_LOGIN' 
            then ';trusted_connection=true'
        else
            ';user id=' + suser_name() + ';password=<<YourPassword>>'
    end
    as ConnectionString
from sys.server_principals
where name = suser_name()

-- SQL Server table to json
select * from CUST_ORDERS  FOR JSON AUTO  

-- Get list of databases from SQL Server
SELECT name FROM master.sys.databases
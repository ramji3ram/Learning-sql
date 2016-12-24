USE TSQL2012;
---dropping the stored procedure if it already exists
IF OBJECT_ID('Sales.ProcessCustomer') IS NOT NULL
DROP PROC Sales.ProcessCustomer;
GO
---creating a store porcedure
CREATE PROC Sales.ProcessCustomer
(
---defining the variables in the procedure
@custid AS INT
)
AS
---This procedure prints the below statememnt
PRINT 'Processing customer ' + CAST(@custid AS VARCHAR(10));
GO



SET NOCOUNT off
SELECT count(*) 
FROM   Sales.Customers

SELECT count(*) 
FROM   Sales.Customers


DECLARE @curcustid AS INT;
DECLARE cust_cursor CURSOR FAST_FORWARD FOR
 select custid from Sales.Customers order by 1;
 open cust_cursor;
 FETCH NEXT FROM cust_cursor into @curcustid
 while  @@FETCH_STATUS=0
 BEGIN 
	EXEC Sales.ProcessCustomer @custid=@curcustid;
	FETCH NEXT from cust_cursor into @curcustid;
	end
	close cust_cursor
	deallocate cust_cursor


	select * from sysobjects where name like 'func%'

	select object_id(dbo.GetNums)

	dbo.getnums(1,2)
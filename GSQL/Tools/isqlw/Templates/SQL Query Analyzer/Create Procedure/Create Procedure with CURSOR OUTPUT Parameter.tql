-- =============================================
-- Create procedure with CURSOR OUTPUT Parameters
-- =============================================
-- drop the store procedure if it already exists
IF EXISTS (SELECT name 
	   FROM   sysobjects 
	   WHERE  name = N'<procedure_name, sysname, proc_test>' 
	   AND 	  type = 'P')
	DROP PROCEDURE <procedure_name, sysname, proc_test>
GO


-- create the store procedure 
CREATE PROCEDURE <procedure_name, sysname, proc_test> 
	<@proc_cursor_name, , @proc_test_cursor> CURSOR VARYING OUTPUT
AS
SET <@proc_cursor_name, , @proc_test_cursor> = CURSOR FOR
	<select_statement, , select 1>
OPEN <@proc_cursor_name, , @proc_test_cursor>
GO


-- =============================================
-- example to execute the store procedure
-- =============================================
DECLARE <@variable_cursor_name, , @test_cursor_variable> CURSOR

EXEC <procedure_name, sysname, proc_test> <@proc_cursor_name, , @proc_test_cursor> = <@variable_cursor_name, , @test_cursor_variable> OUTPUT

WHILE (@@FETCH_STATUS = 0)
BEGIN
    FETCH NEXT FROM <@variable_cursor_name, , @test_cursor_variable>
    PRINT 'put user defined code here'
END

CLOSE <@variable_cursor_name, , @test_cursor_variable>

DEALLOCATE <@variable_cursor_name, , @test_cursor_variable>
GO


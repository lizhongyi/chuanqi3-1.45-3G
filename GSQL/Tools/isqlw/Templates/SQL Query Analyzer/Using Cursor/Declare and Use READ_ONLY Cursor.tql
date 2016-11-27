-- =============================================
-- Declare and using a READ_ONLY cursor
-- =============================================
DECLARE <cursor_name, sysname, test_cursor> CURSOR
READ_ONLY
FOR <select_statement, , SELECT au_fname FROM pubs.dbo.authors>

DECLARE @name varchar(40)
OPEN <cursor_name, sysname, test_cursor>

FETCH NEXT FROM <cursor_name, sysname, test_cursor> INTO @name
WHILE (@@fetch_status <> -1)
BEGIN
	IF (@@fetch_status <> -2)
	BEGIN
--		PRINT 'add user defined code here'
--		eg.
		DECLARE @message varchar(100)
		SELECT @message = 'my name is: ' + @name
		PRINT @message
	END
	FETCH NEXT FROM <cursor_name, sysname, test_cursor> INTO @name
END

CLOSE <cursor_name, sysname, test_cursor>
DEALLOCATE <cursor_name, sysname, test_cursor>
GO


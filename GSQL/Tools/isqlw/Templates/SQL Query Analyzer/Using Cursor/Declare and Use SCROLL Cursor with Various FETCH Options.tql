-- =============================================
-- Declare a SCROLL cursor and use various FETCH options
-- =============================================
DECLARE <cursor_name, sysname, test_cursor> SCROLL CURSOR FOR
<select_statement, , SELECT * FROM pubs.dbo.authors>

OPEN <cursor_name, sysname, test_cursor>

-- Fetch the first row in the cursor.
FETCH FIRST FROM <cursor_name, sysname, test_cursor>

-- Fetch the last row in the cursor.
FETCH LAST FROM <cursor_name, sysname, test_cursor>

-- Fetch the row immediately prior to the current row in the cursor.
FETCH PRIOR FROM <cursor_name, sysname, test_cursor>

-- Fetch the row immediately after the current row in the cursor.
FETCH NEXT FROM <cursor_name, sysname, test_cursor>

-- Fetch the nth row in the cursor.
FETCH ABSOLUTE <row_number, int, 8> FROM <cursor_name, sysname, test_cursor>

-- Fetch the row that is n rows before or after the current row.
FETCH RELATIVE <-/+ row_number, int, -2> FROM <cursor_name, sysname, test_cursor>

CLOSE <cursor_name, sysname, test_cursor>
DEALLOCATE <cursor_name, sysname, test_cursor>
GO


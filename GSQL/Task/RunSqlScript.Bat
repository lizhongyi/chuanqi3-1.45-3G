cls
@ECHO 使用"OSQL"执行 SQL脚本文件.
@ECHO %2
@osql.exe /E /S %1 /d Master /i Temp.sql
@del Temp.sql
@Pause
declare @bakFile nvarchar(1024), @Sql nvarchar(1024), @DBName nvarchar(128), @DelFile nvarchar(1024)

-- WorkerDB 改为需要备份的数据库名称
Set @DBName  = 'Master'
Set @bakFile = '$RunPath\BackUp\' + CONVERT(varchar(8), GETDATE(), 112) + ' ' + @DBName + '.bak'
Set @Sql     = 'BACKUP DATABASE ' + @DBName + ' TO DISK = ''' + @bakFile + '''  with init  '
Set @DelFile = 'del "$RunPath\BackUp\' + CONVERT(varchar(8), GETDATE() - 7, 112) + ' ' + @DBName + '.bak"'

Exec(@Sql)

Exec Xp_CmdShell @DelFile, no_output

GO

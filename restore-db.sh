sleep 30s ;
 
/opt/mssql-tools/bin/sqlcmd -S . -U sa -P $SA_PASSWORD -Q "RESTORE DATABASE [WideWorldImporters] FILE = N'WWI_Primary',  FILE = N'WWI_UserData',  FILE = N'WWI_InMemory_Data_1' FROM  DISK = N'/var/opt/sqlserver/WideWorldImporters-Full.bak' WITH  FILE = 1,  MOVE N'WWI_Primary' TO N'/var/opt/mssql/data/WideWorldImporters.mdf',  MOVE N'WWI_UserData' TO N'/var/opt/mssql/data/WideWorldImporters_0.ndf',  MOVE N'WWI_Log' TO N'/var/opt/mssql/data/WideWorldImporters_1.ldf',  MOVE N'WWI_InMemory_Data_1' TO N'/var/opt/mssql/data/WideWorldImporters_2.',  NOUNLOAD,  REPLACE,  STATS = 10;" ;

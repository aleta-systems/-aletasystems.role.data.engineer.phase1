# base this image of the SQL 2017 latest image
FROM microsoft/mssql-server-linux:latest
 
# make a directory within the container
RUN mkdir /var/opt/sqlserver
 
# copy attach-db.sh into container
COPY restore-db.sh /var/opt/sqlserver
 
# copy backupfile
COPY ./database/WideWorldImporters-Full.bak /var/opt/sqlserver

# use the ENTRYPOINT command to execute the script and start SQL Server
ENTRYPOINT /var/opt/sqlserver/restore-db.sh & /opt/mssql/bin/sqlservr
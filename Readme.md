# Readme

> This is the repo contains the source code for `aletasystems/role.data.engineer.phase1` docker container. 

## About this Image

This image is based on `microsoft/mssql-server-linux:latest` and has the `WideWorldImporters` OLTP Database restored via a shell script. 

You can learn more about the `mssql-server-linux` image [here](https://hub.docker.com/_/microsoft-mssql-server)

>Note: Please note it can take up-to 30 seconds for the database to show up.

## How to use this Image 

This will create a container named `technicalscreen` with SQL Server exposed on port `14333` (_not 1433_).

`docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=P@ssw0rd!" -p 14333:1433 --name technicalscreen -d aletasystems/role.data.engineer.phase1`

> Note: To `PULL` (download) the image run `docker pull aletasystems/role.data.engineer.phase1`

### Troubleshooting

**Problem**: You may receive this error, if so please restart your docker service

`C:\Program Files\Docker\Docker\Resources\bin\docker.exe: Error response from daemon: driver failed programming external connectivity on endpoint technicalscreen (<<containerid from error>>): Error starting userland proxy: mkdir /port/tcp:0.0.0.0:14333:tcp:172.17.0.2:1433: input/output error.`

1. If so, remove the existing container `docker rm <<containerid from error>> -f` 
2. Restart docker by Right Clicking on Docker Icon -> Restart
3. Then run the command again.
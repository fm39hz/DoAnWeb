FROM mcr.microsoft.com/mssql/server:2022-latest AS setup
ENV MSSQL_PID=Developer
ENV SA_PASSWORD=@VeryComplexPassword1thTime
ENV ACCEPT_EULA=Y         

FROM setup AS data
COPY sql/WebData.sql /var/opt/mssql/backup/WebData.sql
FROM setup
COPY --from=data /var/opt/mssql /var/opt/mssql
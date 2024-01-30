FROM mcr.microsoft.com/mssql/server:2022-latest AS setup
WORKDIR /usr/src/app
EXPOSE 1433
COPY . .

ENTRYPOINT /bin/bash ./entrypoint.sh
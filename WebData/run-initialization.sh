alias SQL_DIRECTORY='/var/opt/mssql/'
alias SQL_CMD='/opt/mssql-tools/bin/sqlcmd'
sleep 90s
if [ -d "SQL_DIRECTORY" ] || [ -z "(ls -A SQL_DIRECTORY)" ]; then
    echo "Starting to create database."
    SQL_CMD -S localhost -U sa -P @VeryComplexPassword1thTime -i /usr/src/app/CreateDB.sql
    echo "Starting to insert data into database."
    SQL_CMD -S localhost -U sa -P @VeryComplexPassword1thTime -i /usr/src/app/InsertData.sql
    rm -f ./*.sql
    echo "Initialized database."
else
	echo "Database exist, will not insert data."
fi
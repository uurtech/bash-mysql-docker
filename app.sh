#!/bin/bash

# Set these variables with your MySQL server details
MYSQL_HOST=db
MYSQL_USER=root
MYSQL_PASSWORD=rootpassword
MYSQL_DATABASE=mydatabase

# Example query
QUERY="SELECT name,description FROM awesome_data limit 1;"
echo "test"
sleep 10
# Connect to MySQL and run the query
while true; do
    mysql -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD -D $MYSQL_DATABASE -e "$QUERY"
    sleep 1  # Wait for 1 second before running the query again
done
tail -f /dev/null
#!/bin/bash

# Set these variables with your MySQL server details

echo "test"
sleep 10
# Connect to MySQL and run the query
while true; do
    random_number=$((1 + $RANDOM % 10))


    export NEW_QUERY="${QUERY}${random_number};"
    echo $NEW_QUERY
    mysql -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD -D $MYSQL_DATABASE -e "$QUERY"
    sleep 1  # Wait for 1 second before running the query again
done
tail -f /dev/null
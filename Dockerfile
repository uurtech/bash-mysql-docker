FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y mysql-client && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY ./app.sh /usr/src/app/app.sh

RUN chmod +x /usr/src/app/*.sh

ENV MYSQL_HOST=db
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=password
ENV MYSQL_DATABASE=mydatabase

# Example query
ENV QUERY="SELECT name,description FROM awesome_data where id ="

CMD ["bash","./app.sh"]

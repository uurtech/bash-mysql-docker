FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y mysql-client && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY ./app.sh /usr/src/app/app.sh

RUN chmod +x /usr/src/app/*.sh

CMD ["bash","./app.sh"]

#Create MySQL Image for backup
FROM mysql:latest
MAINTAINER barnaba.pawelczak@gmail.com

ENV MYSQL_ROOT_PASSWORD password123
COPY musicservice.sql /docker-entrypoint-initdb.d

EXPOSE 3306
FROM mysql:latest

COPY init.sql /docker-entrypoint-initdb.d/

ENV MYSQL_DATABASE students
ENV MYSQL_PASSWORD password
ENV MYSQL_ROOT_PASSWORD root 
EXPOSE 3306
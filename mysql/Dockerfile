FROM mysql:5.7.31

# Create a directory for the data volume
RUN mkdir /var/lib/mysql-data

# Copy the MySQL configuration file from the base image into the container
# COPY . /etc/mysql/my.cnf

# Set the data directory to the data volume
# RUN sed -i -r 's|/var/lib/mysql|/var/lib/mysql-data|g' /etc/mysql/my.cnf

# Set the root password
ENV MYSQL_ROOT_PASSWORD kiran

# Create a new database and user
ENV MYSQL_DATABASE wp_mydb
# ENV MYSQL_USER root
# ENV MYSQL_PASSWORD kiran


COPY my-wpdb.sql /docker-entrypoint-initdb.d/

# Mount the data volume
VOLUME /var/lib/mysql-data

EXPOSE 3306


FROM mysql

# Create a directory for the data volume
RUN mkdir /var/lib/mysql-data

# Set the data directory to the data volume
RUN sed -i 's|/var/lib/mysql|/var/lib/mysql-data|g' /etc/mysql/my.cnf

# Set the root password
ENV MYSQL_ROOT_PASSWORD kiran

# Create a new database and user
ENV MYSQL_DATABASE wp_mydb
ENV MYSQL_USER root
ENV MYSQL_PASSWORD kiran

# Mount the data volume
VOLUME /var/lib/mysql-data

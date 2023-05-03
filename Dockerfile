FROM wordpress

# Copy the contents of your WordPress site to the container
COPY . /var/www/html

# Set the MySQL database credentials
ENV WORDPRESS_DB_HOST my-mysql:3306
ENV WORDPRESS_DB_USER root
ENV WORDPRESS_DB_PASSWORD kiran
ENV WORDPRESS_DB_NAME wp_mydb

# Mount the WordPress data volume
VOLUME /var/www/html

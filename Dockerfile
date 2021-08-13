# Pull down the latest Postgres image from the Docker Hub
FROM postgres

# Set the environment variable for password to 'docker'
ENV POSTGRES_PASSWORD docker

# Create a database, call it 'usershop'
ENV POSTGRES_DB usershop

# Use a sql dump file to create the table schema and populate it with data
COPY usershop.sql /docker-entrypoint-initdb.d/

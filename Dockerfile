FROM postgres
COPY init.sql /docker-entrypoint-initdb.d/

env POSTGRES_PASSWORD="1234"
env POSTGRES_USER="postgres"
env PGUSER="postgres"
env POSTGRES_DB="autocenter"
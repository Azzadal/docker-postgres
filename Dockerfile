# FROM postgres
# COPY init.sql /docker-entrypoint-initdb.d/

# env POSTGRES_PASSWORD="1234"
# env POSTGRES_USER="postgres"
# env PGUSER="postgres"
# # env POSTGRES_DB="autocenter"

FROM docker:22.06.0-beta.0-cli-alpine3.16
RUN apk update
RUN apk add nodejs npm docker-cli-compose openjdk11 python3 postgresql

CMD /var/lib/postgresql/data/psql \l
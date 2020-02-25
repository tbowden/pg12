FROM postgres:latest
# mount data volume on /var/lib/postgresql/data
ENV PGDATA '/var/lib/postgresql/data/pgdata'

RUN apt-get update && \
    apt-get install -y --no-install-recommends vim postgresql-12-postgis-3 units postgresql-12-postgis-3-scripts postgis

# See https://hub.docker.com/_/postgres/ (additional extensions for link to postgis example)

# docker build -t pg12:latest -t pg12:mf1 .
# docker run -d --rm --name pg12 --mount 'type=volume,src=pg12_data,dst=/var/lib/postgresql/data' -p 127.0.0.1:5432:5432 -h pg12 -e POSTGRES_PASSWORD=secretpw pg12:latest

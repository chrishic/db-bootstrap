FROM postgres:latest

COPY scripts /var/app/db-bootstrap/db/scripts/
COPY entrypoint /docker-entrypoint-initdb.d/

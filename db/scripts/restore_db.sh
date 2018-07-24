#!/bin/bash
set -e
set -x

pg_restore -U postgres -d app-db --format=c /var/app/db-bootstrap/shared/dump/db-schema.dump
pg_restore -U postgres -d app-db --format=c --disable-triggers /var/app/db-bootstrap/shared/dump/db-data.dump

#!/bin/bash
set -e
set -x

mkdir -p /var/app/db-bootstrap/shared/dump

pg_dump -h database_host \
        -p 5432 \
        -U database_user \
        -d database_name \
        --no-password \
        --schema-only \
        --format=c \
        --exclude-table=table3 \
        --file=/var/app/db-bootstrap/shared/dump/db-schema.dump

pg_dump -h database_host \
        -p 5432 \
        -U database_user \
        -d database_name \
        --no-password \
        --data-only \
        --format=c \
        --table=public.table1 \
        --table=public.table2 \
        --file=/var/app/db-bootstrap/shared/dump/db-data.dump

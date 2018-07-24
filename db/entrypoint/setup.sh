#!/bin/bash
set -e

# Log db statements
perl -pi -e "s/#log_statement = 'none'/log_statement = 'all'/g" /var/lib/postgresql/data/postgresql.conf

# Create roles and db
psql -U postgres --file=/var/app/db-bootstrap/db/scripts/create_roles.sql
psql -U postgres --file=/var/app/db-bootstrap/db/scripts/create_db.sql

if [[ $RESTORE_FROM_PROD -eq 1 ]]; then
    psql -U postgres --file=/var/app/db-bootstrap/db/scripts/create_roles_for_restore.sql
    source /var/app/db-bootstrap/db/scripts/restore_db.sh
else
    psql -U postgres -d app-db --file=/var/app/db-bootstrap/db/scripts/setup_db.sql
fi

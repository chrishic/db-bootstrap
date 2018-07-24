-- DB roles
create role app_db_ro WITH NOLOGIN;
create role app_db_admin WITH NOLOGIN;

-- Login users
CREATE ROLE app_db_service WITH LOGIN PASSWORD 'my_password';
GRANT app_db_admin TO app_db_service;

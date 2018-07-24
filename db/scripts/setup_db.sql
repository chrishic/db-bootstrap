-- DB grants:
grant connect                   on database "app-db"               to app_db_admin with grant option;
grant connect                   on database "app-db"               to app_db_ro;

-- Schema grants:
grant all privileges            on schema public                   to app_db_admin with grant option;
grant all on all tables         in schema public                   to app_db_admin with grant option;
grant all on all sequences      in schema public                   to app_db_admin with grant option;
grant all on all functions      in schema public                   to app_db_admin with grant option;

grant usage                     on schema public                   to app_db_ro;
grant select on all tables      in schema public                   to app_db_ro;
grant select on all sequences   in schema public                   to app_db_ro;
grant execute on all functions  in schema public                   to app_db_ro;

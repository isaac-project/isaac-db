#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER isaac;
    ALTER USER isaac PASSWORD 'b4ck3nd!';
    CREATE DATABASE isaac;
    GRANT ALL PRIVILEGES ON DATABASE isaac TO isaac;
EOSQL

#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "isaac" <<-EOSQL
CREATE TABLE tasks (
 id text,
 host text,
 title text,
 type text,
 content jsonb,
 PRIMARY KEY (id, host)
);
EOSQL

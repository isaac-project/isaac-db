#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "isaac" <<-EOSQL
CREATE TABLE analyses (
 host text,
 taskID text,
 fieldID smallint,
 learnerAnswer text,
 analysis bytea,
 prediction jsonb,
 answerCount integer,
 analysisTime timestamp,
 PRIMARY KEY (host,taskID,fieldID,learnerAnswer),
 FOREIGN KEY (host,taskID) REFERENCES tasks (host,id)
);
EOSQL

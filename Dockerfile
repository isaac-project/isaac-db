FROM postgres:alpine

ADD ./docker-entrypoint-initdb.d /docker-entrypoint-initdb.d


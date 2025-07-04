# Dockerfile to install pgvector and load faqs.sql into Postgres

FROM postgres:15

RUN apt-get update && \
    apt-get install -y postgresql-server-dev-15 make g++ git && \
    git clone --branch v0.5.1 https://github.com/pgvector/pgvector.git && \
    cd pgvector && make && make install && \
    cd .. && rm -rf pgvector

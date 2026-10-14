FROM quay.io/sclorg/postgresql-16-c9s:20261014@sha256:be17c9b604900e0a4ddc4e7b4edfd558d6fdf7e76dc71cc438c3a2f8d4740699

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/

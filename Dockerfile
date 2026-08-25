FROM quay.io/sclorg/postgresql-16-c9s:20260819@sha256:e40d37347f53ff9e7c984a59f9666bdd19bd00fa5b3d76e9131d0e5810dc750a

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/

FROM quay.io/sclorg/postgresql-16-c9s:20261104@sha256:29e66548679f0d14b63e2a210dfcc783c376330366bd24b97f2968e7c3bff0f7

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/

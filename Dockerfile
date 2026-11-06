FROM quay.io/sclorg/postgresql-16-c9s:20260422@sha256:5fc9c6feba27f0eb99803f9a11ec366b6fcdd1ea8d8452466b204962d4f49f2d

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/

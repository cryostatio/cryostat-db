FROM quay.io/sclorg/postgresql-16-c9s:20260923@sha256:b508e74304788fb4a5a2af76d8d013f20a18ee38bff3d24a705d7b730b8c0a30

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/

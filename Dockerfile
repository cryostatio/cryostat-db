FROM quay.io/sclorg/postgresql-16-c9s:20260708@sha256:0620f6563766b752c93f76d2e06ca6a4bb4d1e4ac723ecafeb008655a78357fd

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/

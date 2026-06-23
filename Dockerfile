FROM quay.io/sclorg/postgresql-16-c9s:20260623@sha256:080d56b8ee85a563baa4a7d6fed5a910dd8cd521e1bfa9159c427ae21a7da038

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/

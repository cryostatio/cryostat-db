FROM quay.io/sclorg/postgresql-16-c9s:20261027@sha256:1e47f477e07d4378179a21f9cc88402ad39aa32789e0cd62fe2cef16c2a7bbdf

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/

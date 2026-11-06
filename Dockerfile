FROM quay.io/sclorg/postgresql-15-c8s:20240529@sha256:a28c7347bb35b41f1a1bd1184e2ebaff08f27243dc582f771e169ca4b774806f

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/

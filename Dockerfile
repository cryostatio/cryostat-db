FROM quay.io/sclorg/postgresql-16-c9s:20260211@sha256:3b05c860aeeecef1154d36265c810b6e7a8294b946eed78e12038cd047faa788

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/

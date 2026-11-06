FROM quay.io/sclorg/postgresql-16-c9s:20251002@sha256:e0ecbd9aae11589cd477c629fcd23868590e2176f8c3272a1e32724ddcf2cac9

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/

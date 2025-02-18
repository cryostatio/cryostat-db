<<<<<<< HEAD
FROM quay.io/sclorg/postgresql-16-c9s:20250129
=======
FROM quay.io/sclorg/postgresql-16-c9s:20250214
>>>>>>> df01ca1 (chore(deps): bump sclorg/postgresql-16-c9s from 20250205 to 20250214 (#71))

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/

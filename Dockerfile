<<<<<<< HEAD
FROM quay.io/sclorg/postgresql-16-c9s:20250312
=======
FROM quay.io/sclorg/postgresql-16-c9s:20250326
>>>>>>> 6d5cdfd (chore(deps): bump sclorg/postgresql-16-c9s from 20250319 to 20250326 (#79))

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/

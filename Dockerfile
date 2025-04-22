<<<<<<< HEAD
FROM quay.io/sclorg/postgresql-16-c9s:20250402
=======
FROM quay.io/sclorg/postgresql-16-c9s:20250416
>>>>>>> 59e416c (chore(deps): bump sclorg/postgresql-16-c9s from 20250409 to 20250416 (#84))

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/

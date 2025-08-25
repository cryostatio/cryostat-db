<<<<<<< HEAD
FROM quay.io/sclorg/postgresql-16-c9s:20250730
=======
FROM quay.io/sclorg/postgresql-16-c9s:20250820
>>>>>>> 05a26f3 (chore(deps): bump sclorg/postgresql-16-c9s from 20250806 to 20250820 (#109))

ENTRYPOINT ["/usr/local/bin/cryostat-db-entrypoint.bash"]

ENV POSTGRESQL_LOG_DESTINATION=/dev/stderr

COPY ./entrypoint.bash /usr/local/bin/cryostat-db-entrypoint.bash
COPY ./include /opt/app-root/src/
